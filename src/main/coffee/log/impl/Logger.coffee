namespace "Log4J.impl"

class Log4J.impl.Logger
  name : null
  level: null # instanceOf Log4J.Level
  appenders : [] # array with AbstractAppender objects

  constructor: ( @name ) ->

  setLevel: ( @level ) ->

  addAppender: ( appender ) ->
    @appenders.push( appender ) if not @appenderExists( appender )

  appenderExists: ( appender ) ->
    for a in @appenders
        return true if appender is a
    return false

  setAppenders: ( appendersList ) ->
    @appenders = appendersList

  isTraceEnabled: ->
    return true if @level.valueOf() <= Log4J.Level.TRACE.valueOf()
    return false

  isDebugEnabled: ->
    return true if @level.valueOf() <= Log4J.Level.DEBUG.valueOf()
    return false

  isInfoEnabled: ->
    return true if @level.valueOf() <= Log4J.Level.INFO.valueOf()
    return false

  isWarnEnabled: ->
    return true if @level.valueOf() <= Log4J.Level.WARN.valueOf()
    return false

  isErrorEnabled: ->
    return true if @level.valueOf() <= Log4J.Level.ERROR.valueOf()
    return false

  isFatalEnabled: ->
    return true if @level.valueOf() <= Log4J.Level.FATAL.valueOf()
    return false

  log: ( level, msg, exception ) ->
    appender.doAppend( new Log4J.impl.LoggingEvent( @name, level, msg, exception, @) ) for appender in @appenders

  trace: ( msg ) ->
    @log( Log4J.Level.TRACE, msg, null ) if @isTraceEnabled()
  debug: ( msg ) ->
    @log( Log4J.Level.DEBUG, msg, null ) if @isDebugEnabled()
  info: ( msg ) ->
    @log( Log4J.Level.INFO, msg, null ) if @isInfoEnabled()
  warn: ( msg, exception ) ->
    @log( Log4J.Level.WARN, msg, exception ) if @isWarnEnabled()
  error: ( msg, exception ) ->
    @log( Log4J.Level.ERROR, msg, exception ) if @isErrorEnabled()
  fatal: (msg, exception) ->
    @log( Log4J.Level.FATAL, msg, exception ) if @isFatalEnabled()


