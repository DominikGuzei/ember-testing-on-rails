
#= require app/statechart

require ['app', 'statechart'], (App, Statechart) ->

  describe 'App.statechart', ->

    beforeEach ->
      @statechart = Statechart.create()

    it 'should define a subclass of statechart', ->
      expect(@statechart.isStatechart).toBeTruthy()

    it 'should define a rootState for the statechart', ->
      expect(@statechart.rootState).toBeDefined()


    describe 'rootState', ->

      it 'should create and append provided app view to the app root', ->
        @appendStub = sinon.stub()
        @statechart.appView = {
          create: sinon.stub().returns {
            append: @appendStub
          }
        }

        @statechart.initStatechart()

        expect(@appendStub).toHaveBeenCalled()