
isGuest = process.env.APP is 'guest'

appHost = 'localhost:7001'
appDomain = 'localhost'

module.exports =
  env: 'static'
  title:'Hi,web-talk app'
  appDomain: appDomain
  isGuest: isGuest
  version: require('../package.json').version
  apiHost: if isGuest then '/api' else '/v2'
  sockHost: 'http://' + appHost + '/snapper',
  inteUrl: 'http://account.project.ci',
  accountUrl: 'http://' + appHost + '/account',
  domainUrl: 'http://' + appDomain + ':8081',
  uploadUrl: 'http://7xjz6g.com1.z0.glb.clouddn.com/',
  cookieDomain: '.' + appDomain
  pdfStaticHost: 'http://dn-static.oss.aliyuncs.com/pdf-viewer/v0.3.0/index.html',
  loginUrl: 'http://' + appHost + '/account',
  logoutUrl: 'http://' + appHost + '/account',
  weiboLogin: "http://' + appHost + '/account/union/weibo?method=bind&next_url=#{encodeURIComponent 'http://' + appHost + '/v2/union/weibo/landing'}",
  firimLogin: "http://' + appHost + '/account/union/firim?method=bind&next_url=#{encodeURIComponent 'http://' + appHost + '/v2/union/firim/landing'}",
  githubLogin: "http://' + appHost + '/account/union/github?method=bind&service=talk&nologin=1&next_url=#{encodeURIComponent 'http://' + appHost + '/v2/union/github/landing'}",
  trelloLogin: "http://' + appHost + '/account/union/trello?method=bind&next_url=#{encodeURIComponent 'http://' + appHost + '/v2/union/trello/landing'}",
  teambitionLogin: "http://' + appHost + '/account/union/teambition?method=bind&next_url=#{encodeURIComponent 'http://' + appHost + '/v2/union/teambtion/landing'}",
  feedbackUrl: 'http://' + appHost + '/v2/services/webhook/4d76d92134e727620fce35d7d7c5b1c43921101e'
  windowOnErrorUrl: 'http://' + appHost + '/v2/services/webhook/14b30bc73f75044e7500721dee5e985e58049382'
  webpackDevPort: 8081,
  cdn: 'https://dn-st.b0.upaiyun.com'
  isMinified: no
  isProduction: no # whether to add NODE_ENV=production duration packing sss
  useAnalytics: no
  useCDN: no
  serverEnv: 'dev'
