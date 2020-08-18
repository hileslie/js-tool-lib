const path = require('path');

module.exports = {
    mode: 'production', // development
    entry: {
        app: ['./src/index.js']
    },
    output: {
        path: path.resolve(__dirname, '../lib'),
        filename: 'index.js',
        library: 'jstool',
        libraryTarget: 'umd', // commonjs2
        globalObject: 'typeof self !== \'undefined\' ? self : this',
    },
    module: {},
    plugins: [],
}