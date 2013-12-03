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
echo "\n"
echo "Select an integration option to getting started: \n"
echo "\n"
echo "[ 1 ] - Bower \n"
echo "[ 2 ] - Grunt \n"
echo "[ 3 ] - Compass \n"
echo "[ 4 ] - Composer \n"
echo "[ 5 ] - NPM \n"
echo "[ 6 ] - Rake \n"
echo "[ 7 ] - Make \n"
echo "[ 0 ] - Exit \n"
echo "\n"
read -p "Enter your choice: " input

if [ $input = "1" ]; then

    # create ./src directory
    echo "Initializing structure..."
    mkdir ./src

    # copy files to ./src directory
    echo "Copying files..."
    cp ./bower/* ./src

    # remove unecessary files
    echo "Removing stuff you don't want..."
    rm -rf .* README.md init.sh ${GRUNT} ${COMPASS} ${COMPOSER} ${NPM} ${RAKE} ${MAKE}

    # All done!
    echo "Ready to rock with Bower!"

fi

if [ $input = "2" ]; then

    # create ./src directory
    echo "Initializing structure..."
    mkdir ./src

    # copy files to ./src directory
    echo "Copying files..."
    cp ./grunt/* ./src/

    # remove unecessary files
    echo "Removing stuff you don't want..."
    rm -rf .* README.md init.sh ${BOWER} ${COMPASS} ${COMPOSER} ${NPM} ${RAKE} ${MAKE}

    # All done!
    echo "Ready to rock with Grunt!"

fi

if [ $input = "3" ]; then

    # create ./src directory
    echo "Initializing structure..."
    mkdir ./src

    # copy files to ./src directory
    echo "Copying files..."
    cp ./compass/* ./src/

    # remove unecessary files
    echo "Removing stuff you don't want..."
    rm -rf .* README.md init.sh ${BOWER} ${GRUNT} ${COMPOSER} ${NPM} ${RAKE} ${MAKE}

    # All done!
    echo "Ready to rock with Compass!"

fi

if [ $input = "4" ]; then

    # create ./src directory
    echo "Initializing structure..."
    mkdir ./src

    # copy files to ./src directory
    echo "Copying files..."
    cp ./composer/* ./src/

    # remove unecessary files
    echo "Removing stuff you don't want..."
    rm -rf .* README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${NPM} ${RAKE} ${MAKE}

    # All done!
    echo "Ready to rock with Composer!"

fi

if [ $input = "5" ]; then

    # create ./src directory
    echo "Initializing structure..."
    mkdir ./src

    # copy files to ./src directory
    echo "Copying files..."
    cp ./npm/* ./src/

    # remove unecessary files
    echo "Removing stuff you don't want..."
    rm -rf .* README.md init.sh ${BOWER} ${GRUNT} ${COMPOSER} ${COMPASS} ${RAKE} ${MAKE}

    # All done!
    echo "Ready to rock with NPM!"

fi

if [ $input = "6" ]; then

    # create ./src directory
    echo "Initializing structure..."
    mkdir ./src

    # copy files to ./src directory
    echo "Copying files..."
    cp ./rake/* ./src/

    # remove unecessary files
    echo "Removing stuff you don't want..."
    rm -rf .* README.md init.sh ${BOWER} ${GRUNT} ${COMPOSER} ${NPM} ${COMPASS} ${MAKE}

    # All done!
    echo "Ready to rock with Rake!"

fi

if [ $input = "7" ]; then

    # create ./src directory
    echo "Initializing structure..."
    mkdir ./src

    # copy files to ./src directory
    echo "Copying files..."
    cp ./make/* ./src/

    # remove unecessary files
    echo "Removing stuff you don't want..."
    rm -rf .* README.md init.sh ${BOWER} ${GRUNT} ${COMPOSER} ${NPM} ${COMPASS} ${RAKE}

    # All done!
    echo "Ready to rock with Make!"

fi

if [ $input = "0" ]; then
    echo "Bye bye!"
    exit
fi
