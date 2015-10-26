local stats = ngx.shared.ngx_stats;
local keys = stats:get_keys()
local response = {}

for k,v in pairs(keys) do
    response = common.format_response(v, stats:get(v), response)
end

ngx.say(json.encode(response))
