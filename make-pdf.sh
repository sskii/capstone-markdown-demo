#!/bin/bash
# Windows users will have to run this script through Git Bash
# Linux and macOS users should be able to run this natively
# You'll also need Docker installed but that's about it

### INFO
# This script will convert main.md into main.pdf

### SCRIPT PREP
set -e					# exit early if any command fails
targetfile="main.md" 	# path to the main markdown file
outputfile="main.pdf"	# name of the file to create

### DOCKER PREP
# create image using Dockerfile

# build the image from the Dockerfile in .workflow-support
# tag the image as 'pandocforcapstone' so we can access it later
docker build -t pandocforcapstone .workflow-support


### FILE CHECKS
# ensure that we have a Markdown file to compile

# if not exists
# then alert the user
if [[ ! -a $targetfile ]]; then
	echo
	echo "This test script requires $targetfile to exist. Can't make a PDF out of thin air!"
	exit 100
fi


### CREATE THE PDF
# run the image

# run the docker image (create container)
# delete the container afterwards
# share files in the current directory with the container
# no clue what the user flag is doing
# run the image built earlier (using its tag)
# arguments for Pandoc (multiple lines)
docker run 																			\
	--rm																			\
	--volume "$(pwd):/data"															\
	--user $(id -u):$(id -g)														\
	pandocforcapstone																\
	--variable header-includes='\input{.workflow-support/capstone-formatting.tex}'	\
	--variable papersize="a4" --variable documentclass="article"					\
	--variable title='ECSE Capstone Project Risk Analysis: Team \#7'				\
	--variable author="Person 1, Person 2"											\
	--variable date="Semester 1, 2024"												\
	--pdf-engine xelatex															\
	--highlight-style .workflow-support/code.theme									\
	--lua-filter .workflow-support/include-files.lua								\
	$targetfile -o $outputfile


### END
# wrap up and alert the user

echo
echo "Done!"