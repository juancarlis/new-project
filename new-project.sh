#! /usr/bin/bash

projectName=$1

echo "The name of the project is $projectName"

echo "Building project folder tree"
mkdir $projectName
mkdir $projectName/$projectName
mkdir $projectName/$projectName/data
mkdir $projectName/$projectName/data/raw
mkdir $projectName/$projectName/data/processed
mkdir $projectName/$projectName/notebooks

touch $projectName/$projectName/main.py
touch $projectName/$projectName/README.md
touch $projectName/$projectName/data/raw/.gitkeep
touch $projectName/$projectName/data/processed/.gitkeep


echo "Initialize git repository"
cd $projectName/$projectName
git init

# Writing README.md file
cat << EOF >> README.md
# $projectName

## Project description

## Instalation

## License
EOF

# Writing a basic python main
cat << EOF >> main.py
import pandas as pd


def main():
  pass

if __name__ == '__main__':
  main()
EOF
