namespace "log.impl"

class log.impl.LogManager
   loggerMap: {}
   getLogger : (name) ->
      @loggerMap[name] = @loggerMap[name]or new log.impl.Logger(name)
      return @loggerMap[name]
