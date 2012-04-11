namespace "log.impl"

class log.impl.Logger
  level: null # instanceOf log.impl.Level

  constructor: ( @name ) ->

  setLevel: ( @level ) ->

  isTraceEnabled: ->
    return true if @level.valueOf() <= log.impl.Level.TRACE.valueOf()
    return false

  isDebugEnabled: ->
    return true if @level.valueOf() <= log.impl.Level.DEBUG.valueOf()
    return false

  isInfoEnabled: ->
    return true if @level.valueOf() <= log.impl.Level.INFO.valueOf()
    return false

  isWarnEnabled: ->
    return true if @level.valueOf() <= log.impl.Level.WARN.valueOf()
    return false

  isErrorEnabled: ->
    return true if @level.valueOf() <= log.impl.Level.ERROR.valueOf()
    return false

  isFatalEnabled: ->
    return true if @level.valueOf() <= log.impl.Level.FATAL.valueOf()
    return false

  log: ( level, msg, exception ) ->

  trace: ( msg ) ->
    log( log.impl.Level.TRACE, msg, null ) if @isTraceEnabled()
  debug: ( msg ) ->
    log( log.impl.Level.DEBUG, msg, null ) if @isDebugEnabled()
  info: ( msg ) ->
    log( log.impl.Level.INFO, msg, null ) if @isInfoEnabled()
  warn: ( msg, exception ) ->
    log( log.impl.Level.WARN, msg, exception ) if @isWarnEnabled()
  error: ( msg, exception ) ->
    log( log.impl.Level.ERROR, msg, exception ) if @isErrorEnabled()
  fatal: (msg, exception) ->
    log( log.impl.Level.FATAL, msg, exception ) if @isFatalEnabled()


