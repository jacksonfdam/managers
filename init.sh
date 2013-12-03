#!/bin/sh


# Let's start with some settings
clear

DIST="./src"
BOWER="./bower"
GRUNT="./grunt"
COMPASS="./compass"
COMPOSER="./composer"
RAKE="./rake"
MAKE="./make"

# Ask for the administrator password upfront
sudo -v

# Show options
printf "\n"
printf "Select an integration option to getting started: \n"
printf "\n"
printf "[ 1 ] - Bower \n"
printf "[ 2 ] - Grunt \n"
printf "[ 3 ] - Compass \n"
printf "[ 4 ] - Composer \n"
printf "[ 5 ] - NPM \n"
printf "[ 6 ] - Rake \n"
printf "[ 7 ] - Make \n"
printf "[ 0 ] - Exit \n"
printf "\n"
read -p "Enter your choice: " input

if [ $input = "1" ]; then

    # copy files to ./src folder
    printf "Copying files..."
    cp ./bower/* ${DIST}

    # remove unecessary folders
    printf "Removing stuff you don't want..."
    rm -dr .* README.md install GRUNT COMPASS COMPOSER NPM RAKE MAKE

    # Everything is ok!
    printf "Ready to rock with Bower!"

fi

if [ $input = "2" ]; then

    # copy files to ./src folder
    printf "Copying files..."
    cp ./grunt/* ${DIST}

    # remove unecessary folders
    printf "Removing stuff you don't want..."
    rm -dr .* README.md install BOWER COMPASS COMPOSER NPM RAKE MAKE

    # Everything is ok!
    printf "Ready to rock with Grunt!"

fi

if [ $input = "3" ]; then

    # copy files to ./src folder
    printf "Copying files..."
    cp ./compass/* ${DIST}

    # remove unecessary folders
    printf "Removing stuff you don't want..."
    rm -dr .* README.md install BOWER GRUNT COMPOSER NPM RAKE MAKE

    # Everything is ok!
    printf "Ready to rock with Compass!"

fi

if [ $input = "4" ]; then

    # copy files to ./src folder
    printf "Copying files..."
    cp ./composer/* ${DIST}

    # remove unecessary folders
    printf "Removing stuff you don't want..."
    rm -dr .* README.md install BOWER GRUNT COMPASS NPM RAKE MAKE

    # Everything is ok!
    printf "Ready to rock with Composer!"

fi

if [ $input = "5" ]; then

    # copy files to ./src folder
    printf "Copying files..."
    cp ./npm/* ${DIST}

    # remove unecessary folders
    printf "Removing stuff you don't want..."
    rm -dr .* README.md install BOWER GRUNT COMPASS RAKE MAKE

    # Everything is ok!
    printf "Ready to rock with NPM!"

fi

if [ $input = "6" ]; then

    # copy files to ./src folder
    printf "Copying files..."
    cp ./rake/* ${DIST}

    # remove unecessary folders
    printf "Removing stuff you don't want..."
    rm -dr .* README.md install BOWER GRUNT COMPASS NPM MAKE

    # Everything is ok!
    printf "Ready to rock with Rake!"

fi

if [ $input = "7" ]; then

    # copy files to ./src folder
    printf "Copying files..."
    cp ./make/* ${DIST}

    # remove unecessary folders
    printf "Removing stuff you don't want..."
    rm -dr .* README.md install BOWER GRUNT COMPASS NPM RAKE

    # Everything is ok!
    printf "Ready to rock with Make!"

fi

if [ $input = "0" ]; then
    printf "Bye bye!"
    exit
fi
