# Assets
CSS  = ./assets/css
STYL = ./assets/styl
JS   = ./assets/js
IMG  = ./assets/images

# Config
NODE = ./node_modules/.bin/
CH   = \033[32m✔\033[39m
HR   = -----------------------------------------------------


# Initialize building process
run: modules
		@echo "\n${HR}"
		@echo "Initialize building process..."
		@echo "${HR}\n"

		@./node_modules/.bin/recess --compile ${STYL} > ${CSS}
		@echo "Compiling Stylus...        ${CHECK} Done!"

		@./node_modules/.bin/recess --compress ${JS} > ${JS}
		@echo "Validating Scripts...        ${CHECK} Done!"

		@./node_modules/.bin/recess --compress ${JS} > ${JS}
		@echo "Minifying Scripts...        ${CHECK} Done!"

		@echo "\n${HR}"
		@echo "${CHECK} All done!"
		@echo "${HR}\n"

modules:
        npm install

clean:
        rm -rf ./node_modules/

.PHONY: clean run
