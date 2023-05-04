local http = require("http")

local function onRequest(req, res)
  local body = "Hello world\n"
  res:setHeader("Content-Type", "text/plain")
  res:setHeader("Content-Length", #body)
  res:finish(body)
end

return require('luvit')(function()
	http.createServer(onRequest):listen(8080)
	print("Server listening at http://localhost:8080/")
    end)
