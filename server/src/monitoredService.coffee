
class MonitoredService
  
  serviceName = ''
  endpoints = []
  results = []

  constructor: (serviceName, endpoints) ->
    console.log "created monitoring class instance with name #{serviceName} and endpoints #{endpoints}"
    @serviceName = serviceName
    @endpoints = endpoints

  monitorQuery: () ->
    results.put 'WORKS!'

module.exports = MonitoredService