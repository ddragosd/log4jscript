namespace "Log4J.Log"
class Log4J.Log
  _logManager = new Log4J.impl.LogManager()

  @getLogger: ( name ) ->
    _logManager.getLogger(name)