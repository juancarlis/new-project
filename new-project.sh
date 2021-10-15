#! /usr/bin/bash

projectName=$1

echo "The name of the project is $projectName"


echo "Making the project tree"
mkdir $projectName
mkdir $projectName/$projectName

