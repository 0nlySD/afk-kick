
secondsUntilKick = 120  -- AFK Kick Time Limit (in seconds)

kickWarning = true
Citizen.CreateThread(function()
while true do
Wait(1000)
playerPed = GetPlayerPed(-1)
if playerPed then
currentPos = GetEntityCoords(playerPed, true)
if currentPos == prevPos then
if time > 0 then
if kickWarning and time == math.ceil(secondsUntilKick / 4) then
TriggerEvent("chatMessage", "WARNING:", {255, 0, 0}, "^1you will be kicked between " .. time .. " seconds, MOVE!")
end
time = time - 1
else
TriggerServerEvent("OnlySD_kick")
end
else
time = secondsUntilKick
end
prevPos = currentPos
end
end
end)