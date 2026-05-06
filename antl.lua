---// If you're here because the script didn't let you in for some reason it's most likely because of your executor.

local IsMobile = game:GetService("UserInputService"):GetPlatform() == Enum.Platform.Android or game:GetService("UserInputService"):GetPlatform() == Enum.Platform.IOS

--[[
if IsMobile then
    game.StarterGui:SetCore("SendNotification", {Title = "JewHack",Text = "The script does not currently support mobile!",Duration = 15,})
    return
end
]]

--if not IsMobile then
    if not game:IsLoaded() then game.Loaded:Wait() end

    if getgenv().JewHackLoaded then
        if getgenv().JewHackUiLoaded and _G.JH_Library then
            pcall(function()
                local libr = _G.JH_Library
                libr:Notify({Title = "CHEAT NAZZY",Description = "CHEAT NAZZY is already loaded!\nIf you changed any getgenvs for the toggles, you'll need to turn them off and back on.",Time = 10,})
            end)
        else
            game.StarterGui:SetCore("SendNotification", {Title = "CHEAT NAZZY",Text = "CHEAT NAZZY is already loaded!\nIf you changed any getgenvs for toggles you will need to disable and reenable.",Duration = 10})
        end
        return
    end

    if game.PlaceId == 2534724415 then
        loadstring(game:HttpGet("https://api.getpolsec.com/scripts/hosted/761861431219c40d4ef16c16ca53f8468a751f3a947fc0e69f0d76a33adead30.lua"))()
    else
        game.StarterGui:SetCore("SendNotification",{Title = "CHEAT NAZZY",Text = "NAZZY CHEAT",Duration = 10,})
    end
    --// for mentally challenged people who don't know shit: this just opens the discord invite in your discord, nothing malicious, go check yourself or ask some ai
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CheatSphere/JewHack/refs/heads/main/other/discordinviter.lua"))()
--end

--\\
---\\
