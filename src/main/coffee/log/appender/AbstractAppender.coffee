namespace "Log4J.appender"

class Log4J.appender.AbstractAppender
    layout : null
    constructor: ( @layout ) ->

    doAppend: ( loggingEvent ) ->
        throw new Error("Please implement doAppend method in the supper class")