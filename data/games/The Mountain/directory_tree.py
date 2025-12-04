#!/usr/bin/env python3
"""
Directory Tree Generator
Generates a complete file and folder structure of the current directory
and saves it to 'directory_structure.txt'
"""

import os
from pathlib import Path
from datetime import datetime


def get_size_format(size_bytes):
    """Convert bytes to human-readable format"""
    for unit in ['B', 'KB', 'MB', 'GB', 'TB']:
        if size_bytes < 1024.0:
            return f"{size_bytes:.2f} {unit}"
        size_bytes /= 1024.0
    return f"{size_bytes:.2f} PB"


def generate_tree(directory, prefix="", output_file=None, is_last=True, level=0, max_depth=None):
    """
    Recursively generate directory tree structure
    
    Args:
        directory: Path to directory
        prefix: Prefix for tree branches
        output_file: File handle to write to
        is_last: Whether this is the last item in current level
        level: Current depth level
        max_depth: Maximum depth to traverse (None for unlimited)
    """
    if max_depth is not None and level > max_depth:
        return
    
    try:
        items = sorted(os.listdir(directory))
    except PermissionError:
        output_file.write(f"{prefix}[Permission Denied]\n")
        return
    
    # Separate folders and files
    folders = [item for item in items if os.path.isdir(os.path.join(directory, item))]
    files = [item for item in items if os.path.isfile(os.path.join(directory, item))]
    
    all_items = folders + files
    
    for index, item in enumerate(all_items):
        is_last_item = (index == len(all_items) - 1)
        item_path = os.path.join(directory, item)
        
        # Determine tree characters
        if is_last_item:
            connector = "└── "
            extension = "    "
        else:
            connector = "├── "
            extension = "│   "
        
        # Get item info
        try:
            if os.path.isdir(item_path):
                output_file.write(f"{prefix}{connector}📁 {item}/\n")
                # Recursively process subdirectory
                generate_tree(item_path, prefix + extension, output_file, is_last_item, level + 1, max_depth)
            else:
                size = os.path.getsize(item_path)
                size_str = get_size_format(size)
                output_file.write(f"{prefix}{connector}📄 {item} ({size_str})\n")
        except (PermissionError, OSError) as e:
            output_file.write(f"{prefix}{connector}❌ {item} [Error: {str(e)}]\n")


def count_items(directory, max_depth=None, current_depth=0):
    """Count total files and folders"""
    if max_depth is not None and current_depth > max_depth:
        return 0, 0
    
    files_count = 0
    folders_count = 0
    
    try:
        items = os.listdir(directory)
        for item in items:
            item_path = os.path.join(directory, item)
            try:
                if os.path.isdir(item_path):
                    folders_count += 1
                    sub_files, sub_folders = count_items(item_path, max_depth, current_depth + 1)
                    files_count += sub_files
                    folders_count += sub_folders
                else:
                    files_count += 1
            except (PermissionError, OSError):
                continue
    except (PermissionError, OSError):
        pass
    
    return files_count, folders_count


def main():
    # Get the directory where script is located
    script_dir = Path(__file__).parent.absolute()
    output_file_path = script_dir / "directory_structure.txt"
    
    print("=" * 60)
    print("Directory Tree Generator")
    print("=" * 60)
    print(f"Scanning directory: {script_dir}")
    print(f"Output file: {output_file_path}")
    print("=" * 60)
    
    # Optional: Set maximum depth (None for unlimited)
    max_depth = None  # Change to a number like 5 to limit depth
    
    # Count items
    print("\nCounting files and folders...")
    total_files, total_folders = count_items(script_dir, max_depth)
    
    # Generate tree structure
    print("Generating directory tree...\n")
    
    with open(output_file_path, 'w', encoding='utf-8') as f:
        # Write header
        f.write("=" * 70 + "\n")
        f.write("DIRECTORY STRUCTURE\n")
        f.write("=" * 70 + "\n")
        f.write(f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f.write(f"Root Directory: {script_dir}\n")
        f.write(f"Total Files: {total_files}\n")
        f.write(f"Total Folders: {total_folders}\n")
        if max_depth is not None:
            f.write(f"Max Depth: {max_depth}\n")
        f.write("=" * 70 + "\n\n")
        
        # Write root directory
        f.write(f"📁 {script_dir.name}/\n")
        
        # Generate tree
        generate_tree(script_dir, "", f, True, 0, max_depth)
        
        # Write footer
        f.write("\n" + "=" * 70 + "\n")
        f.write(f"Summary: {total_files} files, {total_folders} folders\n")
        f.write("=" * 70 + "\n")
    
    print(f"✅ Directory structure saved to: {output_file_path}")
    print(f"📊 Total: {total_files} files, {total_folders} folders")
    print("\nDone!")


if __name__ == "__main__":
    main()
