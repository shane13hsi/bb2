Backbone = require 'backbone'

TodoModel = require '../models/todo-model'

TodoCollection = Backbone.Collection.extend

  model: TodoModel

  url: 'http://localhost:3000/todos'

module.exports = TodoCollection
