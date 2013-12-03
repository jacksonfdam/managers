#!/bin/sh


# Let's start with some settings
clear

BOWER="./bower"
GRUNT="./grunt"
COMPASS="./compass"
COMPOSER="./composer"
NPM="./npm"
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

    # create ./src directory
    printf "Initializing structure...\n"
    mkdir ./src

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./bower/* ./src

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NPM} ${RAKE} ${MAKE}

    # All done!
    printf "Ready to rock with Bower!\n"

fi

if [ $input = "2" ]; then

    # create ./src directory
    printf "Initializing structure...\n"
    mkdir ./src

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./grunt/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NPM} ${RAKE} ${MAKE}

    # All done!
    printf "Ready to rock with Grunt!\n"

fi

if [ $input = "3" ]; then

    # create ./src directory
    printf "Initializing structure...\n"
    mkdir ./src

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./compass/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NPM} ${RAKE} ${MAKE}

    # All done!
    printf "Ready to rock with Compass!\n"

fi

if [ $input = "4" ]; then

    # create ./src directory
    printf "Initializing structure...\n"
    mkdir ./src

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./composer/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NPM} ${RAKE} ${MAKE}

    # All done!
    printf "Ready to rock with Composer!\n"

fi

if [ $input = "5" ]; then

    # create ./src directory
    printf "Initializing structure...\n"
    mkdir ./src

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./npm/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NPM} ${RAKE} ${MAKE}

    # All done!
    printf "Ready to rock with NPM!\n"

fi

if [ $input = "6" ]; then

    # create ./src directory
    printf "Initializing structure...\n"
    mkdir ./src

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./rake/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NPM} ${RAKE} ${MAKE}

    # All done!
    printf "Ready to rock with Rake!\n"

fi

if [ $input = "7" ]; then

    # create ./src directory
    printf "Initializing structure...\n"
    mkdir ./src

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./make/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NPM} ${RAKE} ${MAKE}

    # All done!
    printf "Ready to rock with Make!\n"

fi

if [ $input = "0" ]; then
    printf "Bye bye!\n"
    exit
fi
