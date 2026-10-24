-- ServerScriptService
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local event = Instance.new("RemoteEvent")
event.Name = "KickPlayerEvent"
event.Parent = ReplicatedStorage

event.OnServerEvent:Connect(function(player, targetUserId)
    if typeof(targetUserId) ~= "number" then return end

    local target = Players:GetPlayerByUserId(targetUserId)
    if target and target ~= player then
        target:Kick("You were kicked.")
    end
end)