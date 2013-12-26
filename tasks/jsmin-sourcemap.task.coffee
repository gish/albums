module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-jsmin-sourcemap'

  config =
    dev:
      src: [
        'bower_components/handlebars/handlebars.js'
        'bower_components/jquery/jquery.js'
        'app/js/**/*.js'
      ]
      dest: '.tmp/js/app.js'
      destMap: '.tmp/js/app.js.map'

  grunt.config 'jsmin-sourcemap', config
