
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('joint', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('db_drugs:ondrugs', source)

end)


-- If you want to add new items  just copy this (below) and change 'joint' to your item name :)
    



-- ESX.RegisterUsableItem('joint', function(source)

-- 	local xPlayer = ESX.GetPlayerFromId(source)
-- 	TriggerClientEvent('db_drugs:ondrugs', source)

-- end)