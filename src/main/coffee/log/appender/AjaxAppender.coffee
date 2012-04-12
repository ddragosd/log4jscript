namespace "Log4J.appender"

class Log4J.appender.AjaxAppender extends Log4J.appender.AbstractAppender
    endpoint: null
    constructor: ( layout, @endpoint ) ->
        super(layout)

    doAppend: ( loggingEvent ) ->
        msg = @layout.format(loggingEvent)
        xhr = @getXHR()
        xhr.open('POST', @endpoint, true);
        formData = new FormData()
        formData.append("formattedLogMessage", msg )
        formData.append("categoryName", loggingEvent.categoryName )
        formData.append("level", loggingEvent.level.toString() )
        formData.append("message", loggingEvent.message )
        formData.append("exception", loggingEvent.exception )
        request.send( formData )

    getXHR: ->
      xhr = null
      try
        xhr = new XMLHttpRequest()
      catch error
        xhr = new ActiveXObject('Microsoft.XMLHTTP');