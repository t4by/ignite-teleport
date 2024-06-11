-- Define your teleport coordinates
local teleportCoords = {
    police = vector4(425.1, -979.5, 30.7, 90.0), -- Example police coords
    ems = vector4(298.3, -584.7, 43.3, 0.0), -- Example EMS coords
    legion = vector4(215.8, -810.2, 30.7, 0.0), -- Example Legion coords
    paleto = vector4(-449.7, 6012.9, 31.7, 45.0) -- Example Paleto coords
}

-- Function to teleport player
local function teleportPlayer(source, coords)
    local playerPed = GetPlayerPed(source)
    if playerPed then
        SetEntityCoords(playerPed, coords.x, coords.y, coords.z, false, false, false, true)
        SetEntityHeading(playerPed, coords.w)
        TriggerClientEvent('QBCore:Notify', source, 'Teleported successfully!', 'success')
    end
end

-- Command registration function
local function registerTeleportCommand(command, coordsKey)
    QBCore.Commands.Add(command, 'Teleport to ' .. command .. ' location', {}, false, function(source, args)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.PlayerData.group == 'admin' then
            teleportPlayer(source, teleportCoords[coordsKey])
        else
            TriggerClientEvent('QBCore:Notify', source, 'You do not have permission to use this command!', 'error')
        end
    end, 'admin')
end

-- Register each command
registerTeleportCommand('police', 'police')
registerTeleportCommand('ems', 'ems')
registerTeleportCommand('legion', 'legion')
registerTeleportCommand('paleto', 'paleto')
