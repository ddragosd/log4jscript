namespace "log.impl"

class log.impl.Level
    level: null
    levelStr : null

    constructor: (@level, @levelStr) ->

    @OFF_INT = Number.MAX_VALUE
    @FATAL_INT = 50000
    @ERROR_INT = 40000
    @WARN_INT = 30000
    @INFO_INT = 20000
    @DEBUG_INT = 10000
    @TRACE_INT = 5000
    @ALL_INT = Number.MIN_VALUE


    @OFF = new Level( Level.OFF_INT, "OFF")
    @FATAL = new Level( Level.FATAL_INT, "FATAL")
    @ERROR = new Level( Level.ERROR_INT, "ERROR")
    @WARN = new Level( Level.WARN_INT, "WARN")
    @INFO = new Level( Level.INFO_INT, "INFO")
    @DEBUG = new Level( Level.DEBUG_INT, "DEBUG")
    @TRACE = new Level( Level.TRACE_INT, "TRACE")
    @ALL = new Level( Level.ALL_INT, "ALL")

    toString: ->
        @levelStr

    valueOf: ->
        @level


