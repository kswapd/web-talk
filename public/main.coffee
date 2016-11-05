React = require 'react'
ReactDOM = require 'react-dom'
ClientDownload = React.createFactory require './component_download'
require './bimbot-rich-personinfo.less'
require './my.css'
PersonInfo = React.createFactory require './bimbot-rich-personinfo'
{ a, div, noscript, img, span} = React.DOM

mainClass = React.createClass
  displayName: 'main'
  render: ->
    #React.DOM.div null, message
    div className: 'main', 'Im main',
      div className: 'sub1', 'Im sub1'
      div className: 'sub2', 'Im sub2'
      PersonInfo()
      ClientDownload
      	userId:'aa'
      	teamId:'teamgogo'


ExampleApplicationFactory = React.createFactory mainClass
ReactDOM.render ExampleApplicationFactory(), document.getElementById('example')
          
    
