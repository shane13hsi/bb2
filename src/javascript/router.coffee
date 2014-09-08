Backbone = require 'backbone'

TodoCollection = require './collections/todo-collection'
AppView = require './views/app-view'

TodoRouter = Backbone.Router.extend

  start: ->
    todos = new TodoCollection()
    # set the model/collections smartly
    # pass {reset:true} to rollback the old behavior
    todos.fetch()
    view = new AppView
      collection: todos

    view.render()
    return

module.exports = TodoRouter