// Configuration
var config = require('./config');

// Modules
var cli   = require('commander'),
    path  = require('path'),
    sh    = require('shelljs'),
    color = require('cli-color');

// Messages
var error    = color.red.bold,
    warn     = color.yellow,
    info     = color.grey,
    notice   = color.cyan,
    success  = color.green;


// CLI commands
cli
    .command('deploy')
    .description('Initialize Build Tasks.')
    .action(build);

cli.parse(process.argv);

cli
    .command('help')
    .description('Show help.')
    .action(help);

cli.parse(process.argv);

// Compile Sass Files
function initCompile(){
    if (!sh.which('compass')) {
        sh.echo(error('✖ This build script requires "compass" to be installed globally.'));
        sh.echo(warn('Install: gem compass'));
        exit(1);
    }
    sh.echo(notice('! Compiling files...'));
    sh.exec('compass compile .');
}

// Validate Scripts
function initValidate() {
    if (!sh.which('jshint')) {
        sh.echo(error('✖ This build script requires "jshint" to be installed globally.'));
        sh.echo(warn('Install: npm install jshint -g'));
        exit(1);
    }
    sh.echo(notice('! Validating scripts...'));
    sh.exec('jshint main.js');
}

// Minify and Concatenate Scripts
function initMinify() {
    if (!sh.which('uglifyjs')) {
        sh.echo(error('✖ This build script requires "uglifyjs" to be installed globally.'));
        sh.echo(warn('Install: npm install uglify-js -g'));
        exit(1);
    }
    sh.echo(notice('! Minifying scripts...'));
    sh.exec('cat main.js | uglifyjs -o main.min.js');
}

// Clean Old Files
function initClean(){
    sh.echo(notice('! Removing old files...'));
    sh.rm('-rf', config.paths.dist);
}

// Create Structure
function initScaffolding() {
    var assetsDir = path.join(config.paths.dist, 'assets');
    var tempDir   = path.join(config.paths.dist, 'temp');

    sh.echo(notice('! Creating Structure...'));
    sh.mkdir('-p', assetsDir);
    sh.mkdir('-p', tempDir);
}


// Initialize Build
function build(){

    sh.echo(notice('! Initialize Building process...'));

    initClean();
    initScaffolding();
    initCompile();
    initValidate();
    initMinify();

    sh.echo(success('✔ All Done!'));
}

function help() {

}
