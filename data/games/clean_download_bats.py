import os
import re
from pathlib import Path

# Get the directory where this script is located
SCRIPT_DIR = Path(__file__).parent.resolve()

# Lines to REMOVE (exact matches or patterns)
LINES_TO_REMOVE = [
    "echo                         DepotDownloader v2.0",
    "echo                    Universal Game Download System",
    "echo.",  # Empty echo lines
    "echo =============================== COMPLETE ==================================",
    "echo Created by Solus Bot in Morrenus Games - [https://discord.gg/morrenusgames](https://discord.gg/morrenusgames)",
]

def clean_bat_file(bat_path: Path) -> bool:
    """
    Clean download.bat file by:
    1. Removing specific echo lines (DepotDownloader info, decorative separators, credits)
    2. Changing -dir "<game_name>" to -dir "." in all DepotDownloader commands
    3. Keep everything else unchanged

    Returns True if file was modified, False otherwise
    """
    try:
        content = bat_path.read_text(encoding='utf-8', errors='ignore')
        original_content = content
        lines = content.split('\n')

        cleaned_lines = []

        for line in lines:
            stripped = line.strip()

            # Check if this line should be removed
            should_remove = False
            for pattern in LINES_TO_REMOVE:
                if stripped == pattern:
                    should_remove = True
                    break

            if should_remove:
                # Skip this line (remove it)
                continue

            # If it's a DepotDownloader command, replace -dir value
            if '.\\DepotDownloaderMod' in line or 'DepotDownloadermod.exe' in line:
                # Replace -dir "<anything>" with -dir "."
                line = re.sub(r'-dir\s+"[^"]*"', '-dir "."', line)

            cleaned_lines.append(line)

        # Join lines back together
        cleaned_content = '\n'.join(cleaned_lines)

        # Write back if modified
        if cleaned_content != original_content:
            bat_path.write_text(cleaned_content, encoding='utf-8')
            return True
        return False

    except Exception as e:
        print(f"  [ERROR] Failed to process {bat_path.name}: {e}")
        return False

def find_and_clean_bats(root_dir: Path = SCRIPT_DIR):
    """
    Recursively find all download.bat files and clean them
    """
    found = 0
    modified = 0

    print(f"[*] Scanning directory: {root_dir}")
    print(f"[*] Looking for download.bat files...\n")

    # Search in current directory and subdirectories
    for bat_file in root_dir.rglob("download.bat"):
        found += 1
        print(f"[{found}] Found: {bat_file.relative_to(root_dir)}")

        if clean_bat_file(bat_file):
            modified += 1
            print(f"    ✓ Cleaned successfully")
        else:
            print(f"    - No changes needed")

    if found == 0:
        print("[!] No download.bat files found in this directory tree!")
        print(f"[!] Make sure this script is in: {root_dir}")

    print(f"\n" + "="*70)
    print(f"SUMMARY:")
    print(f"="*70)
    print(f"Total files found: {found}")
    print(f"Files cleaned: {modified}")
    print(f"="*70)

if __name__ == "__main__":
    find_and_clean_bats()
    print("\nDone! Press Enter to close...")
    input()
