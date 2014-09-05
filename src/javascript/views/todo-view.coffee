Backbone = require 'backbone'
$ = require 'jquery'
Backbone.$ = $


TodoView = Backbone.View.extend

  tagName: 'li'

  template: require '../templates/todo-item-template.hbs'

  render: ->
    @$el.html @template(@model.toJSON())
    this

module.exports = TodoView
