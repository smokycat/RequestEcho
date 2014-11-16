http = require 'http'

http.createServer (req, res) ->
  if req.method is "GET"
    console.log "GET  #{req.url}"
  else if req.method is "POST"
    postBody = ""
    req.on "data", (data) -> postBody += data
    req.on "end", -> console.log "POST #{req.url} (#{postBody})"
  else
    console.log "#{req.method} #{req.url}"
  res.writeHead 200, {'Content-Type': 'text/html'}
  res.end '<html><body><form><input type="submit" name="arg" value="GET"></form><form method="POST"><input type="submit" name="arg" value="POST"></form></body></html>'
.listen 3000

console.log '------ server start ------'

process.on 'SIGINT', ->
  console.log '------ GOOD LUCK ------'
  process.exit 0
