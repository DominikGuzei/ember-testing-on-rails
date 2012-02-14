
#= require require
#= require jquery
#= require jquery_ujs
#= require lib/ember
#= require lib/sproutcore-statechart

#= require sinon.js
#= require jasmine-sinon.js

#= require_tree ./app

jasmine.rice.autoExecute = false

define 'jasmine.waitsfor.requirejs', ->  
require ['jasmine.waitsfor.requirejs'], ->
  jasmine.getEnv().execute()