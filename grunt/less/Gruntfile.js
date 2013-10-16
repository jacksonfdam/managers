module.exports = function(grunt) {

    "use strict";

    grunt.initConfig({

        less: { // https://github.com/gruntjs/grunt-contrib-less#options
            development: {
                options: {
                    paths: ["less"]
                },
                files: {
                    "style.css": "style.less"
                }
            },
            production: {
                options: {
                    paths: ["less"],
                    compress: true
                },
                files: {
                    "style.css": "style.less"
                }
            }
        },

        watch: {
            styles: {
                files: '*.less',
                tasks: ['less:development']
            }
        }

    });

    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('default', 'less:development');

};