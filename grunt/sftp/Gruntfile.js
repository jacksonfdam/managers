module.exports = function(grunt) {

    "use strict";

    // Load plugins
    require('load-grunt-tasks')(grunt);

    // Config Tasks
    var appConfig = {

        'sftp-deploy': {
            build: {
                auth: {
                    host: 'server.com',
                    port: 22,
                    authKey: 'key1'
                },
                src: '/path/to/source/folder',
                dest: '/path/to/destination/folder',
                exclusions: ['/path/to/source/folder/**/.DS_Store', '/path/to/source/folder/**/Thumbs.db', 'dist/tmp'],
                server_sep: '/'
            }
        }

    };

    grunt.initConfig(appConfig);

    // Register tasks
    grunt.registerTask( "deploy", [ "sftp-deploy" ] );

    // Tasks Aliases
    grunt.registerTask( "d", [ "deploy" ] );

};