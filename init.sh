#!/bin/sh

# Let's start with some settings
clear

BOWER="./bower"
COMPASS="./compass"
COMPOSER="./composer"
GRUNT="./grunt"
GUARD="./guard"
GULP="./gulp"
MAKE="./make"
NODE="./node"
NPM="./npm"
RAKE="./rake"


# Show options
printf "\n"
printf "Select an integration option: \n"
printf "\n"
printf "[  1 ] - Bower \n"
printf "[  2 ] - Grunt \n"
printf "[  3 ] - Gulp \n"
printf "[  4 ] - Compass \n"
printf "[  5 ] - Composer \n"
printf "[  6 ] - Node \n"
printf "[  7 ] - NPM \n"
printf "[  8 ] - Rake \n"
printf "[  9 ] - Make \n"
printf "[ 10 ] - Guard \n"
printf "\n"
printf "[  0 ] - Exit \n"
printf "\n"
read -p "Enter your choice: " input

if [ $input = "1" ]; then

    # make and copy files to ./src directory
    printf "Copying files...\n"
    mkdir -p ./src
    cp ./bower/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${NPM} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Bower!\n"

fi

if [ $input = "2" ]; then

    # make and make and copy files to ./src directory
    printf "Copying files...\n"
    mkdir -p ./src
    cp ./grunt/* ./src

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${NPM} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Grunt!\n"

fi

if [ $input = "3" ]; then

    # make and make and copy files to ./src directory
    printf "Copying files...\n"
    mkdir -p ./src
    cp ./gulp/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${GULP} ${COMPASS} ${COMPOSER} ${NODE} ${NPM} ${RAKE} ${MAKE}

    # All done!
    printf "Ready to rock with Gulp!\n"

fi

if [ $input = "4" ]; then

    # make and make and copy files to ./src directory
    printf "Copying files...\n"
    mkdir -p ./src
    cp ./compass/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${NPM} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Compass!\n"

fi

if [ $input = "5" ]; then

    # make and make and copy files to ./src directory
    printf "Copying files...\n"
    mkdir -p ./src
    cp ./composer/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${NPM} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Composer!\n"

fi

if [ $input = "6" ]; then

    # make and make and copy files to ./src directory
    printf "Copying files...\n"
    mkdir -p ./src
    cp -rf ./node/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${NPM} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with NPM!\n"

fi

if [ $input = "7" ]; then

    # make and make and copy files to ./src directory
    printf "Copying files...\n"
    mkdir -p ./src
    cp -rf ./npm/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${NPM} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with NPM!\n"

fi

if [ $input = "8" ]; then

    # make and make and copy files to ./src directory
    printf "Copying files...\n"
    mkdir -p ./src
    cp ./rake/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${NPM} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Rake!\n"

fi

if [ $input = "9" ]; then

    # make and make and copy files to ./src directory
    printf "Copying files...\n"
    mkdir -p ./src
    cp ./make/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${NPM} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Make!\n"

fi

if [ $input = "10" ]; then

    # make and make and copy files to ./src directory
    printf "Copying files...\n"
    mkdir -p ./src
    cp ./guard/* ./src/

    # remove unecessary files
    printf "Removing stuff you don't want...\n"
    rm -rf .git README.md init.sh ${BOWER} ${GRUNT} ${COMPASS} ${COMPOSER} ${NODE} ${NPM} ${RAKE} ${MAKE} ${GUARD}

    # All done!
    printf "Ready to rock with Make!\n"

fi

if [ $input = "0" ]; then
    printf "Bye bye!\n"
    exit
fi
