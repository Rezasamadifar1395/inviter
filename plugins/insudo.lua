do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user =  256278811

  if matches[1] == "insudo" then
    user = 'user#id'..user
  end

  — The message must come from a chat group
  if msg.to.type == 'chat' then
    local chat = 'channel#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "inviting sudo......"
  else 
    return 'This isnt a chat group!'
  end

end

return {
  description = "insudo", 
  usage = {
    "!insudo"
  patterns = {
    "^[!/](insudo)$"
  }, 
  run = run 
}

end
