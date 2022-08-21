-- Growtopia More Commands
-- Created by: NickCoder

-- Main
local function main(packet)
  local found = packet:find("action|input\n|text|")
  if found then
    local inputs = packet:sub(21, packet:len())
    if inputs:sub(1, 4) == "/pnb" then
      LogToConsole("TestConsole")
    end
  end
end

-- Hook
AddHook("onsendpacket", "commands", main)
