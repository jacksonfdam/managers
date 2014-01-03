#!/bin/sh

# Let's start with some settings
clear

BOWER="./bower"
GRUNT="./grunt"
GULP="./gulp"
COMPASS="./compass"
COMPOSER="./composer"
NODE="./node"
RAKE="./rake"
MAKE="./make"
GUARD="./guard"


# Show options
printf "\n"
printf "Select an integration option: \n"
printf "\n"
printf "[ 1 ] - Bower \n"
printf "[ 2 ] - Grunt \n"
printf "[ 3 ] - Gulp \n"
printf "[ 4 ] - Compass \n"
printf "[ 5 ] - Composer \n"
printf "[ 6 ] - Node \n"
printf "[ 7 ] - Rake \n"
printf "[ 8 ] - Make \n"
printf "[ 9 ] - Guard \n"
printf "[ 0 ] - Exit \n"
printf "\n"
read -p "Enter your choice: " input

if [ $input = "1" ]; then

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./bower/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Bower!\n"

fi

if [ $input = "2" ]; then

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./grunt/* ./

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Grunt!\n"

fi

if [ $input = "3" ]; then

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./gulp/* ./

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${GULP} ${COMPASS} ${COMPOSER} ${NODE} ${RAKE} ${MAKE}

    # All done!
    printf "Ready to rock with Gulp!\n"

fi

if [ $input = "4" ]; then

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./compass/* ./

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Compass!\n"

fi

if [ $input = "5" ]; then

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./composer/* ./

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Composer!\n"

fi

if [ $input = "6" ]; then

    # copy files to ./src directory
    printf "Copying files...\n"
    cp -rf ./node/* ./

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with NPM!\n"

fi

if [ $input = "7" ]; then

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./rake/* ./

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Rake!\n"

fi

if [ $input = "8" ]; then

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./make/* ./

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Make!\n"

fi

if [ $input = "9" ]; then

    # copy files to ./src directory
    printf "Copying files...\n"
    cp ./guard/* ./

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Make!\n"

fi

if [ $input = "0" ]; then
    printf "Bye bye!\n"
    exit
fi
