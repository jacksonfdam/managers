module.exports = function(grunt) {

    "use strict";

    // Load all grunt tasks
    // --------------------------
    require("load-grunt-tasks")(grunt);


    // Init Config
    // --------------------------
    var appConfig = {

        // General configs goes here

        // Metadata
        pkg: grunt.file.readJSON("package.json"),
        banner:
        "/*" +
        " * -------------------------------------------------------\n" +
        " * Project: <%= pkg.title %>\n" +
        " * Version: <%= pkg.version %>\n" +
        " * Author:  <%= pkg.author.name %> (<%= pkg.author.email %>)\n" +
        " *\n" +
        " * Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.title %>\n" +
        " * -------------------------------------------------------\n" +
        " */\n",

        // Tasks goes here

    };

    grunt.initConfig(appConfig);


    // Register tasks
    // --------------------------
    grunt.registerTask("default", [ ]);
    grunt.registerTask("build", [ ]);

};
