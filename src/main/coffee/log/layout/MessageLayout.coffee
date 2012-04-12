namespace "Log4J.layout"

###
   MessageLayout consists of the log message itself. For example,

   <pre>
           Hello world
   </pre>
 ###
class Log4J.layout.MessageLayout extends Log4J.layout.AbstractLayout
    format: (loggingEvent) ->
        return "#{loggingEvent.message}"