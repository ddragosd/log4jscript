namespace "Log4J.layout"

###
   SimpleLayout consists of the level of the log statement,
   followed by " - " and then the log message itself. For example,

   <pre>
           DEBUG - Hello world
   </pre>
 ###
class Log4J.layout.SimpleLayout extends Log4J.layout.AbstractLayout
    format: (loggingEvent) ->
        return "#{loggingEvent.level.toString()} - #{loggingEvent.message}"