express = require 'express'
app = express()
port = 8888
app.use express.static("#{__dirname}/public");
app.get '/get.act', (req, res) ->
  res.send 'Got a get action'
app.listen port
cube = (x) -> x * x * x

console.log "coffee web listening at port #{port}"

