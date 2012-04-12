TestCase("LoggerTest", {
    log : null

    setUp: ->
        @log = new log.impl.Logger( "a" )

    testInitialization: ->
        assertNotNull( @log.appenders )
        assertEquals( "a" , @log.name )

    testAddAppenderTwice: ->
        assertEquals(0, @log.appenders.length )
        appender = new log.appender.ConsoleAppender()
        @log.addAppender( appender )
        assertEquals("appender should have been added", 1, @log.appenders.length )
        @log.addAppender( appender )
        assertEquals("same appender shouldn't be duplicated", 1, @log.appenders.length )

    testSetAppenders: ->
        appenders = [new log.appender.ConsoleAppender()]
        @log.setAppenders([])
        assertEquals(0, @log.appenders.length )
        @log.setAppenders( appenders )
        assertEquals(1, @log.appenders.length )


    testDEBUG: ->
        @log.setLevel( log.Level.DEBUG )
        assertTrue( @log.isDebugEnabled() )
        assertTrue( @log.isInfoEnabled() )
        assertTrue( @log.isWarnEnabled() )
        assertTrue( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )


    testINFO: ->
        @log.setLevel( log.Level.INFO )
        assertFalse( @log.isDebugEnabled() )
        assertTrue( @log.isInfoEnabled() )
        assertTrue( @log.isWarnEnabled() )
        assertTrue( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )

    testWARN: ->
        @log.setLevel( log.Level.WARN )
        assertFalse( @log.isDebugEnabled() )
        assertFalse( @log.isInfoEnabled() )
        assertTrue( @log.isWarnEnabled() )
        assertTrue( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )

    testERROR: ->
        @log.setLevel( log.Level.ERROR )
        assertFalse( @log.isDebugEnabled() )
        assertFalse( @log.isInfoEnabled() )
        assertFalse( @log.isWarnEnabled() )
        assertTrue( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )

    testFATAL: ->
        @log.setLevel( log.Level.FATAL )
        assertFalse( @log.isDebugEnabled() )
        assertFalse( @log.isInfoEnabled() )
        assertFalse( @log.isWarnEnabled() )
        assertFalse( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )
})