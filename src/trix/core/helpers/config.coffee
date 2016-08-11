allAttributeNames = null
blockAttributeNames = null
textAttributeNames = null
listAttributeNames = null

Trix.extend

  getAllAttributeNames: ->
    allAttributeNames ?= Trix.getTextAttributeNames().concat Trix.getBlockAttributeNames()

  getBlockAttributes: ->
    Trix.config.blockAttributes

  getBlockAttributeNames: ->
    blockAttributeNames ?= Object.keys(Trix.config.blockAttributes)

  getTextAttributes: ->
    Trix.config.textAttributes

  getTextAttributeNames: ->
    textAttributeNames ?= Object.keys(Trix.config.textAttributes)

  getListAttributeNames: ->
    listAttributeNames ?= (listAttribute for key, {listAttribute} of Trix.config.blockAttributes when listAttribute?)