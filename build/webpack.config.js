const path = require('path');

module.exports = {
    mode: 'development', //production
    entry: {
        app: ['./src/index.js']
    },
    output: {
        path: path.resolve(__dirname, '../lib'),
        filename: 'index.js',
    },
    module: {},
    plugins: [],
}