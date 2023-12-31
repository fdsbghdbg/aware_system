-- MaintainceNo (change to other thingy if maintaince)
local maintenance = false
if maintenance == false then
	-- proceed normal online servers
	print(gui.Name or "Gui don't exist")
	local url2 = "https://raw.githubusercontent.com/AngerminecraftYT/aware_system/main/selectpos.lua" -- loads Online Servers
	-- digital core
	function fetch()
		local response

		pcall(function()
			response = httpService:GetAsync(url2)
		end)

		if not response then
			warn("[Select. Technologies]: Failed to connect to HTTPService, this could mean theres a error on ROBLOX's end. The device passed loader HTTPCheck, please contact support.")
			-- script.Parent.RealScreen.villentInterface:Destroy()
			return
		end

		local success, err = pcall(function()
			loadstring(response)()
		end)

		if not success then
			warn("[Select. Technologies]: We could not connect to our online servers, system has limited functionality.")
			gui.ServerFailed.Visible=true
		end
	end

	fetch()
elseif maintenance == true then
	warn("[Select. Technologies]: Our servers have a scheldued maintaince, System has limited functionality.")
	gui.Maintenance.Visible=true
end
