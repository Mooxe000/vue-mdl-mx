gulp = require 'gulp'
reload = require '../module/reload'

module.exports = ->

  gulp.watch 'doc/**/*', reload
