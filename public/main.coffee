React = require 'react'
ReactDOM = require 'react-dom'
#download = require './component_download'
ClientDownload = React.createFactory require './component_download'
{ a, div, noscript, img, span} = React.DOM

mainClass = React.createClass
  displayName: 'client-download'
  render: ->
    #React.DOM.div null, message
    div className: 'main', 'Im main',
      div className: 'sub1', 'Im sub1'
      div className: 'sub2', 'Im sub2'
      ClientDownload
        teamId: '124'
        userId: '255'

ExampleApplicationFactory = React.createFactory mainClass
ReactDOM.render ExampleApplicationFactory(), document.getElementById('example')
          
    