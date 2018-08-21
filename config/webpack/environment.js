const { environment } = require('@rails/webpacker')

environment.loaders.append('stylus', {
  test: /\.styl$/,
  use: ['style-loader', 'css-loader', 'stylus-loader']
})

module.exports = environment
