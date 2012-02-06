
define 'app', ->

  Ember.Application.extend {

    statechart: null,

    ready: ->
      if @statechart then @statechart.initStatechart()
  }