TestCase("LevelTest", {
    testDEBUGInitialization: ->
        debugLevel = Log4J.Level.DEBUG
        assertNotNull( debugLevel )
        assertEquals( "DEBUG", debugLevel.toString() )
        assertEquals( 10000, debugLevel.valueOf() )
    testINFOInitialization: ->
        level = Log4J.Level.INFO
        assertNotNull( level )
        assertEquals( "INFO", level.toString() )
        assertEquals( 20000, level.valueOf() )
    testWARNInitialization: ->
        level = Log4J.Level.WARN
        assertNotNull( level )
        assertEquals( "WARN", level.toString() )
        assertEquals( 30000, level.valueOf() )
    testERRORInitialization: ->
        level = Log4J.Level.ERROR
        assertNotNull( level )
        assertEquals( "ERROR", level.toString() )
        assertEquals( 40000, level.valueOf() )
    testFATALInitialization: ->
        level = Log4J.Level.FATAL
        assertNotNull( level )
        assertEquals( "FATAL", level.toString() )
        assertEquals( 50000, level.valueOf() )

})