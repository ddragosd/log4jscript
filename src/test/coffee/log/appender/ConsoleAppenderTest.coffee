TestCase("ConsoleAppenderTest", {
    testDoAppend: ->
        appender = new log.appender.ConsoleAppender( new log.layout.MessageLayout() )
        loggingEvent = new log.impl.LoggingEvent( "a", log.Level.DEBUG, "hello world", {ex:"123"}, {obj:"abc"} )

        origConsoleLog = window.console.log

        str = ""
        window.console.log = (msg) ->
            origConsoleLog(msg)
            str += msg

        appender.doAppend( loggingEvent )
        assertEquals( "hello world", str )
        window.console.log = origConsoleLog
})