local QBCore = exports['qb-core']:GetCoreObject()

-- Define your Coords
local locations = {
    police = vector4(425.1, -979.5, 30.7, 90.0), -- Police Station coordinates
    ems = vector4(295.8, -1446.9, 29.0, 49.5), -- EMS coordinates (example)
    paleto = vector4(-448.4, 6012.6, 31.7, 45.0), -- Paleto coordinates (example)
    legion = vector4(215.8, -810.1, 30.7, 70.0) -- Legion Square coordinates (example)
}

-- Function to teleport player
local function teleportPlayer(source, location)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        if QBCore.Functions.HasPermission(source, "admin") or QBCore.Functions.HasPermission(source, "mod") or QBCore.Functions.HasPermission(source, "god") then
            local coords = locations[location]
            local ped = GetPlayerPed(source)
            SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false, true)
            SetEntityHeading(ped, coords.w)
            TriggerClientEvent('QBCore:Notify', source, "Teleported successfully!", "success")
        else
            TriggerClientEvent('QBCore:Notify', source, "You don't have permission to use this command!", "error")
        end
    end
end

-- Register the /police command
QBCore.Commands.Add("police", "Teleport to the police station", {}, false, function(source, args)
    teleportPlayer(source, "police")
end)

-- Register the /ems command
QBCore.Commands.Add("ems", "Teleport to the EMS station", {}, false, function(source, args)
    teleportPlayer(source, "ems")
end)

-- Register the /paleto command
QBCore.Commands.Add("paleto", "Teleport to Paleto", {}, false, function(source, args)
    teleportPlayer(source, "paleto")
end)

-- Register the /legion command
QBCore.Commands.Add("legion", "Teleport to Legion Square", {}, false, function(source, args)
    teleportPlayer(source, "legion")
end)
