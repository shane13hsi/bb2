Backbone = require 'backbone'
Backbone.$ = require 'jquery'


AppView = Backbone.View.extend

  template: require '../templates/app-template'

  initialize: ->
    @render()

  render: ->
    @$el.html @template
      title: 'Gulp All The Things!'
      description: 'Starter Gulp + Browserify project equipped to handle the following:'
      tools: [
        'Browserify-shim'
        'Browserify / Watchify'
        'CoffeeScript'
        'Compass'
        'SASS'
        'Handlebars'
        'Image optimization'
        'LiveReload'
        'Non common-js jquery plugin'
        'Npm backbone'
        'Npm jquery'
        'Underscore (included with Backbone)'
      ]

module.exports = AppView