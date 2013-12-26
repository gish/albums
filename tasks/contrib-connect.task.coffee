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
        keepalive: true

  grunt.config 'connect', config
