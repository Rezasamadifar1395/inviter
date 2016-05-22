do
    local function add_user(channel, user)
   local status = chat_add_user (channel, user, ok_cb, false)
   if not status then
   end
end
    local function run(msg, matches)
           if matches[1] == 'channel_del_user' then
                local user = 'channel#id'..msg.to.id 
                local channel = 'channel#id'..msg.from.id
                add_user("channel#id"..msg.to.id, "user#id"..msg.action.user.id)
               end
end

return {
    patterns = {
        "^!!tgservice (channel_del_user)$",
        },
    run = run
}
end
