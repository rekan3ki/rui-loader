import os
import re
import sys
import json
import shutil
import subprocess
from pathlib import Path
from datetime import datetime
from typing import List, Dict, Optional
from tkinter import Tk, filedialog

DOWNLOADER_VERSION = "1"

def get_versioned_path(pattern: str) -> Path:
    filename = pattern.replace("X", DOWNLOADER_VERSION)
    return Path(filename)

ROOT = Path(__file__).parent.resolve()
CONFIG_PATH = ROOT / "config" / "config.jsonc"
ASCII_PATH = ROOT / "config" / get_versioned_path("ascii(girlX).txt")
DATA_PATH = ROOT / "data"
DATA_GAMES_PATH = DATA_PATH / "games"
SDD_EXE = DATA_PATH / "SteamDepotDownloaderMod.exe"
DEPOT_FOLDER = DATA_PATH / "DepotDownloaderMod"

MIN_GAMES_WIDTH = 40
PADDING = 5

print(f"[INFO] Downloader Version: {DOWNLOADER_VERSION}")
print(f"[INFO] Looking for ASCII art at: {ASCII_PATH}")

def get_terminal_width():
    """Get actual terminal width with fallback."""
    try:
        return shutil.get_terminal_size().columns
    except:
        return 120

def clear():
    os.system("cls" if os.name == "nt" else "clear")

def hide_path(path: Path):
    if os.name == "nt" and path.exists():
        os.system(f'attrib +h "{path}"')

def delete_path(path: Path):
    try:
        if path.is_file():
            path.unlink(missing_ok=True)
        elif path.is_dir():
            shutil.rmtree(path, ignore_errors=True)
    except Exception as e:
        print(f"\033[90m[!] Cleanup warning: {e}\033[0m")

def load_ascii() -> str:
    if ASCII_PATH.exists():
        return ASCII_PATH.read_text(encoding="utf-8")
    print(f"\033[93m[!] Warning: ASCII file not found at {ASCII_PATH}\033[0m")
    return "Ultimate Downloader v" + DOWNLOADER_VERSION

def load_config() -> dict:
    if CONFIG_PATH.exists():
        text = "\n".join(
            line for line in CONFIG_PATH.read_text(encoding="utf-8").splitlines()
            if not line.strip().startswith("//")
        )
        try:
            return json.loads(text)
        except:
            return {}
    return {}

def list_games() -> List[str]:
    if not DATA_GAMES_PATH.exists():
        return []
    return [d.name for d in sorted(DATA_GAMES_PATH.iterdir()) if d.is_dir()]

def parse_ascii_art(art_text: str) -> List[str]:
    art_text = art_text.replace('\r\n', '\n').replace('\r', '\n')
    lines = art_text.splitlines()
    cleaned = []
    for line in lines:
        cleaned_line = re.sub(r'\$\d+', '', line)
        cleaned.append(cleaned_line)
    return cleaned

def pad_line(line: str, width: int, align: str = 'left') -> str:
    if align == 'left':
        return line[:width].ljust(width)
    else:
        return line[:width].rjust(width)

def calculate_games_width(games: List[str]) -> int:
    if not games:
        return MIN_GAMES_WIDTH
    longest_game = max(len(game) for game in games)
    required_width = 5 + longest_game + PADDING
    return max(required_width, MIN_GAMES_WIDTH)

def create_side_by_side_display(games: List[str], ascii_art: str) -> str:
    """Create side-by-side display with games and ASCII art."""
    terminal_width = get_terminal_width()
    ascii_lines = parse_ascii_art(ascii_art)
    games_width = calculate_games_width(games)

    available_width = terminal_width - games_width - 4
    ascii_width = max(40, available_width)

    truncated_ascii = []
    for line in ascii_lines:
        if len(line) > ascii_width:
            truncated_ascii.append(line[:ascii_width])
        else:
            truncated_ascii.append(line.ljust(ascii_width))

    output_lines = []
    max_lines = max(len(games) + 2, len(truncated_ascii))

    top_border = "┌" + "─" * games_width + "┐"
    ascii_line_0 = truncated_ascii[0] if truncated_ascii else " " * ascii_width
    output_lines.append(top_border + ascii_line_0)

    header_line = "│" + pad_line("Available Games", games_width) + "│"
    ascii_line_1 = truncated_ascii[1] if len(truncated_ascii) > 1 else " " * ascii_width
    output_lines.append(header_line + ascii_line_1)

    for i in range(max_lines - 2):
        if i < len(games):
            game_line = f" {i+1:02d}. {games[i]}"
        else:
            game_line = ""

        game_line = pad_line(game_line, games_width)
        ascii_idx = i + 2

        if ascii_idx < len(truncated_ascii):
            ascii_line = truncated_ascii[ascii_idx]
        else:
            ascii_line = " " * ascii_width

        output_lines.append("│" + game_line + "│" + ascii_line)

    bottom_border = "└" + "─" * games_width + "┘"
    output_lines.append(bottom_border)

    return "\n".join(output_lines)

def pick_folder() -> Optional[str]:
    try:
        root = Tk()
        root.withdraw()
        folder = filedialog.askdirectory(title="Select Installation Folder")
        root.destroy()
        return folder or None
    except Exception:
        return None

def print_banner_with_games():
    cfg = load_config()
    banner = load_ascii()
    games = list_games()
    title = cfg.get("title", "Contrary Downloader")
    font = cfg.get("font", "")

    display = create_side_by_side_display(games, banner)

    sys.stdout.write(display + "\n")
    sys.stdout.write(f"--- {title} [v{DOWNLOADER_VERSION}] [{font}] ---\n")
    sys.stdout.flush()

    return games

def run_batch_and_stream(bat_path: Path, cwd: Path):
    print(f"\n\033[94m[+] Running batch: {bat_path}\033[0m")
    proc = subprocess.Popen(
        ["cmd.exe", "/c", str(bat_path)],
        cwd=cwd,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
        encoding="utf-8",
        errors="ignore"
    )

    try:
        for line in proc.stdout:
            sys.stdout.write(line)
            sys.stdout.flush()
        proc.wait()
    except KeyboardInterrupt:
        print("\n\033[91m[!] Download interrupted by user (Ctrl+C)\033[0m")
        proc.terminate()
        proc.wait()

    print(f"\033[92m[✔] Completed with code {proc.returncode}\033[0m")

def main():
    clear()
    games = print_banner_with_games()

    if not games:
        print("\033[91m[!] No game folders found in data/games.\033[0m")
        return

    print()
    choice = input("Enter game number to download: ").strip()

    if not choice.isdigit() or int(choice) < 1 or int(choice) > len(games):
        print("\033[91mInvalid selection.\033[0m")
        return

    game_name = games[int(choice) - 1]
    print(f"\n\033[96mSelected: {game_name}\033[0m")

    install_folder = pick_folder()
    if not install_folder:
        print("\033[93m[!] Installation canceled.\033[0m")
        return

    target_dir = Path(install_folder) / game_name
    target_dir.mkdir(parents=True, exist_ok=True)

    game_src = DATA_GAMES_PATH / game_name
    bats = list(game_src.glob("*.bat"))

    if not bats:
        print(f"\033[91mNo .bat found in {game_src}\033[0m")
        return

    manifests_src = game_src / f"{game_name} Manifests and Keys"
    manifests_dest = target_dir / f"{game_name} Manifests and Keys"
    depot_dest = target_dir / "DepotDownloaderMod"

    if DEPOT_FOLDER.exists():
        shutil.copytree(DEPOT_FOLDER, depot_dest, dirs_exist_ok=True)
        hide_path(depot_dest)

    if manifests_src.exists():
        shutil.copytree(manifests_src, manifests_dest, dirs_exist_ok=True)
        hide_path(manifests_src)

    dl_bat = next((b for b in bats if b.name.lower() == "download.bat"), None)

    try:
        if dl_bat:
            print("\033[94mFound download.bat — copying & hiding it.\033[0m")
            dl_copy = target_dir / "download.bat"
            shutil.copy2(dl_bat, dl_copy)
            hide_path(dl_copy)
            run_batch_and_stream(dl_copy, target_dir)
            delete_path(dl_copy)
        else:
            print("\033[91m[!] download.bat not found. Please create one.\033[0m")
            return
    finally:
        delete_path(manifests_dest)
        delete_path(depot_dest)
        print("\033[90m[✔] Cleanup complete.\033[0m")

if __name__ == "__main__":
    main()