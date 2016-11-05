React = require 'react'
{
div,
span,
img
} = React.DOM
T = React.PropTypes
module.exports=React.createClass
  displayName:"bimbot-rich-personinfo"
  getGroup:->
    [
      {title:"基本信息",members:[{label:"aa",value:"bb"},{label:"aa",value:"bb"},{label:"aa",value:"bb"}]},
      {title:"高级信息",members:[{label:"aa",value:"bb"},{label:"aa",value:"bb"},{label:"aa",value:"bb"}]},
      {title:"地址相关",members:[{label:"aa",value:"bb"},{label:"aa",value:"bb"},{label:"aa",value:"bb"}]},
      {title:"其它",members:[{label:"aa",value:"bb"},{label:"aa",value:"bb"},{label:"aa",value:"bb"}]}
    ]
  render:->
    div className:"rich-person",
      div className:"rich-person-logo"

      div className:"rich-person-header",
        div className:"row",
          div className:"td",
            div className:"rich-person-avator",
              img src:"http://img3.imgtn.bdimg.com/it/u=629947168,1204812719&fm=21&gp=0.jpg"
          div className:"td",
            div className:"td",
              "Andy"
      @getGroup().map (items)->
        div className:"",
          div className:"p bg-ccc",
            items.title
          items.members.map (member)->
            div className:"p",
              span ,
                "#{member.label}:"
              span,
                member.value
      img src:"http://img0.imgtn.bdimg.com/it/u=2437200883,1926933837&fm=11&gp=0.jpg"
