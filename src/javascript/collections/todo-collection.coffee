Backbone = require 'backbone'

TodoModel = require '../models/todo-model'

TodoCollection = Backbone.Collection.extend
  model: TodoModel

module.exports = TodoCollection
