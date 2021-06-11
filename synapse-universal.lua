local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()
local amount = fovamount
local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character.Humanoid
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local myPlayer = game.Players.LocalPlayer
local myChar = myPlayer.Character
local myHRP = myChar:WaitForChild("HumanoidRootPart")
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(false)
local espMode = false


local bp = Instance.new("BodyPosition", myHRP)
bp.MaxForce = Vector3.new()
bp.D = 10
bp.P = 10000
local bg = Instance.new("BodyGyro", myHRP)
bg.MaxTorque = Vector3.new()
bg.D = 10
local flying = false 
local rs = game:GetService("RunService") 
local camera = game.Workspace.CurrentCamera
local speed = 0.5 



noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)


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

ss:Slider("JumpHeight",0,100,50,function(height)
humanoid.JumpPower = height
end)


ss:Toggle("Fly",function(t)
	if flying == true then
		bp.MaxForce = Vector3.new()
		bg.MaxTorque = Vector3.new()
		flying = false
	else
		flying = true
		bp.MaxForce = Vector3.new(400000,400000,400000)
		bg.MaxTorque = Vector3.new(400000,400000,400000)
		while flying do
			rs.RenderStepped:wait()
			bp.Position = myHRP.Position +((myHRP.Position - camera.CFrame.p).unit * speed)
			bg.CFrame = CFrame.new(camera.CFrame.p, myHRP.Position)
		end
	end
end)


ss:Button("Esp",function()
if espMode == false then
	espMode = true
	ESP:Toggle(true)
elseif espMode == true then
	espMode = false
	ESP:Toggle(false)
end)
end
