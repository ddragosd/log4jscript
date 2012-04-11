namespace "log.layout"

class log.layout.AbstractLayout
    format: (loggingEvent) ->
        throw new Error("please implement the format method in the superclass" )