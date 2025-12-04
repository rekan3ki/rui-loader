#!/usr/bin/env python3
"""
Nuclear Reset Script - Completely wipes git history and starts fresh
Use this when you have secrets in git history that need to be removed permanently
"""

import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).parent.resolve()

def run_cmd(cmd, description):
    print(f"\n[*] {description}...")
    try:
        result = subprocess.run(cmd, shell=True, cwd=ROOT, capture_output=True, text=True)
        if result.returncode != 0:
            print(f"[!] {description} failed: {result.stderr}")
            return False
        print(f"[✓] {description} completed")
        return True
    except Exception as e:
        print(f"[!] {description} error: {e}")
        return False

def main():
    print("=" * 70)
    print("☢️  NUCLEAR GIT RESET - Fresh Start")
    print("=" * 70)
    
    # Confirm before proceeding
    print("\n[!] WARNING: This will DELETE ALL GIT HISTORY permanently!")
    print("[!] All commits, branches, and history will be erased.")
    confirm = input("\nAre you sure you want to proceed? (type 'YES' to confirm): ").strip()
    
    if confirm != "YES":
        print("\n[!] Cancelled. No changes made.")
        sys.exit(0)
    
    # Step 1: Delete .git directory
    print("\n" + "=" * 70)
    print("Step 1: Destroying old git history...")
    print("=" * 70)
    git_dir = ROOT / ".git"
    if git_dir.exists():
        import shutil
        try:
            shutil.rmtree(git_dir)
            print("[✓] .git directory deleted successfully")
        except Exception as e:
            print(f"[!] Failed to delete .git: {e}")
            sys.exit(1)
    else:
        print("[✓] No .git directory found")
    
    # Step 2: Initialize fresh git
    print("\n" + "=" * 70)
    print("Step 2: Initializing fresh git repository...")
    print("=" * 70)
    if not run_cmd("git init", "Initialize new git repository"):
        sys.exit(1)
    
    if not run_cmd("git config user.email \"you@example.com\"", "Set git email"):
        sys.exit(1)
    if not run_cmd("git config user.name \"Your Name\"", "Set git username"):
        sys.exit(1)
    
    # Step 3: Create .gitignore file
    print("\n" + "=" * 70)
    print("Step 3: Creating .gitignore file...")
    print("=" * 70)
    
    gitignore_content = """# Secrets and sensitive files
.env
*.key
*-token.txt
my-github-token.txt
.download_state.db

# Python cache
__pycache__/
*.pyc
*.pyo
*.pyd
.Python

# Build files
build/
dist/
*.spec
*.exe
*.bat

# IDE
.vscode/
.idea/
*.swp
*.swo
*~

# OS files
.DS_Store
Thumbs.db
"""
    
    gitignore_path = ROOT / ".gitignore"
    try:
        gitignore_path.write_text(gitignore_content)
        print("[✓] .gitignore created successfully")
    except Exception as e:
        print(f"[!] Failed to create .gitignore: {e}")
        sys.exit(1)
    
    # Step 4: Add files to git (only safe ones)
    print("\n" + "=" * 70)
    print("Step 4: Adding safe files to repository...")
    print("=" * 70)
    
    safe_files = [
        ".gitignore",
        "gui.py",
        "github_oneshot.py", 
        "push_github.py",
        "create_resume_bats.py",
        "downloader.ico"
    ]
    
    for file in safe_files:
        if (ROOT / file).exists():
            if not run_cmd(f"git add {file}", f"Add {file}"):
                print(f"[!] Warning: Could not add {file}")
        else:
            print(f"[!] Warning: {file} not found, skipping")
    
    # Step 5: Commit
    print("\n" + "=" * 70)
    print("Step 5: Creating fresh commit...")
    print("=" * 70)
    
    commit_msg = "Initial commit - rui-loader project"
    if not run_cmd(f"git commit -m \"{commit_msg}\"", "Create initial commit"):
        sys.exit(1)
    
    # Step 6: Add remote and push
    print("\n" + "=" * 70)
    print("Step 6: Pushing to GitHub...")
    print("=" * 70)
    
    if not run_cmd("git remote add origin https://github.com/rekan3ki/rui-loader.git", "Add remote origin"):
        print("[!] Remote might already exist, continuing...")
    
    print("\n[!] Make sure you have:")
    print("    1. GitHub credentials configured")
    print("    2. Push access to the repository")
    print("    3. Personal Access Token if using HTTPS\n")
    
    if run_cmd("git push -u origin master --force", "Push to GitHub (force)"):
        print("\n" + "=" * 70)
        print("[✓] SUCCESS! Repository is now clean and pushed!")
        print("=" * 70)
        print(f"\n[✓] Repository: https://github.com/rekan3ki/rui-loader")
        print(f"[✓] Branch: master")
        print(f"[✓] History: Clean (no secrets)")
    else:
        print("\n[!] Push failed. Try manual:")
        print("    git push -u origin master --force")
        sys.exit(1)

if __name__ == "__main__":
    main()