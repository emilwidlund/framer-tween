var path = require('path');

module.exports = {
    entry: './app.coffee',
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: 'bundle.js'
    },
    module: {
        loaders: [
            {
                rules: [
                    {
                        test: /\.coffee$/,
                        use: ['coffee-loader']
                    }
                ]
            }
        ]
    }
}