Backbone = require 'backbone'

TodoCollection = require './collections/todo-collection'
AppView = require './views/app-view'

TodoRouter = Backbone.Router.extend

  start: ->
    window.todos = new TodoCollection()
    view = new AppView
      collection: todos

    view.render()
    return

module.exports = TodoRouter