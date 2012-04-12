TestCase("LoggingEventTest", {
    testInitialization: ->
        event = new log.impl.LoggingEvent( "a", log.Level.DEBUG, "hello world", {ex:"123"}, {obj:"abc"} )
        assertEquals( "a", event.categoryName )
        assertEquals( "DEBUG", event.level.toString() )
        assertEquals( "hello world", event.message )
        assertEquals( "123", event.exception.ex )
        assertEquals( "abc", event.logger.obj )
})