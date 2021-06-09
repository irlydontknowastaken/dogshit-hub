local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()
local amount = fovamount

noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)




plr = game.Players.LocalPlayer
game.StarterGui:SetCore("SendNotification", {
Title = "Loaded";
Text = "why r u using this";
Duration = "10";
})


game.StarterGui:SetCore("SendNotification", {
Title = "Moving Gui";
Text = "Go into the pause menu to move the gui without glitching";
Duration = "10";
})

local s = VLib:Window("DOGSHIT HUB", "General", "G")

local ss = s:Tab("General")

ss:Button("no",function()
game.StarterGui:SetCore("SendNotification", {
Title = "Why";
Text = "no";
Duration = "10";
})
end)


ss:Toggle("NoClip",function(t)
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end)


ss:Slider("WalkSpeed",0,100,16,function(t)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
end)



ss:Slider("FOV",0,120,70,function(amount)
game:GetService'Workspace'.Camera.FieldOfView = amount
end)
