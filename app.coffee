express = require 'express'
app = express()
port = 8888
app.use express.static("#{__dirname}/public");
app.get '/get.act', (req, res) ->
  res.send 'Got a get action'

app.get '/test_get_form', (req, res) ->
   response =
       name:req.query.name,
       age:req.query.age
   console.log(response);
   res.end(JSON.stringify(response));


app.listen port
cube = (x) -> x * x * x




console.log "coffee web listening at port #{port}"

