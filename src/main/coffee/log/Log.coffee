class window.Log
  _logManager = new log.impl.LogManager()

  @getLogger: (name) ->
    _logManager.getLogger(name)