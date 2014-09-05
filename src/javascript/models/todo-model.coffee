Backbone = require 'backbone'

TodoModel = Backbone.Model.extend

  defaults:
    title: ''
    completed: false

  toggle: ->
    this.set 'completed', !this.get('completed')


module.exports = TodoModel