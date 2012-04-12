namespace "log.impl"

class log.impl.LoggingEvent
    categoryName: null
    level : null # instance of log.Level
    message: null # String
    exception: null
    logger : null # instance of log.impl.Logger

    constructor: (@categoryName, @level, @message, @exception, @logger ) ->