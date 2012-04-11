# Log4JScript : Log4J port to Javascript

Not that there aren't already a few ports of Log4J in Javascript as per this [Wiki](http://en.wikipedia.org/wiki/Log4j) but the ones that I found have a low activity and no implementation is using browser's console.
I found implementations with custom console windows, multiple color, rich capabilities to search through the logs ... pretty much what browsers are doing already nowdays through their own Console.

Because I wanted something very light and simple, I've created yet another port of Log4J in Javascript.

And because we live in modern times, I've choosen a modern language to do my job and that is: [CoffeeScript](http://coffeescript.org)

## Using Log4JScript

    var log = Log.getLogger("myApp")
    log.setLevel( log.Level.DEBUG )
    log.addAppender( new log.appender.ConsoleAppender( new log.layout.MessageLayout() ) )

    log.debug("Hello World !")
    log.warn("Save the planet !")
    log.error("Use an electric car.")
    


## Loggers, Appenders, and Layouts

There are 3 main components of Log4JScript, the same as the ones in Log4J: `loggers`, `appenders`, `layouts`.

The `Logger` class is the one which you'll be using to ... log the information, ofcourse.
Loggers can be assigned logging levels:

* `log.Level.DEBUG`
* `log.Level.INFO`
* `log.Level.WARN`
* `log.Level.ERROR`
* `log.Level.FATAL`

The `Appender` is an output destination. Log4JScript implements 2 Appenders:

* `log.appender.ConsoleAppender` - writing the ouput into Browser's Console. Basically it's calling `window.console.log() / info() / debug() / warn()`
* `log.appender.AjaxAppender` - sending to a given endpoint a formData with the follosing properties: `formatterLogMessage`, `categoryName`, `level`, `message`, `exception`.

The `Layout` it responsible to create a log line from a given log message. 

There are 2 layout classes implemented at the moment, and you can also add your own:

* `SimpleLayout` - writing lines like `DEBUG - Hello World!`
* `MessageLayout` - writing only the message itself `Hello World!`

## Links and resources

* [Log4J Manual](http://logging.apache.org/log4j/1.2/manual.html)



