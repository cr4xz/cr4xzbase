local rob = false
local robbers = {}
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

function SendWebhookMessage(webhook,message)
	webhook = "https://discord.com/api/webhooks/789176060734079016/6a-XOiV8mGUWGMH7ytp6SN-d6dZUNn2U_wMNQisAkhnz2XantAeI8kXcpdBrIwCsxeOo"
	if webhook ~= "none" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end

RegisterServerEvent('esx-br-rob-humane:toofar')
AddEventHandler('esx-br-rob-humane:toofar', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_cancelled_at') .. Banks[robb].nameofbank)
			TriggerClientEvent('esx-br-rob-humane:killblip', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('esx-br-rob-humane:toofarlocal', source)
		robbers[source] = nil
		TriggerClientEvent('esx:showNotification', source, _U('robbery_has_cancelled') .. Banks[robb].nameofbank)
		local chor = GetPlayerName(source)
		SendWebhookMessage(webhook,"```css\nHumane robbery has been cancelled. \nRobber Name : " ..chor.. " \nRobber Id   : " ..source.." ```")
		TriggerClientEvent("esx_custommessagehumanebreak",-1)

	end
end)

RegisterServerEvent('esx-br-rob-humane:rob')
AddEventHandler('esx-br-rob-humane:rob', function(robb)

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local pendrive = xPlayer.getInventoryItem('pendrive')
	local xPlayers = ESX.GetPlayers()
	
	if Banks[robb] then

		local bank = Banks[robb]

		if (os.time() - bank.lastrobbed) < 60 and bank.lastrobbed ~= 0 then

			TriggerClientEvent('esx:showNotification', source, _U('already_robbed') .. (30400 - (os.time() - bank.lastrobbed)) .. _U('seconds'))
			return
		end


		local cops = 0
		for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
				cops = cops + 1
			end
		end


		if rob == false then
		   
		  if xPlayer.getInventoryItem('pendrive').count >= 1 then
		     xPlayer.removeInventoryItem('pendrive', 1)

			if(cops >= Config.NumberOfCopsRequired)then

				rob = true
				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
					if xPlayer.job.name == 'police' then
							TriggerClientEvent('esx:showNotification', xPlayers[i], _U('rob_in_prog') .. bank.nameofbank)
							TriggerClientEvent('esx-br-rob-humane:setblip', xPlayers[i], Banks[robb].position)
					end
				end

				local chor = GetPlayerName(source)
				TriggerClientEvent("esx_custommessagehumane",-1)
				SendWebhookMessage(webhook,"```css\nHumane robbery has been triggered. \nRobber Name : " ..chor.. " \nRobber Id   : " ..source.." ```")
				TriggerClientEvent('esx:showNotification', source, _U('started_to_rob') .. bank.nameofbank .. _U('do_not_move'))
				TriggerClientEvent('esx:showNotification', source, _U('alarm_triggered'))
				TriggerClientEvent('esx:showNotification', source, _U('hold_pos'))
				TriggerClientEvent('esx_borrmaskin_yacht:startpendrive', source)
				TriggerClientEvent('esx-br-rob-humane:currentlyrobbing', source, robb)
				Banks[robb].lastrobbed = os.time()
				robbers[source] = robb
				local savedSource = source
				SetTimeout(500000, function()

					if(robbers[savedSource])then

						rob = false
						TriggerClientEvent('esx-br-rob-humane:robberycomplete', savedSource, job)
						if(xPlayer)then

							xPlayer.addAccountMoney('black_money', bank.reward)
							local xPlayers = ESX.GetPlayers()
							for i=1, #xPlayers, 1 do
								local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
								if xPlayer.job.name == 'police' then
										TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_complete_at') .. bank.nameofbank)
										TriggerClientEvent('esx-br-rob-humane:killblip', xPlayers[i])
								end
							end
						end
					end
				end)
			else
				TriggerClientEvent('esx:showNotification', source, _U('min_two_police') .. Config.NumberOfCopsRequired)
			end
		end
		else
			TriggerClientEvent('esx:showNotification', source, _U('robbery_already'))
		end
	end
end)