gulp = require 'gulp'
plumber = require 'gulp-plumber'
stylus = require 'gulp-stylus'
autoprefixer = require 'gulp-autoprefixer'
cssmin = require 'gulp-cssmin'
coffee = require 'gulp-coffee'
concat = require 'gulp-concat'
uglify = require 'gulp-uglify'
watch = require 'gulp-watch'

task = (options) ->
  gulp.task options.name, options.task

  if options.watch
    gulp.task "#{options.name}:watch", ->
      watch glob: options.watch, ->
        gulp.start options.name

gulp.task 'default', ['application-styles:watch', 'application-scripts:watch']
gulp.task 'build', ['application-styles', 'application-scripts']


task
  name: 'application-styles'
  watch: 'styles/**/*.styl'
  task: ->
    gulp.src 'styles/application.styl'
        .pipe plumber()
        .pipe stylus()
        .pipe autoprefixer()
        .pipe cssmin()
        .pipe gulp.dest 'dist'

task
  name: 'application-scripts'
  watch: 'app/**/*.coffee'
  task: ->
    gulp.src ['app/playground.coffee', 'app/**/*.coffee']
        .pipe plumber()
        .pipe coffee()
        .pipe concat('application.js')
        .pipe uglify()
        .pipe gulp.dest('dist')

