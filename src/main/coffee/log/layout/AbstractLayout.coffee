namespace "Log4J.layout"

class Log4J.layout.AbstractLayout
    format: (loggingEvent) ->
        throw new Error("please implement the format method in the superclass" )