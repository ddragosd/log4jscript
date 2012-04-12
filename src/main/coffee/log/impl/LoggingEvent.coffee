namespace "Log4J.impl"

class Log4J.impl.LoggingEvent
    categoryName: null
    level : null # instance of Log4J.Level
    message: null # String
    exception: null
    logger : null # instance of Log4J.impl.Logger

    constructor: (@categoryName, @level, @message, @exception, @logger ) ->