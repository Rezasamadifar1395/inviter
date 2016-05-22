do
local function run(msg, matches)
local bot_id = our_id 
local fbot1 = 146393436
    if msg.action.type == "channel_del_user" and msg.action.user.id == tonumber(fbot1) then
       chat_add_user("channel#id"..msg.to.id, 'user#id'..fbot1, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^!!tgservice (.+)$",
  },
  run = run
}
end
