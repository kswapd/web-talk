fs = require 'fs'
config = require 'config'
gulp = require 'gulp'
gutil = require 'gulp-util'
sequence = require 'run-sequence'

env = process.env.NODE_ENV

gulp.task 'html', (cb) ->
  gutil.log "gulp start html work, get config.appDomain=#{config.appDomain}"
  template = require './template'
  html = template(config)
  fs.writeFile 'build/index.html', html, cb

gulp.task 'build', (cb) ->
  gutil.log "gulp task start in #{env} mode."
  sequence 'html', cb
  