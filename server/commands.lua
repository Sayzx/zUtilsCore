ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('es:addGroupCommand', zCore.Commands.announce, "admin", function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(source)
	local group = xPlayer.getGroup()
	local message = table.concat(args, " ")
	if group == 'admin' or group == 'superadmin' or group == 'mod' or group == 'owner' then
		-- send notify esx whith args 
		TriggerClientEvent('esx:showNotification', -1, message)
	else
		TriggerClientEvent('esx:showNotification', -1, zCore.Notification.NoPermission)
	end
end, {help = "Faire une annonce a l'ensemble du serveur", params = {{name = zCore.Commands.announce, help = "The message to announce"}}})