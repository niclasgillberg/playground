gulp = require 'gulp'
plumber = require 'gulp-plumber'
stylus = require 'gulp-stylus'
autoprefixer = require 'gulp-autoprefixer'
cssmin = require 'gulp-cssmin'

gulp.task 'application', ['application-styles']

gulp.task 'application-styles', ->
  gulp.src 'styles/application.styl'
      .pipe plumber()
      .pipe stylus()
      .pipe autoprefixer()
      .pipe cssmin()
      .pipe gulp.dest 'styles'

gulp.task 'default', ->
  console.log 'Gulp is up and running'