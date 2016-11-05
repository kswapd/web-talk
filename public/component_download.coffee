React = require 'react'
ReactDOM = require 'react-dom'
{ a, div, noscript, img, span} = React.DOM
T = React.PropTypes
module.exports = React.createClass
  displayName: 'download'
  propTypes:
    teamId: T.string.isRequired
    userId: T.string.isRequired
  getData: -> 
  	["id1", "id2"]
  render: ->
    #React.DOM.div null, message
    div className:"main",
	    div className: "download_div", "ccomponent class #{@props.teamId}"
	    div className:"",
	      @getData().map (items)->
	        div className: "div-#{items}", "#{items}"