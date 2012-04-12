TestCase("ConsoleAppenderTest", {
    testDoAppend: ->
        appender = new Log4J.appender.ConsoleAppender( new Log4J.layout.MessageLayout() )
        loggingEvent = new Log4J.impl.LoggingEvent( "a", Log4J.Level.DEBUG, "hello world", {ex:"123"}, {obj:"abc"} )

        origConsoleLog = window.console.log

        str = ""
        window.console.log = (msg) ->
            origConsoleLog(msg)
            str += msg

        appender.doAppend( loggingEvent )
        assertEquals( "hello world", str )
        window.console.log = origConsoleLog
})