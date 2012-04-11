TestCase("LevelTest", {
    testDEBUGInitialization: ->
        debugLevel = log.impl.Level.DEBUG
        assertNotNull( debugLevel )
        assertEquals( "DEBUG", debugLevel.toString() )
        assertEquals( 10000, debugLevel.valueOf() )
    testINFOInitialization: ->
        level = log.impl.Level.INFO
        assertNotNull( level )
        assertEquals( "INFO", level.toString() )
        assertEquals( 20000, level.valueOf() )
    testWARNInitialization: ->
        level = log.impl.Level.WARN
        assertNotNull( level )
        assertEquals( "WARN", level.toString() )
        assertEquals( 30000, level.valueOf() )
    testERRORInitialization: ->
        level = log.impl.Level.ERROR
        assertNotNull( level )
        assertEquals( "ERROR", level.toString() )
        assertEquals( 40000, level.valueOf() )
    testFATALInitialization: ->
        level = log.impl.Level.FATAL
        assertNotNull( level )
        assertEquals( "FATAL", level.toString() )
        assertEquals( 50000, level.valueOf() )

})