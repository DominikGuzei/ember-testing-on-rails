
#= require require
#= require jquery
#= require jquery_ujs
#= require lib/ember
#= require lib/sproutcore-statechart

#= require app/app
#= require app/statechart
#= require app/views/app-view

require {
  baseUrl: '/assets/app'
},
  ['app', 'statechart', 'views/app-view'],
  (App, Statechart, AppView) ->

    App.create {
      statechart: Statechart.create {
        appView: AppView
      }
    }