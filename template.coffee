fs = require 'fs'
stir = require 'stir-template'

#bundle = fs.readFileSync 'public/app.bundle.js'
{html, head, title, body, script, meta, link, div} = stir
style = stir.createFactory 'style'

module.exports = (config) ->

  stir.render stir.doctype(),
    html null,
      head null,
        title null, config.title
        meta charset: 'utf-8'
        meta 'http-equiv': 'X-UA-Compatible', content: 'IE=edge, chrome=1'
        meta name: 'referrer', content: 'origin-when-cross-origin'
        meta name: 'superfish', content: 'nofish'
        meta name: 'author', content: 'BIM'
        meta name: 'description', content: 'BIM是一个团队协作即时通讯工具, 拥有多种消息文本类型, 讨论组, 内容分享, 搜索, 文件整理以及一系列精彩的功能. 我们希望你的团队能通过BIM变得更有效率'
        meta name: 'keywords', content: '分享, 工作, 沟通, 讨论组, 即使通讯, 团队协作, 效率'
#        meta name: 'apple-itunes-app', content: 'app-id=922425179'
        meta property: 'og:description', content: 'BIM是一个团队协作即时通讯工具, 拥有多种消息文本类型, 讨论组, 内容分享, 搜索, 文件整理以及一系列精彩的功能. 我们希望你的团队能通过BIM变得更有效率'
        meta property: 'og:image', content: ''
        meta property: 'og:site_name', content: 'BIM'
        meta property: 'og:title', content: 'BIM | 此刻，爱上工作'
        meta property: 'og:type', content: 'website'
        meta property: 'og:url', content: 'https://bim.com'
      body null,
        div id:'example'
        div id:'example2'
        script src: 'app.bundle.js'
        #script crossorigin:"anonymous", src: 'app.bundle.js'
        #script null, bundle
        
