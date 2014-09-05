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
    return


  addOne: (item) ->
    view = new TodoView model: item
    @$('#todo-list').append view.render().el


  createOnEnter: (e) ->
    input = @$('#new-todo')

    return if e.which isnt 13 or not input.val().trim()

    @collection.add
      title: input.val().trim()
      checked: false

    input.val('')
    return


module.exports = AppView