React = require 'react'
ReactDOM = require 'react-dom'
{ a, div, noscript, img, span} = React.DOM
T = React.PropTypes
module.exports = React.createClass
  displayName: 'client-download'
  propTypes:
    teamId: T.string.isRequired
    userId: T.string.isRequired
  render: ->
    #React.DOM.div null, message
    div className: 'client-download', "ccomponent class #{@props.teamId}"