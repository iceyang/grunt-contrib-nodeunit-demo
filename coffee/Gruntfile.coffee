module.exports = (grunt)->

  grunt.initConfig
    nodeunit: 
      all: ['test/**/*Test.js']
      # options: 
      #   reporter: 'tap'
      #   reporterOutput: 'tests.tap'
      #   reporterOptions: 
      #     output: '.'

  grunt.loadNpmTasks('grunt-contrib-nodeunit')

  grunt.registerTask('default', ['nodeunit'])

