del = require 'del'
gulp = require 'gulp'
coffee = require 'gulp-coffee'
jasmine = require 'gulp-jasmine'
coverage = require 'gulp-coverage'
coffeelint = require 'gulp-coffeelint'

src = 'lib/*.coffee'
test = 'test/*.coffee'
build = 'build/'
dst = "#{build}*.js"

gulp.task 'clean', -> del.sync(build)

gulp.task 'default', ['clean'], ->
  gulp.src(src)
    .pipe(coffee())
    .pipe(coffeelint())
    .pipe(gulp.dest(build))

gulp.task 'test', ['default'], ->
  gulp.src([dst, test]).pipe(coverage.instrument(
      pattern: [dst]
    ))
    .pipe(jasmine())
    .pipe(coverage.report(
      outFile: "#{build}index.html"
    ))