module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-cssmin'

  config =
    dev:
      files:
        '.tmp/styles/bootstrap.css': [
          'bower_components/bootstrap/dist/css/bootstrap.css'
          'bower_components/bootstrap/dist/css/bootstrap-theme.css'
        ]

    build:
      files:
        'dist/styles/bootstrap.css': [
          'bower_components/bootstrap/dist/css/bootstrap.css'
          'bower_components/bootstrap/dist/css/bootstrap-theme.css'
        ]

  grunt.config 'cssmin', config
