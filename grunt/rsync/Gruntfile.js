module.exports = function(grunt) {

    "use strict";

    // Load plugins
    require('load-grunt-tasks')(grunt);

    // Config Tasks
    var appConfig = {

        rsync: {
            options: {
                args: ["--verbose"],
                exclude: [".git*","*.scss","node_modules"],
                recursive: true
            },
            dist: {
                options: {
                src: "./",
                dest: "../dist"
                }
            },
            stage: {
                options: {
                src: "../dist/",
                dest: "/var/www/site",
                host: "user@staging-host",
                syncDestIgnoreExcl: true
                }
            },
            prod: {
                options: {
                src: "../dist/",
                dest: "/var/www/site",
                host: "user@live-host",
                syncDestIgnoreExcl: true
                }
            }
        }

    };

    grunt.initConfig(appConfig);

    // Register tasks
    grunt.registerTask( "deploy", [ "rsync" ] );

    // Tasks Aliases
    grunt.registerTask( "d", [ "deploy" ] );

};