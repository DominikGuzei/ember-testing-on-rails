
#= require app/app

describe 'App', ->

  it 'should create an Ember Application on window.App', ->
     expect(window.App.get('isNamespace')).toBeTruthy()