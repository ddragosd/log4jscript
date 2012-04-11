TestCase( "SimpleLayoutTest", {
    testLayout: ->
        layout = new log.layout.SimpleLayout()
        loggingEvent = new log.impl.LoggingEvent( "a", log.impl.Level.DEBUG, "hello world", {ex:"123"}, {obj:"abc"} )
        output = layout.format ( loggingEvent )
        assertEquals( "DEBUG - hello world", output )
})