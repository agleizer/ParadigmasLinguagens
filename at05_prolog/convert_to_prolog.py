import os
import re

def convert_hs_to_pl():
    for filename in os.listdir('.'):
        if filename.endswith('.hs'):
            with open(filename, 'r', encoding='utf-8') as file:
                content = file.read()

            # Find all Haskell block comments ({- ... -})
            matches = re.findall(r'\{-.*?-}', content, re.DOTALL)

            # Convert each match to Prolog comment style
            converted_comments = [match.replace('{-', '/*').replace('-}', '*/') for match in matches]

            # Write to new .pl file
            new_filename = os.path.splitext(filename)[0] + '.pl'
            with open(new_filename, 'w', encoding='utf-8') as new_file:
                for comment in converted_comments:
                    new_file.write(comment + '\n')

if __name__ == '__main__':
    convert_hs_to_pl()
