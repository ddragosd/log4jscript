namespace "log.layout"

###
   MessageLayout consists of the log message itself. For example,

   <pre>
           Hello world
   </pre>
 ###
class log.layout.MessageLayout extends log.layout.AbstractLayout
    format: (loggingEvent) ->
        return "#{loggingEvent.message}"