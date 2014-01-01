var ENV    = (process.env.NODE_ENV || 'DEVELOPMENT').toLowerCase(),
    LOAD   = './config/' + ENV + '.json',
    config = require(LOAD);

module.exports = config;
