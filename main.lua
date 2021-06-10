local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()
local amount = fovamount
local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character.Humanoid

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

local gui = Instance.new("BillboardGui");
gui.Name = "";
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0);
local frame = Instance.new("Frame", gui);
frame.BackgroundColor3 = Color3.fromRGB(170, 0, 0);
frame.Size = UDim2.new(1, 0, 1, 0);
frame.BorderSizePixel = 4;
frame.BorderColor3 = Color3.fromRGB(0, 0, 0);
local gi = gui:Clone();
local body = frame:Clone();
body.Parent = gi;
body.BackgroundColor3 = Color3.fromRGB(0, 170, 170);

for _, v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Character and v.Character:FindFirstChild("Head") then
        gui:Clone().Parent = v.Character.Head;
    end
end

