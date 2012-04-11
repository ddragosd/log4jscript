TestCase("LogTest", {
   testGetLogger: ->
    l = Log.getLogger("a")
    assertInstanceOf( log.impl.Logger, l)

   testGetLoggerReturnsDifferentInstance: ->
    l = Log.getLogger("a")
    assertNotNull(l)
    l2 = Log.getLogger("B")
    assertNotNull(l2)
    assertNotSame(l, l2)

   testGetLoggerReturnsSameInstanceTwice: ->
    l = Log.getLogger("a")
    assertNotNull(l)
    l2 = Log.getLogger("a")
    assertNotNull(l2)
    assertSame(l, l2)
})