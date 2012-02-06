
#= require app/app

define 'statechart', ['app'], (App) ->

  SC.Statechart.extend {

    appView: null

    rootState: SC.State.extend {

      enterState: ->
        @statechart.appView.create().append()
    }
  }