RsyslogAnalyzer.HostsRoute = Ember.Route.extend
  model: ->
    RsyslogAnalyzer.Host.find()
