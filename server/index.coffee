#!/usr/bin/env coffee

express           = require 'express'
config            = require './src/config'
monitoredService  = require './src/monitoredService'

conf = new config()
conf.loadConfig()

monitoredServices = []

for app in conf.apps
  console.log 'creating new monitored service'
  srv = new monitoredService("app name", ["a", "b"])
  monitoredServices.push srv


app = express()

app.get '/status', (req, res) ->
  res.json conf.apps

app.get '/monitored', (req, res) ->
  res.json monitoredServices

server = app.listen 8080 , ->  
  host = server.address().address
  port = server.address().port
  console.log "Server running on #{host}:#{port}"
