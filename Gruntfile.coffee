module.exports = (grunt) ->

  grunt.initConfig {}

  grunt.loadTasks './tasks/'

  grunt.registerTask 'builddev', [
    'clean'
    'cssmin:dev'
    'jsmin-sourcemap:dev'
    'copy:dev'
  ]

  grunt.registerTask 'default', [
    'builddev'
    'connect'
    'watch:dev'
  ]

  grunt.registerTask 'build', ['cssmin:build']
