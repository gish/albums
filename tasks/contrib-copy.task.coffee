module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-copy'

  config =
    dev:
      expand: true
      src: [
        'index.html'
        'templates/*'
        'data/*'
      ],
      cwd: 'app/'
      dest: '.tmp/'

  grunt.config 'copy', config
