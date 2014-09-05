Backbone = require 'backbone'

TodoModel = Backbone.Model.extend

  defaults:
    title: ''
    checked: false

  toggle: ->
    this.set 'completed', !this.get('completed')


module.exports = TodoModel