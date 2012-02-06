
#= require app/app

require ['app'], (App) ->

  describe 'App', ->

    beforeEach ->
      @appRoot = $('<div>')

    afterEach ->
      @app.destroy()
      @appRoot = null

    it 'should define an Ember Application', ->
      @app = App.create {
        rootElement: @appRoot
      }

      expect(@appRoot).toHaveClass('ember-application')

    it 'should initialize the provided statechart', ->
      statechartMock = {
        initStatechart: sinon.stub()
      }

      @app = App.create {
        rootElement: @appRoot
        statechart: statechartMock
      }

      expect(statechartMock.initStatechart).toHaveBeenCalled()



