-- DEFAULT --
-- shift + h to disable/enable --
local current = 1
Citizen.CreateThread(function()
    while true do
	Citizen.Wait(0)
		local playerPed = GetPlayerPed(-1)
		local playerVeh = GetVehiclePedIsIn(playerPed, false)
		if IsControlJustPressed(1,74) and IsControlPressed(1, 21) then
			current = (current + 1) % 2
			if current == 0 then 
				DisplayRadar(true)
			elseif current == 1 then 
				DisplayRadar(false)
			end 
		elseif (GetPedInVehicleSeat(playerVeh, -1) == playerPed) then
			DisplayRadar(true)
		end
    end
end)