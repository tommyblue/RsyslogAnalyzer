RsyslogAnalyzer.Router.map ()->
  @resource 'hosts', ->
    @route 'show', {path: "/:hostname"}

