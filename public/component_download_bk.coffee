React = require 'react'
ReactDOM = require 'react-dom'
{ a, div, noscript, img, span} = React.DOM

downClass = React.createClass
  displayName: 'client-download'
  render: ->
    #React.DOM.div null, message
    div className: 'client-download', 'gogogo'

ExampleApplicationFactory = React.createFactory downClass
ReactDOM.render ExampleApplicationFactory(), document.getElementById('example')
          
        