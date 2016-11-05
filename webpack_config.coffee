ExtractTextPlugin = require('extract-text-webpack-plugin')
ext2 = new ExtractTextPlugin('a.css')
module.exports = ->
     entry: './public/main.coffee',
     output:{
         path: './public',
         filename: 'app.bundle.js'
     },
     resolve: {
        extensions: ['', '.css', '.coffee', '.less', '.js']
     },
     module: {
        loaders:[
            {test: /\.coffee$/, loader: 'coffee', exclude: /node_modules/},
            {test: /\.css$/, loader: ext2.extract("style-loader", "css-loader")},
            {test: /\.less$/, loader: ext2.extract("style-loader", "css-loader!less-loader")}

        ]
     },
     plugins: [
        ext2
    ]
    


