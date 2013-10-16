module.exports = function(grunt) {

    "use strict";

    grunt.initConfig({

        sass: { // https://github.com/gruntjs/grunt-contrib-sass#options
            dist: {
                options: {
                    style: "expanded", // nested, compact, compressed, expanded
                },
                files: {
                    "sass/main.css": "sass/main.scss"
                }
            }
        },

        watch: {
            sass: {
                files: "sass/*.scss",
                tasks: ["sass"]
            }
        }

    });

    grunt.loadNpmTasks("grunt-contrib-sass");
    grunt.loadNpmTasks("grunt-contrib-watch");

    grunt.registerTask("default", "watch");

};