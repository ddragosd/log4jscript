namespace "log.layout"

###
   SimpleLayout consists of the level of the log statement,
   followed by " - " and then the log message itself. For example,

   <pre>
           DEBUG - Hello world
   </pre>
 ###
class log.layout.SimpleLayout extends log.layout.AbstractLayout
    format: (loggingEvent) ->
        return "#{loggingEvent.level.toString()} - #{loggingEvent.message}"