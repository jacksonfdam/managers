module.exports = function(grunt) {

    "use strict";

    // Load plugins
    require('load-grunt-tasks')(grunt);

    // Config Tasks
    var appConfig = {

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

    grunt.initConfig(appConfig);

    // Register tasks
    grunt.registerTask( "deploy", [ "ftp-deploy" ] );

    // Tasks Aliases
    grunt.registerTask( "d", [ "deploy" ] );

};