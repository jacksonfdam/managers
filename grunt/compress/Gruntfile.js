module.exports = function(grunt) {

    "use strict";

    // Load plugins
    require('load-grunt-tasks')(grunt);

    // Config Tasks
    var appConfig = {

        pkg: grunt.file.readJSON("package.json"),

        // make a zipfile
        compress: {
            zip: {
            options: {
                archive: '<% pkg.name %>-v<% pkg.version %>.zip'
            },
            files: [
                {src: ['path/*'], dest: 'internal_folder/', filter: 'isFile'}, // includes files in path
                {src: ['path/**'], dest: 'internal_folder2/'}, // includes files in path and its subdirs
                {expand: true, cwd: 'path/', src: ['**'], dest: 'internal_folder3/'}, // makes all src relative to cwd
                {flatten: true, src: ['path/**'], dest: 'internal_folder4/', filter: 'isFile'} // flattens results to a single level
                ]
            },
            gzip: {
                options: {
                    mode: 'gzip'
                },
                expand: true,
                cwd: 'assets/',
                src: ['**/*'],
                dest: 'public/'
            }
        }

    };

    grunt.initConfig(appConfig);

    // Register tasks
    grunt.registerTask( "default", [ "compress" ] );

};