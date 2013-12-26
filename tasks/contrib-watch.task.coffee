module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-watch'

  config =
    dev:
      files: 'app/**/*'
      tasks: ['builddev']
      options:
        livereload: true

  grunt.config 'watch', config
