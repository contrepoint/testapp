App.board = App.cable.subscriptions.create "BoardChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log(data)
    # alert("derp")
    # debugger
    $(".board").replaceWith(data.template)
  mark: ->
    @perform 'mark'
