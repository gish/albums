module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-clean'

  config = ['.tmp']

  grunt.config 'clean', config
