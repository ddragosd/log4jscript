namespace "log.appender"

class log.appender.ConsoleAppender extends log.appender.AbstractAppender
    constructor: ( layout ) ->
        super(layout)

    doAppend: ( loggingEvent ) ->
        msg = @layout.format(loggingEvent)
        switch ( loggingEvent.level.toString() )
            when "INFO" then console?.info( msg )
            when "WARN" then console?.warn( msg )
            when "ERROR", "FATAL" then console?.error( msg, loggingEvent.exception )
            else console?.log( msg )