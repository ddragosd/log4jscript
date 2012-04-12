TestCase("LoggerTest", {
    log : null
    bufferedAppender: {
        events: []
        doAppend: ( loggingEvent) ->
            @events.push( loggingEvent )
    }

    setUp: ->
        @log = new Log4J.impl.Logger( "a" )
        @log.addAppender( @bufferedAppender )

    testInitialization: ->
        assertNotNull( @log.appenders )
        assertEquals( "a" , @log.name )

    testAddAppenderTwice: ->
        @log.setAppenders([])
        assertEquals(0, @log.appenders.length )
        appender = new Log4J.appender.ConsoleAppender()
        @log.addAppender( appender )
        assertEquals("appender should have been added", 1, @log.appenders.length )
        @log.addAppender( appender )
        assertEquals("same appender shouldn't be duplicated", 1, @log.appenders.length )

    testSetAppenders: ->
        appenders = [new Log4J.appender.ConsoleAppender()]
        @log.setAppenders([])
        assertEquals(0, @log.appenders.length )
        @log.setAppenders( appenders )
        assertEquals(1, @log.appenders.length )


    testDEBUG: ->
        @log.setLevel( Log4J.Level.DEBUG )
        assertTrue( @log.isDebugEnabled() )
        assertTrue( @log.isInfoEnabled() )
        assertTrue( @log.isWarnEnabled() )
        assertTrue( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )

        @bufferedAppender.events = []
        @log.debug( "debug msg")
        assertEquals( 1, @bufferedAppender.events.length )
        assertEquals( "debug msg", @bufferedAppender.events[0].message )

    testINFO: ->
        @log.setLevel( Log4J.Level.INFO )
        assertFalse( @log.isDebugEnabled() )
        assertTrue( @log.isInfoEnabled() )
        assertTrue( @log.isWarnEnabled() )
        assertTrue( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )

    testWARN: ->
        @log.setLevel( Log4J.Level.WARN )
        assertFalse( @log.isDebugEnabled() )
        assertFalse( @log.isInfoEnabled() )
        assertTrue( @log.isWarnEnabled() )
        assertTrue( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )

    testERROR: ->
        @log.setLevel( Log4J.Level.ERROR )
        assertFalse( @log.isDebugEnabled() )
        assertFalse( @log.isInfoEnabled() )
        assertFalse( @log.isWarnEnabled() )
        assertTrue( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )

    testFATAL: ->
        @log.setLevel( Log4J.Level.FATAL )
        assertFalse( @log.isDebugEnabled() )
        assertFalse( @log.isInfoEnabled() )
        assertFalse( @log.isWarnEnabled() )
        assertFalse( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )
})