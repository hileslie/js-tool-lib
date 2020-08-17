const path = require('path');

module.exports = {
    mode: 'production',
    entry: {
        app: ['./src/index.js']
    },
    output: {
        path: path.resolve(process.cwd(), './lib'),
        filename: 'index.js',
    },
    module: {},
    plugins: [],
}