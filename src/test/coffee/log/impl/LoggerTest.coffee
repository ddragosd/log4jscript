TestCase("LoggerTest", {
    log : null
    setUp: ->
        @log = new log.impl.Logger( "a" )

    testDEBUG: ->
        @log.setLevel( log.impl.Level.DEBUG )
        assertTrue( @log.isDebugEnabled() )
        assertTrue( @log.isInfoEnabled() )
        assertTrue( @log.isWarnEnabled() )
        assertTrue( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )

    testINFO: ->
        @log.setLevel( log.impl.Level.INFO )
        assertFalse( @log.isDebugEnabled() )
        assertTrue( @log.isInfoEnabled() )
        assertTrue( @log.isWarnEnabled() )
        assertTrue( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )

    testWARN: ->
        @log.setLevel( log.impl.Level.WARN )
        assertFalse( @log.isDebugEnabled() )
        assertFalse( @log.isInfoEnabled() )
        assertTrue( @log.isWarnEnabled() )
        assertTrue( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )

    testERROR: ->
        @log.setLevel( log.impl.Level.ERROR )
        assertFalse( @log.isDebugEnabled() )
        assertFalse( @log.isInfoEnabled() )
        assertFalse( @log.isWarnEnabled() )
        assertTrue( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )

    testFATAL: ->
        @log.setLevel( log.impl.Level.FATAL )
        assertFalse( @log.isDebugEnabled() )
        assertFalse( @log.isInfoEnabled() )
        assertFalse( @log.isWarnEnabled() )
        assertFalse( @log.isErrorEnabled() )
        assertTrue( @log.isFatalEnabled() )
})