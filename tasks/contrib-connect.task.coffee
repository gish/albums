module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-connect'

  config =
    server:
      options:
        hostname: '*'
        base: [
          '.tmp'
        ]
        port: 1337
        keepalive: false
        livereload: true

  grunt.config 'connect', config
