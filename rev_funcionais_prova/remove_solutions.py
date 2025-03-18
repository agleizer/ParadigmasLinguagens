import os
import re

def process_haskell_file(file_path):
    with open(file_path, "r", encoding="utf-8") as file:
        lines = file.readlines()
    
    inside_comment = False
    filtered_lines = []
    
    for line in lines:
        if "{-" in line:
            inside_comment = True
        
        if inside_comment:
            filtered_lines.append(line)
        
        if "-}" in line:
            inside_comment = False
    
    with open(file_path, "w", encoding="utf-8") as file:
        file.writelines(filtered_lines)

def main():
    for filename in os.listdir("."):
        if filename.endswith(".hs") and os.path.isfile(filename):
            process_haskell_file(filename)
            print(f"Processed: {filename}")

if __name__ == "__main__":
    main()
