Backbone = require 'backbone'
$ = require 'jquery'
Backbone.$ = $


TodoView = Backbone.View.extend

  tagName: 'li'

  template: require '../templates/todo-item-template.hbs'

  events:
    'click .toggle': 'toggleComplete'

  initialize: ->
#    @listenTo(@model, 'destroy', @remove)
    @listenTo(@model, 'visible', @toggleVisible)

  render: ->
    console.log @model.toJSON()
    @$el.html @template(@model.toJSON())
    this

  toggleComplete: ->
    @model.toggle()

  toggleVisible: ->
    isCompleted = @model.get('checked')
    @$el.toggleClass 'hidden', !isCompleted

module.exports = TodoView
