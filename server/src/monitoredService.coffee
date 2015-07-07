
class MonitoredService
  
  serviceName = ''
  endpoints = []
  results = []

  constructor: (serviceName, endpoints) ->
    console.log "created monitoring class instance with name #{serviceName} and endpoints #{endpoints}"
    @serviceName = serviceName
    @endpoints = endpoints
    
  
  startMonitoring: () ->
    @results = []
    # @results.push 'WORKS!'
    setInterval( (() -> results.push 'WORKS!'   ), 1000)
  
  

module.exports = MonitoredService