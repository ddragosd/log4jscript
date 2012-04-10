TestCase("LogTest", {
   testGetLoggerReturnsSameInstanceTwice: ->
    l = Log.getLogger("a")
    assertNotNull(l)
    l2 = Log.getLogger("a")
    assertNotNull(l2)
    assertSame(l, l2)
})