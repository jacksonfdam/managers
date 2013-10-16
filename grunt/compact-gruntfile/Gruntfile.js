module.exports = function(grunt) {

    "use strict"

    // Requisição do grunt-config.json
    // var gruntConfig = require("./grunt-config.json");
    var gruntConfig = grunt.file.readJSON("./grunt-config.json");
    grunt.initConfig(gruntConfig);

    // Carrega os plugins relacionados no package.json
    require("load-grunt-tasks")(grunt);

    // Registra a tarefa padrão
    grunt.registerTask("default", [ "connect", "watch" ]);
    grunt.registerTask("build", ["compass", "jshint", "uglify"]);

};