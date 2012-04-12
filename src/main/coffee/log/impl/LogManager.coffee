namespace "Log4J.impl"

class Log4J.impl.LogManager
   loggerMap: {}
   getLogger : ( name ) ->
      @loggerMap[name] = @loggerMap[name]or new Log4J.impl.Logger(name)
      return @loggerMap[name]
