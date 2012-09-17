_ = require 'underscore'
String::contains = (what) -> @indexOf(what) isnt -1
collection = require './collection'
doc = (model) -> return ""
module.exports = (agent) -> 
  return log.error "no models" unless agent.models?
  agent.archive ?= {}
  for name, val of agent.models 
    agent.archive[name] = [] 

  return agent

  ###
  if agent.archive?
    for key, val of agent.archive
      if typeof(val) is 'string' 
        # collection
        if val.contains '.'
          agent.archive[key] = collection val 
        # document (model)
        else 
          agent.archive[key] = doc val

