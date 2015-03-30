fs = require('fs')

class Config

  json = ''
  apps = []

  constructor: () ->
    console.log 'created config class instance'
  loadConfig: () ->
    fileContents = fs.readFileSync('./config/app-config.json', 'utf-8')
    @json = JSON.parse fileContents 
    @apps = @json.apps

module.exports = Config