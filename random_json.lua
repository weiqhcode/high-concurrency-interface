local cjson = require "cjson"

-- 创建一个随机生成的 JSON 数据
local data = {
    number = math.random(1, 100),
    message = "Hello, this is a random number"
}

-- 将 Lua 表转换为 JSON 字符串
ngx.header.content_type = 'application/json'
ngx.say(cjson.encode(data))
