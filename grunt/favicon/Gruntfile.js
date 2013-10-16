module.exports = function(grunt) {

    "use strict";

    // Load plugins
    require('load-grunt-tasks')(grunt);

    // Config Tasks
    var appConfig = {

        favicons: {
            options: {
                trueColor: true,
                precomposed: true,
                appleTouchBackgroundColor: "#e2b2c2",
                windowsTile: true,
                tileBlackWhite: false,
                tileColor: "auto",
                html: 'build/out/index.html',
                HTMLPrefix: "/images/icons/"
            },
            icons: {
                src: 'src/logo.png',
                dest: 'build/images/icons'
            }
        }

    };

    grunt.initConfig(appConfig);

    // Register tasks
    grunt.registerTask( "icons", [ "favicons" ] );

};