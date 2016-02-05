path = require 'path'
HtmlWebpackPlugin = require 'html-webpack-plugin'
# ExtractTextPlugin = require 'extract-text-webpack-plugin'

module.exports =
  entry: './doc/main.coffee'
  output:
    path: path.join __dirname, './dist'
    publicPath: '/'
    filename: 'dist/build.js'
  plugins: [
    new HtmlWebpackPlugin
      # filename: '../../index.html'
      template: path.join __dirname, '../doc/index.jade'
    # new ExtractTextPlugin 'styles.css'
  ]
  # resolve:
  #   extensions:
  #     alias:
  #     src:
  module:
    loaders: [
        test: /\.vue$/
        loader: 'vue'
      ,
        test: /\.jade$/
        loader: 'jade-loader'
      ,
        test: /\.coffee$/
        loader: 'coffee-loader'
        exclude: /node_modules/
      ,
        test: /\.styl$/
        loader: 'style!css!stylus'
      ,
        test: /\.css$/
        loader: 'style!css'
      ,
        test: /\.js$/
        loader: 'script-loader'
        exclude: /node_modules/
      ,
        test: /\.md$/
        loader: 'html!markdown'
      ,
        test: /\.(png|jpg|gif|svg)$/
        loader: 'url'
        query:
          limit: 10000
          name: '[name].[ext]?[hash]'
    ]
