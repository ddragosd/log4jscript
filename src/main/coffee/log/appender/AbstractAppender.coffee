namespace "log.appender"

class log.appender.AbstractAppender
    layout : null
    constructor: ( @layout ) ->

    doAppend: ( loggingEvent ) ->
        throw new Error("Please implement doAppend method in the supper class")