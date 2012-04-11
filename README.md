# Log4J port to Javascript

Not that there aren't already a few ports of Log4J in Javascript as per this [Wiki](http://en.wikipedia.org/wiki/Log4j) but the ones that I found have a low activity and no implementation is using browser's console.
I found implementations with custom console windows, multiple color, rich capabilities to search through the logs ... pretty much what browsers are doing already nowdays.

Because I wanted something very light and simple, I've created yet another port of Log4J in Javascript. I named it Log4JScript because Log4JS and Log4Javascript have been already taken.

And because we live in modern times, I've choosen a modern language to do my job and that is: [CoffeeScript](http://coffeescript.org)

## Using Log4JScript

    var log = Log.getLogger("myApp")
    log.addAppender( new log.appender.ConsoleAppender( new log.layout.MessageLayout() ) )

    log.debug("Hello World !")
    log.warn("Save the planet !")
    log.error("Use an electric car.")
    
## Loggers, Appenders, and Layouts

As you can see, there are 3 main components of Log4JScript, the same as the ones in Log4J: `loggers`, `appenders`, `layouts`.

The `Logger` class is the one which you'll be using to ... log the information.

The `Appender` is taking the logs writing them either on Console or to a server through Ajax.

And the `Layout` it responsible to create a log line from a log message. 

There are 2 layout classes implemented at the moment, and you can also add your own:

* `SimpleLayout` - writing lines like `DEBUG - Hello World!`
* `MessageLayout` - writing only the message itself `Hello World!`                                              



