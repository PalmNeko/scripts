#!/bin/python3
import os
import sys
import re

def expand_include(file_path, processed_files):
    base_dir = os.path.dirname(os.path.abspath(file_path))
    if not os.path.exists(file_path):
        print(f"Error: File {file_path} not found.")
        return
    
    with open(file_path, 'r') as file:
        for line in file:
            if re.match(r'\s*#\s*include\s*\".*\"', line):
                include_file = re.search(r'\"(.*)\"', line).group(1)
                include_path = os.path.normpath(os.path.join(base_dir, include_file))
                if include_path not in processed_files:
                    processed_files.add(include_path)
                    expand_include(include_path, processed_files)
            else:
                print(line, end='')

def main():
    if len(sys.argv) != 2:
        print("Usage: python script.py <file>")
        sys.exit(1)
    
    file_path = sys.argv[1]
    processed_files = set()
    expand_include(file_path, processed_files)

if __name__ == "__main__":
    main()
