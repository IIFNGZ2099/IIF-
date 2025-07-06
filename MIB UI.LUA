    repeat
        task.wait()
    until game:IsLoaded()
    local TweenService = game:GetService("TweenService")
local LocalizationService = game:GetService("LocalizationService")
local LocalizationService = game:GetService("LocalizationService")
local player = game.Players.LocalPlayer

local result, code = pcall(function()
	return LocalizationService:GetCountryRegionForPlayerAsync(player)
end)   
local ScreenGui = Instance.new("ScreenGui")
local MAIN = Instance.new("Frame")
local LOGO = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local BAR = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TITLE = Instance.new("TextLabel")
local LOADING = Instance.new("TextLabel")
local WindowStroke = Instance.new("UIStroke")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MAIN.Name = "MAIN"
MAIN.Parent = ScreenGui
MAIN.BackgroundColor3 = Color3.fromRGB(4, 4, 4)
MAIN.AnchorPoint = Vector2.new(0.5,0.5)
MAIN.Position = UDim2.new(0.5, 0, 0.5, 0)
MAIN.Size = UDim2.new(0, 357, 0, 158)

WindowStroke.Name = "WindowStroke"
WindowStroke.Parent = MAIN
WindowStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
WindowStroke.Color = Color3.fromRGB(255,255,255)
WindowStroke.LineJoinMode = Enum.LineJoinMode.Round
WindowStroke.Thickness = 2
WindowStroke.Transparency = 0
WindowStroke.Enabled = true
WindowStroke.Archivable = true

LOGO.Name = "LOGO"
LOGO.Parent = MAIN
LOGO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LOGO.BackgroundTransparency = 1.000
LOGO.Position = UDim2.new(-0.0323287919, 0, -0.079336822, 0)
LOGO.Size = UDim2.new(0, 162, 0, 160)
LOGO.Image = "rbxassetid:/131231007815032"--11354741327

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = MAIN

BAR.Name = "BAR"
BAR.Parent = MAIN
BAR.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BAR.BorderSizePixel = 0
BAR.Position = UDim2.new(0.106, 0,0.835, 0)
BAR.Size = UDim2.new(0, 0, 0, 15)

UICorner_2.Parent = BAR

TITLE.Name = "TITLE"
TITLE.Parent = MAIN
TITLE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TITLE.BackgroundTransparency = 1.000
TITLE.Position = UDim2.new(0.403277725, 0, 0.0506329127, 0)
TITLE.Size = UDim2.new(0, 169, 0, 44)
TITLE.Font = Enum.Font.Highway
TITLE.Text = "IIF加载中..."
TITLE.TextColor3 = Color3.fromRGB(0, 0, 255)
TITLE.TextScaled = true
TITLE.TextSize = 14.000
TITLE.TextWrapped = true

LOADING.Name = "LOADING"
LOADING.Parent = MAIN
LOADING.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LOADING.BackgroundTransparency = 1.000
LOADING.Position = UDim2.new(0.378, 0,0.43, 0)
LOADING.Size = UDim2.new(0, 169, 0, 44)
LOADING.Font = Enum.Font.SourceSansItalic
LOADING.Text = "加载中…"
LOADING.TextColor3 = Color3.fromRGB(0, 0, 255)
LOADING.TextSize = 20.000
LOADING.TextWrapped = true
wait(1)
LOADING.Text = "获取数据..."
BAR:TweenSize(UDim2.new(0, 150,0, 15), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
wait(1)
LOADING.Text = "你好 " ..game.Players.LocalPlayer.DisplayName.. " ，来自: ".. code
BAR:TweenSize(UDim2.new(0, 200,0, 15), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
wait(1)
LOADING.Text = "检查游戏..."
BAR:TweenSize(UDim2.new(0, 250,0, 15), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
wait(1)
LOADING.Text = "欢迎使用IIF脚本"
BAR:TweenSize(UDim2.new(0, 260,0, 15), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
wait(1)
LOADING.Text = "谢谢使用"
BAR:TweenSize(UDim2.new(0, 285,0, 15), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
wait(1)
MAIN:TweenSize(UDim2.new(0,0,0,5),"Out","Quad",1,true)
LOGO:Destroy()
TITLE:Destroy()
LOADING:Destroy()
BAR:Destroy()
wait(1)
MAIN:Destroy()