
# Setup
Drop `db-drugeffects` into your `resources` folder.

Make sure you add `ensure db-drugeffects` into your server.cfg

# More Items
If you want to add more items copy this and paste into your `server.lua` file

<pre>
ESX.RegisterUsableItem('change_item_name_here', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('db_drugs:ondrugs', source)

end)

</pre>



# Contact / About me 

deBBuu#3317 

It's my first script :) 

