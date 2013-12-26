module.exports = (grunt) ->

  grunt.initConfig {}

  grunt.loadTasks './tasks/'

  grunt.registerTask 'default', [
    'clean'
    'cssmin:dev'
    'jsmin-sourcemap:dev'
    'copy:dev'
    'connect'
  ]

  grunt.registerTask 'build', ['cssmin:build']
