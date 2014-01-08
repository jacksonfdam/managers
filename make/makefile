# Source Paths
JS_IN    = ./assets/js
CSS_IN   = ./assets/styl
IMG_IN   = ./assets/images
VIEW_IN  = $(shell find assets/views/*.jade)

# Public Paths
JS_OUT   = ./public/assets/js
CSS_OUT  = ./public/assets/css
IMG_IN   = ./public/assets/images
VIEW_OUT = ./public

# General Config
NODE     = ./node_modules/.bin
CH       = \033[32m✔\033[39m
HR       = -----------------------------------------------------



# Initialize build process
run: modules styles scripts views
	@echo "\n${HR}"
	@echo "Initializing build process..."
	@echo "${HR}\n"

# Install dependencies
modules:
	@echo "Installing dependencies..."
    npm install

# Compile stylus files
styles:
	@${NODE}/stylus -c < ${CSS_IN}/style.styl > ${CSS_OUT}/style.css
	@echo "Compiling Styles...          ${CHECK} Done!"

# Lint, minifies and concat scripts
scripts:
	@${NODE}/jshint ${JS_IN}/main.js
	@echo "Validating Scripts...        ${CHECK} Done!"

	@${NODE}/uglifyjs -o ${JS_IN}/main.js > ${JS_OUT}/app.min.js
	@echo "Minifying Scripts...         ${CHECK} Done!"

# Compile template views
views:
	@${NODE}/jade -P < $(VIEW_IN) > --out $(VIEW_OUT)
	@echo "Compiling Template Views...  ${CHECK} Done!"

# Clean previous files from node_modules
clean:
	rm -Rf components node_modules

# Excute all wwith "make"
.PHONY: clean run
