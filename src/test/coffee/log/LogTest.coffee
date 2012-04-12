TestCase("LogTest", {
   testGetLogger: ->
    l = Log4J.Log.getLogger("a")
    assertInstanceOf( Log4J.impl.Logger, l)

   testGetLoggerReturnsDifferentInstance: ->
    l = Log4J.Log.getLogger("a")
    assertNotNull(l)
    l2 = Log4J.Log.getLogger("B")
    assertNotNull(l2)
    assertNotSame(l, l2)

   testGetLoggerReturnsSameInstanceTwice: ->
    l = Log4J.Log.getLogger("a")
    assertNotNull(l)
    l2 = Log4J.Log.getLogger("a")
    assertNotNull(l2)
    assertSame(l, l2)
})