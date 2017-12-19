whitelist = {
	"steam:1100001179cfc1e",
	"steam:1100001076cb1d8",
	"steam:110000107ed5033",
	"steam:11000010aa3bfab",
	"steam:110000101cb2561",
	"steam:110000110efa0a6",
	"steam:1100001060d09a2",
	"steam:11000010c5efd49",
	"steam:110000107246338",
	"steam:110000103332c36",
	"steam:110000110efa0a6",
	"steam:1100001060d09a2",
	"steam:110000107fbe602",
	"steam:11000011780cfc4",
	"steam:110000107c6163a",
	"steam:11000011b7ae8ba",
	"steam:11000011d1f945c",
	"steam:110000107fbe602",
	"steam:1100001043559fd",
	"steam:110000104e7838e",
	"steam:11000010eb9286f",
	"steam:110000110850708",
	"steam:11000010968cfe1",
	"steam:11000010fc03258"
	




}
RegisterServerEvent('white')
AddEventHandler('white', function()
	local numIds = GetPlayerIdentifiers(source)
	for i,admin in ipairs(whitelist) do
		for i,theId in ipairs(numIds) do
			if admin == theId then -- is the player an admin?
				TriggerClientEvent("checkwhitelist", source, "gg")
				print('the player is an admin,player blips will be displayed')
			end
		end
	end
end)