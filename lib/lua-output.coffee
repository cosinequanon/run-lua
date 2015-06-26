{ScrollView} = require 'atom-space-pen-views'

module.exports =
class LuaOutput extends ScrollView

  constructor: (serializedState) ->
    # # Create root element
    # @element = document.createElement('div')
    # @element.classList.add('run-lua')
    #
    # # Create message element
    # message = document.createElement('div')
    # message.textContent = "The RunLua package is Alive! It's ALIVE!"
    # message.classList.add('message')
    # @element.appendChild(message)
    log 'createLuaOutput'
    @element = document.createElement('div')
    @element.classList.add('luaOutput')
    if serializedState.text
      setContent(serializedState.text)

  @content: ->
    @element

  setContent: (text) ->
    @element.textContent = text;
    @output = serializedState.text

  serialize: ->


  # Tear down any state and detach
  destroy: ->
