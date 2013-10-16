module.exports = function(grunt) {

    "use strict";

    // Load all grunt tasks
    require('load-grunt-tasks')(grunt);

    var appConfig = {

        // Dirs
        dirs: {
            js:   "assets/js",
            sass: "assets/sass",
            css:  "assets/css",
            img:  "assets/images"
        },

        // Metadata
        pkg: grunt.file.readJSON("package.json"),

        php: {
            open: {
                options: {
                    port: 8008,
                    hostname: '0.0.0.0',
                    base: '.',
                    bin: 'php',
                    open: true
                }
            }
        },

        // Watching for changes
        watch: {
            options: {
                livereload: true
            },
            css: {
                files: ["<%= dirs.sass %>/{,*/}*.{scss,sass}"],
                tasks: ["compass"]
            },
            js: {
                files: ["<%= jshint.all %>"],
                tasks: ["jshint", "uglify"]
            }
        },

        // Linting
        jshint: {
            options: {
                jshintrc: ".jshintrc"
            },
            all: [
                "Gruntfile.js",
                "<%= dirs.js %>/main.js"
            ]
        },

        // Minify and concat
        uglify: {
            options: {
                mangle: false
            },
            dist: {
                files: {
                    "<%= dirs.js %>/main.min.js": [
                    "<%= dirs.js %>/main.js"
                    ]
                }
            }
        },

        // Compile Sass/Scss to CSS
        compass: {
            dist: {
                options: {
                    force: true,
                    config: "config.rb"
                }
            }
        }
    };


    // Init Config
    grunt.initConfig(appConfig);


    // Register tasks
    // --------------------------

    // Do all stuff, except for optimize images and deploy
    grunt.registerTask("default", [ "php:open", "watch" ]);

};