Backbone = require 'backbone'
$ = require 'jquery'
Backbone.$ = $

TodoView = require './todo-view'


AppView = Backbone.View.extend

  el: '#todoapp'

  events:
    'keypress #new-todo': 'createOnEnter'

  initialize: ->
    @listenTo(@collection, 'add', @addOne)
    @listenTo(@collection, 'change:completed', @filterOne)
    return


  addOne: (item) ->
    view = new TodoView model: item
    @$('#todo-list').append view.render().el


  createOnEnter: (e) ->
    input = @$('#new-todo')

    return if e.which isnt 13 or not input.val().trim()

    @collection.create
      title: input.val().trim()
      checked: false

    input.val('')
    return

  filterOne: (todo) ->
#    todo.trigger 'visible'


module.exports = AppView