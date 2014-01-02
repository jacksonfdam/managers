// Configuration
var config = require('./config');

// Modules
var cli   = require('commander'),
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
    .command('init')
    .description('Initialize Build Tasks.')
    .action(build);

cli.parse(process.argv);

// Compile Sass Files
function initCompile(){
    if (!sh.which('stylus')) {
        sh.echo(error('✖ This build script requires "stylus" to be installed globally.'));
        sh.echo(warn('Install: npm install stylus -g'));
        exit(1);
    }
    sh.echo(notice('! Compiling files...'));
    sh.exec('stylus -c <' + config.paths.src.css + 'style.styl> ' + config.paths.out.css + 'style.css');
}

// Validate Scripts
function initValidate() {
    if (!sh.which('jshint')) {
        sh.echo(error('✖ This build script requires "jshint" to be installed globally.'));
        sh.echo(warn('Install: npm install jshint -g'));
        exit(1);
    }
    sh.echo(notice('! Validating scripts...'));
    sh.exec('jshint ' + config.paths.src.js + 'main.js');
}

// Minify and Concatenate Scripts
function initMinify() {
    if (!sh.which('uglifyjs')) {
        sh.echo(error('✖ This build script requires "uglifyjs" to be installed globally.'));
        sh.echo(warn('Install: npm install uglify-js -g'));
        exit(1);
    }
    sh.echo(notice('! Minifying scripts...'));
    sh.exec('cat '+ config.paths.src.js +' main.js | uglifyjs -o '+ config.paths.out.js +'main.min.js');
}

// Clean Old Files
function initClean(){
    sh.echo(notice('! Removing old files...'));
    sh.rm('-rf', [config.paths.out.main, config.paths.out.css, config.paths.out.js, config.paths.out.img]);
}

// Create Structure
function initScaffolding() {
    sh.echo(notice('! Creating Structure...'));
    sh.mkdir('-p', [config.paths.out.main, config.paths.out.css, config.paths.out.js, config.paths.out.img]);
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
