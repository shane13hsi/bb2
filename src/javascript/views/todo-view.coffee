Backbone = require 'backbone'
$ = require 'jquery'
Backbone.$ = $


TodoView = Backbone.View.extend

  tagName: 'li'

  template: require '../templates/todo-item-template.hbs'

  events:
    'click .toggle': 'toggleComplete'

#  initialize: ->
#    @listenTo(@model, 'destroy', @remove)

  render: ->
    @$el.html @template(@model.toJSON())
    this

  toggleComplete: ->
    @model.toggle()

module.exports = TodoView
