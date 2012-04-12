TestCase( "SimpleLayoutTest", {
    testLayout: ->
        layout = new Log4J.layout.SimpleLayout()
        loggingEvent = new Log4J.impl.LoggingEvent( "a", Log4J.Level.DEBUG, "hello world", {ex:"123"}, {obj:"abc"} )
        output = layout.format ( loggingEvent )
        assertEquals( "DEBUG - hello world", output )
})