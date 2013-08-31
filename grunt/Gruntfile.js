"use strict";

module.exports = function(grunt) {

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
        banner:
        "\n" +
        "/*\n" +
         " * -------------------------------------------------------\n" +
         " * Project: <%= pkg.title %>\n" +
         " * Version: <%= pkg.version %>\n" +
         " *\n" +
         " * Author:  <%= pkg.author.name %>\n" +
         " * Website: <%= pkg.author.url %>\n" +
         " * Email:   <%= pkg.author.email %>\n" +
         " *\n" +
         " *\n" +
         " * Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author.name %>\n" +
         " * -------------------------------------------------------\n" +
         " */\n" +
         "\n",

        // Watch Task
        watch: {
            options: {
                livereload: false
            },
            css: {
                files: ["<%= dirs.sass %>/{,*/}*.{scss,sass}"],
                tasks: ["compass"]
            },
            js: {
                files: ["<%= jshint.all %>"],
                tasks: ["jshint", "uglify"]
            },
            html: {
                files: [
                    // extensions supported
                    "/*.{html,htm,shtml,shtm,xhtml,php,jsp,asp,aspx,erb,ctp}"
                ]
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
                mangle: false,
                banner: "<%= banner %>"
            },
            dist: {
                files: {
                    "<%= dirs.js %>/main.min.js": [
                    "<%= dirs.js %>/main.js"
                    ],
                    "<%= dirs.js %>/plugins.min.js": [
                    "<%= dirs.js %>/plugins.js"
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
        },

        // Optimize images
        imagemin: {
            dist: {
                options: {
                    optimizationLevel: 3,
                    progressive: true
                },
                files: [{
                    expand: true,
                    cwd: "<%= dirs.img %>/",
                    src: "<%= dirs.img %>/**",
                    dest: "<%= dirs.img %>/"
                }]
            }
        },

        // Deploy files
        "ftp-deploy": {
            build: {
                auth: {
                    host: "ftp.hostname.com",
                    port: 21,
                    authKey: "key1"
                },
                src: "/",
                dest: "/path/to/project",
                exclusions: [
                    ".DS_Store",
                    "**/.DS_Store",
                    "**/Thumbs.db",
                    ".git/*",
                    ".gitignore",
                    "assets/sass/*",
                    ".sass-cache/*",
                    "node_modules/*",
                    ".ftppass",
                    ".jshintrc",
                    "config.rb",
                    "Gruntfile.js",
                    "package.json",
                    "README.md",
                    "LICENSE.md"
                ]
            }
        }
    };


    // Init Config
    grunt.initConfig(appConfig);


    // Register tasks
    // --------------------------

    // Do all stuff, except for optimize images and deploy
    grunt.registerTask( "watch", [ "watch" ]);

    // Optimize images
    grunt.registerTask( "optimize", [ "imagemin" ]);

    // Deploy files
    grunt.registerTask( "deploy", [ "ftp-deploy" ] );

    // Tasks Aliases
    grunt.registerTask( "w", [ "watch" ]);
    grunt.registerTask( "o", [ "optimize" ]);
    grunt.registerTask( "d", [ "deploy" ] );

};