var env = (process.env.NODE_ENV || 'DEVELOPMENT').toLowerCase(),
    run = './config/' + env + '.json',
    cfg = require(run);

module.exports = cfg;
