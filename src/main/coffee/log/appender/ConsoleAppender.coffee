namespace "log.appender"

class log.appender.ConsoleAppender extends log.appender.AbstractAppender
    constructor: ( layout ) ->
        super(layout)

    doAppend: ( loggingEvent ) ->
        msg = @layout.format(loggingEvent)
        switch ( loggingEvent.level.toString() )
            when "WARN" then console?.warn( msg )
            when "ERROR", "FATAL" then console?.error( msg )
            else console?.log( msg )