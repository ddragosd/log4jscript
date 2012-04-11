# Log4J port to Javascript

Not that there aren't already a few ports of Log4J in Javascript as per this [Wiki](http://en.wikipedia.org/wiki/Log4j) but the ones that I found have a low activity and no implementation is using browser's console.
I found implementations with custom console windows, multiple color, rich capabilities to search through the logs ... pretty much what browsers are doing already nowdays.

Because I wanted something very light and simple, I've created yet another port of Log4J in Javascript. I named it Log4JScript because Log4JS and Log4Javascript have been already taken.

And because we live in modern times, I've choosen a modern language to do my job and that is: [CoffeeScript](http://coffeescript.org)

## Using Log4JScript

`
var log, appender, layout;

log = Log.getLogger("myApp")
log.addAppender( new log.appender.ConsoleAppender( new log.layout.MessageLayout() ) )

log.debug("Hello World !")
log.warn("Save the planet !")
log.error("Use an electric car.")
`



