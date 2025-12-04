import os
import re
from pathlib import Path


# Get the directory where this script is located
SCRIPT_DIR = Path(__file__).parent.resolve()


def extract_game_info(bat_content: str, folder_name: str = None) -> dict:
    """
    Extract game information from download.bat content
    Returns dict with: game_name, app_id, depots (list of dicts with app, depot, manifest, manifestfile, depotkey)
    """
    info = {
        'game_name': None,
        'app_id': None,
        'depots': []
    }
    
    lines = bat_content.split('\n')
    
    # Extract game name from title line
    for line in lines:
        if 'title' in line.lower() and 'DepotDownloader' in line:
            # Extract from: title Mountain - DepotDownloader
            match = re.search(r'title\s+(.+?)\s*-\s*DepotDownloader', line, re.IGNORECASE)
            if match:
                info['game_name'] = match.group(1).strip()
                break
    
    # If title extraction failed, try extracting from echo Game: line
    if not info['game_name']:
        for line in lines:
            if 'echo Game:' in line:
                # Extract from: echo Game: GameName
                match = re.search(r'echo\s+Game:\s*(.+?)(?:\s*$|\\)', line)
                if match:
                    info['game_name'] = match.group(1).strip()
                    break
    
    # If still not found, use folder name as fallback
    if not info['game_name'] and folder_name:
        info['game_name'] = folder_name
    
    # Extract app ID from echo line
    for line in lines:
        if 'App ID:' in line:
            match = re.search(r'App ID:\s*(\d+)', line)
            if match:
                info['app_id'] = match.group(1)
                break
    
    # Extract depot commands
    for line in lines:
        if 'DepotDownloadermod.exe' in line:
            # Extract all parameters
            depot_info = {}
            
            # Extract app ID
            app_match = re.search(r'-app\s+(\d+)', line)
            if app_match:
                depot_info['app_id'] = app_match.group(1)
            
            # Extract depot ID
            depot_match = re.search(r'-depot\s+(\d+)', line)
            if depot_match:
                depot_info['depot_id'] = depot_match.group(1)
            
            # Extract manifest ID
            manifest_match = re.search(r'-manifest\s+(\d+)', line)
            if manifest_match:
                depot_info['manifest_id'] = manifest_match.group(1)
            
            # Extract manifest file path
            manifestfile_match = re.search(r'-manifestfile\s+"([^"]+)"', line)
            if manifestfile_match:
                depot_info['manifestfile'] = manifestfile_match.group(1)
            
            # Extract depotkeys file path
            depotkeys_match = re.search(r'-depotkeys\s+"([^"]+)"', line)
            if depotkeys_match:
                depot_info['depotkey'] = depotkeys_match.group(1)
            
            if all(k in depot_info for k in ['app_id', 'depot_id', 'manifest_id', 'manifestfile', 'depotkey']):
                info['depots'].append(depot_info)
    
    return info


def generate_resume_bat(game_info: dict) -> str:
    """
    Generate resume.bat content based on extracted game information
    """
    if not game_info['game_name'] or not game_info['depots']:
        return None
    
    game_name = game_info['game_name']
    total_depots = len(game_info['depots'])
    
    # Start building the batch file
    resume_content = f"""@echo off
chcp 65001 > nul
color 0F
title {game_name} - DepotDownloader RESUME
cls

echo ==============================================================================
echo                       {game_name.upper()} - RESUME DOWNLOAD
echo ==============================================================================
echo Game: {game_name}
echo Depots to download: {total_depots}
echo Resume Mode: ENABLED (Validating previously downloaded files)
echo ==============================================================================
echo                           RESUMING DOWNLOAD...
echo ================================================================================

set "start_time=%time%"
set "total_depots={total_depots}"
set "current_depot=0"
"""
    
    # Add each depot
    for idx, depot in enumerate(game_info['depots'], 1):
        resume_content += f"""
echo ------------------------------------------------------------------------------
echo                       RESUMING BASE GAME DOWNLOAD (DEPOT {idx}/{total_depots})
echo ------------------------------------------------------------------------------

set /a current_depot+=1
echo [%current_depot%/%total_depots%] Resuming depot {depot['depot_id']}...
echo Validating previously downloaded chunks...
.\\DepotDownloaderMod\\DepotDownloadermod.exe -app {depot['app_id']} -depot {depot['depot_id']} -manifest {depot['manifest_id']} -manifestfile "{depot['manifestfile']}" -depotkeys "{depot['depotkey']}" -dir "." -max-downloads 256 -validate

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Failed to resume depot {depot['depot_id']}. Check your connection and try again.
    echo.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Depot {depot['depot_id']} completed successfully!
echo.
"""
    
    # Add completion section
    resume_content += f"""echo ==============================================================================
echo                           RESUME COMPLETED!
echo ==============================================================================
echo All files downloaded to: Current directory
echo Total depots processed: %total_depots%
echo Resume Mode: VALIDATED - Previously downloaded files skipped
echo ------------------------------------------------------------------------------
echo Download completed successfully! You can now close this window.
echo ------------------------------------------------------------------------------
pause"""
    
    return resume_content


def create_resume_bats(root_dir: Path = SCRIPT_DIR):
    """
    Recursively find all download.bat files and create resume.bat for each
    """
    found = 0
    created = 0
    failed = 0
    
    print(f"[*] Scanning directory: {root_dir}")
    print(f"[*] Looking for download.bat files...\n")
    
    # Search in current directory and subdirectories
    for bat_file in root_dir.rglob("download.bat"):
        found += 1
        parent_dir = bat_file.parent
        folder_name = parent_dir.name
        
        print(f"[{found}] Found: {bat_file.relative_to(root_dir)}")
        
        try:
            # Read the download.bat file
            bat_content = bat_file.read_text(encoding='utf-8', errors='ignore')
            
            # Extract game information (pass folder name as fallback)
            game_info = extract_game_info(bat_content, folder_name)
            
            if not game_info['game_name']:
                print(f"    [SKIP] Could not extract game name")
                failed += 1
                continue
            
            if not game_info['depots']:
                print(f"    [SKIP] Could not extract depot information")
                failed += 1
                continue
            
            # Generate resume.bat content
            resume_content = generate_resume_bat(game_info)
            
            if not resume_content:
                print(f"    [SKIP] Failed to generate resume.bat content")
                failed += 1
                continue
            
            # Write resume.bat in the same directory
            resume_bat_path = parent_dir / "resume.bat"
            resume_bat_path.write_text(resume_content, encoding='utf-8')
            
            created += 1
            print(f"    ✓ Created resume.bat ({game_info['game_name']} - {len(game_info['depots'])} depot(s))")
            
        except Exception as e:
            print(f"    [ERROR] {e}")
            failed += 1
    
    if found == 0:
        print("[!] No download.bat files found in this directory tree!")
        print(f"[!] Make sure this script is in: {root_dir}")
    
    print(f"\n" + "="*70)
    print(f"SUMMARY:")
    print(f"="*70)
    print(f"Total files found: {found}")
    print(f"Resume.bat created: {created}")
    print(f"Failed/Skipped: {failed}")
    print(f"="*70)


if __name__ == "__main__":
    create_resume_bats()
    print("\nDone! Press Enter to close...")
    input()
