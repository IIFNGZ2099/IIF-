local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "IIF v1.3脚本"; Text ="感谢大家使用IIF v1.3脚本"; Duration = 2; })
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/IIFNGZ2099/IIF-/refs/heads/main/IIF%E7%9A%84Ui%E6%BA%90%E7%A0%81(1).lua"))();  
local win = ui:new("IIF v1.3脚本中心")

local UITab1 = win:Tab("『信息』",'6031097229')

local about = UITab1:section("查看作者信息",true)

about:Label("IIF v1.3脚本中心")
about:Label("『IIF v1.3脚本作者』")
about:Button("点击复制作者的QQ号",function()
setclipboard("991829714")
end)
about:Label("风御QQ号")
about:Button("点击复制QQ号",function()
setclipboard("1926190957")
end)
about:Label("作者：我也觉得好巧")
about:Label("感谢大家游玩IIF脚本更感谢我的导师叉烧包")
about:Label("本脚本持续更新")
about:Label("感谢大家支持IIF脚本👍")
about:Label("已经更新了好几次了，可是还是没有什么人玩，能不能帮忙推荐一下呀")

local about = UITab1:section("查看玩家信息",true)

about:Label("你的账号年龄:"..player.AccountAge.."天")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    about:Button("关闭脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)
    
local UITab2 = win:Tab("『公告』",'6031097229')

local about = UITab2:section("『公告』",true)

about:Label("感谢所有支持IIF脚本的人")
about:Label("主脚本作者『我也觉得很巧』")
about:Label("副作者『叉烧包(风御 X』")     

local UITab1 = win:Tab("『通用』",'6031097229')

local about = UITab1:section("『通用』",true)

about:Button("飞行",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\90\66\122\99\84\109\49\102\34\41\41\40\41\10")()
end)

about:Button("玩家加入游戏提示",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
end)

about:Button("获得管理员权限",function()
loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))()
end)

about:Button("死亡笔记",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
end)

about:Button("汉化穿墙",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()
end)

about:Button("透视",function()  
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
        local function ApplyESP(v)
       if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
           v.Character.Humanoid.NameDisplayDistance = 9e9
           v.Character.Humanoid.NameOcclusion = "NoOcclusion"
           v.Character.Humanoid.HealthDisplayDistance = 9e9
           v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
           v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed
       end
    end
    for i,v in pairs(game.Players:GetPlayers()) do
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end
    
    game.Players.PlayerAdded:Connect(function(v)
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end)
    
        local Players = game:GetService("Players"):GetChildren()
    local RunService = game:GetService("RunService")
    local highlight = Instance.new("Highlight")
    highlight.Name = "Highlight"
    
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
        end
    end
    
    game.Players.PlayerAdded:Connect(function(player)
        repeat wait() until player.Character
        if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = player.Character
            highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.Name = "Highlight"
        end
    end)
    
    game.Players.PlayerRemoving:Connect(function(playerRemoved)
        playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
    end)
    
    RunService.Heartbeat:Connect(function()
        for i, v in pairs(Players) do
            repeat wait() until v.Character
            if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = v.Character
                highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlightClone.Name = "Highlight"
                task.wait()
            end
    end
    end)
    end)

about:Toggle("夜视","Toggle",false,function(Value)
if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end
end)

about:Toggle("自动互动", "Auto Interact", false, function(state)
        if state then
            autoInteract = true
            while autoInteract do
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        fireproximityprompt(descendant)
                    end
                end
                task.wait(0.25) -- Adjust the wait time as needed
            end
        else
            autoInteract = false
        end
    end)

about:Toggle("无限跳","Toggle",false,function(Value)
        Jump = Value
        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
    end)

about:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)

about:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)

about:Button("甩人",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
about:Slider('设置重力', 'Sliderflag', 196.2, 196.2, 1000,false, function(Value)
        game.Workspace.Gravity = Value
    end)
    
about:Button("替身",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
end)

about:Button("爬墙",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

about:Button("iw指令", function()
  loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

about:Button("工具挂",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()
end)

about:Button("甩飞",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/hknvh/main/%E7%94%A9%E9%A3%9E.txt"))()
end)

about:Button("铁拳",function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
end)

about:Toggle("ESP 显示名字", "AMG", ENABLED, function(enabled)
    if enabled then ENABLED = true for _, player in ipairs(Players:GetPlayers()) do onPlayerAdded(player) end Players.PlayerAdded:Connect(onPlayerAdded) Players.PlayerRemoving:Connect(onPlayerRemoving) local localPlayer = Players.LocalPlayer if localPlayer and localPlayer.Character then for _, player in ipairs(Players:GetPlayers()) do if player.Character then createNameLabel(player) end end end RunService.Heartbeat:Connect(function() if ENABLED then for _, player in ipairs(Players:GetPlayers()) do if player.Character then createNameLabel(player) end end end end) else ENABLED = false for _, player in ipairs(Players:GetPlayers()) do onPlayerRemoving(player) end RunService:UnbindFromRenderStep("move") end
end)

about:Toggle("Circle ESP", "ESP", false, function(state)
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                if state then
                    local highlight = Instance.new("Highlight")
                    highlight.Parent = player.Character
                    highlight.Adornee = player.Character

                    local billboard = Instance.new("BillboardGui")
                    billboard.Parent = player.Character
                    billboard.Adornee = player.Character
                    billboard.Size = UDim2.new(0, 100, 0, 100)
                    billboard.StudsOffset = Vector3.new(0, 3, 0)
                    billboard.AlwaysOnTop = true

                    local nameLabel = Instance.new("TextLabel")
                    nameLabel.Parent = billboard
                    nameLabel.Size = UDim2.new(1, 0, 1, 0)
                    nameLabel.BackgroundTransparency = 1
                    nameLabel.Text = player.Name
                    nameLabel.TextColor3 = Color3.new(1, 1, 1)
                    nameLabel.TextStrokeTransparency = 0.5
                    nameLabel.TextScaled = true

                    local circle = Instance.new("ImageLabel")
                    circle.Parent = billboard
                    circle.Size = UDim2.new(0, 50, 0, 50)
                    circle.Position = UDim2.new(0.5, 0, 0.5, 0) -- Center the circle
                    circle.AnchorPoint = Vector2.new(0.5, 0.5) -- Set the anchor point to the center
                    circle.BackgroundTransparency = 1
                    circle.Image = "rbxassetid://2200552246" -- Replace with your circle image asset ID
                else
                    if player.Character:FindFirstChildOfClass("Highlight") then
                        player.Character:FindFirstChildOfClass("Highlight"):Destroy()
                    end
                    if player.Character:FindFirstChildOfClass("BillboardGui") then
                        player.Character:FindFirstChildOfClass("BillboardGui"):Destroy()
                    end
                end
            end
        end
    end)

about:Button("透视1",function()
loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
end)

about:Button("透视2",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end)

about:Button("无敌『不适用』",function()
loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
end)

about:Button("隐身（E）",function()
loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
end)

about:Button("电脑键盘",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

about:Button("飞车",function()
loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()
end)

about:Button("踏空行走",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
end)

about:Button("飞车2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/vb/main/%E9%A3%9E%E8%BD%A6.lua"))()
end)

about:Button("旋转",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%97%8B%E8%BD%AC.lua"))()
end)

about:Button("紫莎",function()
game.Players.LocalPlayer.Character.Humanoid.Health=0
end)

about:Button("飞檐走壁",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

about:Button("夜视仪",function()
    _G.OnShop = trueloadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
end)

about:Button("正常范围",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
end)

about:Button("中等范围",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))()
end)

about:Button("高级范围",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
end)

about:Button("反挂机",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end)

local UITab1 = win:Tab("『情云同款可调节自瞄』",'6031097229')

local about = UITab1:section("『自瞄』",true)

about:Button("自瞄",function()
  local fov = 100 local smoothness = 10 local crosshairDistance = 5 local RunService = game:GetService("RunService") local UserInputService = game:GetService("UserInputService") local Players = game:GetService("Players") local Cam = game.Workspace.CurrentCamera local FOVring = Drawing.new("Circle") FOVring.Visible = true FOVring.Thickness = 2 FOVring.Color = Color3.fromRGB(0, 255, 0) FOVring.Filled = false FOVring.Radius = fov FOVring.Position = Cam.ViewportSize / 2 local Player = Players.LocalPlayer local PlayerGui = Player:WaitForChild("PlayerGui") local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "FovAdjustGui" ScreenGui.Parent = PlayerGui local Frame = Instance.new("Frame") Frame.Name = "MainFrame" Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BorderColor3 = Color3.fromRGB(128, 0, 128) Frame.BorderSizePixel = 2 Frame.Position = UDim2.new(0.3, 0, 0.3, 0) Frame.Size = UDim2.new(0.4, 0, 0.4, 0) Frame.Active = true Frame.Draggable = true Frame.Parent = ScreenGui local MinimizeButton = Instance.new("TextButton") MinimizeButton.Name = "MinimizeButton" MinimizeButton.Text = "-" MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255) MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0) MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0) MinimizeButton.Parent = Frame local isMinimized = false MinimizeButton.MouseButton1Click:Connect(function() isMinimized = not isMinimized if isMinimized then Frame:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "+" else Frame:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "-" end end) local FovLabel = Instance.new("TextLabel") FovLabel.Name = "FovLabel" FovLabel.Text = "自瞄范围" FovLabel.TextColor3 = Color3.fromRGB(255, 255, 255) FovLabel.BackgroundTransparency = 1 FovLabel.Position = UDim2.new(0.1, 0, 0.1, 0) FovLabel.Size = UDim2.new(0.8, 0, 0.2, 0) FovLabel.Parent = Frame local FovSlider = Instance.new("TextBox") FovSlider.Name = "FovSlider" FovSlider.Text = tostring(fov) FovSlider.TextColor3 = Color3.fromRGB(255, 255, 255) FovSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) FovSlider.Position = UDim2.new(0.1, 0, 0.3, 0) FovSlider.Size = UDim2.new(0.8, 0, 0.2, 0) FovSlider.Parent = Frame local SmoothnessLabel = Instance.new("TextLabel") SmoothnessLabel.Name = "SmoothnessLabel" SmoothnessLabel.Text = "自瞄平滑度" SmoothnessLabel.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessLabel.BackgroundTransparency = 1 SmoothnessLabel.Position = UDim2.new(0.1, 0, 0.5, 0) SmoothnessLabel.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessLabel.Parent = Frame local SmoothnessSlider = Instance.new("TextBox") SmoothnessSlider.Name = "SmoothnessSlider" SmoothnessSlider.Text = tostring(smoothness) SmoothnessSlider.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) SmoothnessSlider.Position = UDim2.new(0.1, 0, 0.7, 0) SmoothnessSlider.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessSlider.Parent = Frame local CrosshairDistanceLabel = Instance.new("TextLabel") CrosshairDistanceLabel.Name = "CrosshairDistanceLabel" CrosshairDistanceLabel.Text = "自瞄预判距离" CrosshairDistanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceLabel.BackgroundTransparency = 1 CrosshairDistanceLabel.Position = UDim2.new(0.1, 0, 0.9, 0) CrosshairDistanceLabel.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceLabel.Parent = Frame local CrosshairDistanceSlider = Instance.new("TextBox") CrosshairDistanceSlider.Name = "CrosshairDistanceSlider" CrosshairDistanceSlider.Text = tostring(crosshairDistance) CrosshairDistanceSlider.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) CrosshairDistanceSlider.Position = UDim2.new(0.1, 0, 1.1, 0) CrosshairDistanceSlider.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceSlider.Parent = Frame local targetCFrame = Cam.CFrame local function updateDrawings() local camViewportSize = Cam.ViewportSize FOVring.Position = camViewportSize / 2 FOVring.Radius = fov end local function onKeyDown(input) if input.KeyCode == Enum.KeyCode.Delete then RunService:UnbindFromRenderStep("FOVUpdate") FOVring:Remove() end end UserInputService.InputBegan:Connect(onKeyDown) local function getClosestPlayerInFOV(trg_part) local nearest = nil local last = math.huge local playerMousePos = Cam.ViewportSize / 2 for _, player in ipairs(Players:GetPlayers()) do if player ~= Players.LocalPlayer then local part = player.Character and player.Character:FindFirstChild(trg_part) if part then local ePos, isVisible = Cam:WorldToViewportPoint(part.Position) local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude if distance < last and isVisible and distance < fov then last = distance nearest = player end end end end return nearest end RunService.RenderStepped:Connect(function() updateDrawings() local closest = getClosestPlayerInFOV("Head") if closest and closest.Character:FindFirstChild("Head") then local targetCharacter = closest.Character local targetHead = targetCharacter.Head local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart") local isMoving = targetRootPart.Velocity.Magnitude > 0.1 local targetPosition if isMoving then targetPosition = targetHead.Position + (targetHead.CFrame.LookVector * crosshairDistance) else targetPosition = targetHead.Position end targetCFrame = CFrame.new(Cam.CFrame.Position, targetPosition) else targetCFrame = Cam.CFrame end Cam.CFrame = Cam.CFrame:Lerp(targetCFrame, 1 / smoothness) end) FovSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newFov = tonumber(FovSlider.Text) if newFov then fov = newFov else FovSlider.Text = tostring(fov) end end end) SmoothnessSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newSmoothness = tonumber(SmoothnessSlider.Text) if newSmoothness then smoothness = newSmoothness else SmoothnessSlider.Text = tostring(smoothness) end end end) CrosshairDistanceSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newCrosshairDistance = tonumber(CrosshairDistanceSlider.Text) if newCrosshairDistance then crosshairDistance = newCrosshairDistance else CrosshairDistanceSlider.Text = tostring(crosshairDistance) end end end)
end)

local UITab1 = win:Tab("『巴掌模拟器』",'6031097229')

local about = UITab1:section("『巴掌模拟器』",true)

about:Button("巴掌服务器通用",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
  end)

about:Button("全手套技能",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Donjosx/SBS/refs/heads/main/GlovesAbuser.lua'),true))()
end)

about:Button("巴掌农场",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/slapfarmgui/main/main.lua'))()
end)

about:Button("获得绝大数的手套",function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Slap-Battles-KykyryzoB-Hub-SB-9008"))()
end)

about:Button("巴掌农场需要拳套",function()
loadstring(game:HttpGet("https://pastefy.app/hcG2LK3k/raw"))()
end)

about:Button("巴掌模拟器一键获得  水",function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Dusty1234567890/Book/main/Water")))()
end)

about:Button("巴掌模拟器一键获得  时钟",function()
loadstring(game:HttpGet'https://raw.githubusercontent.com/Dusty1234567890/NewGloves/refs/heads/main/Clock')()
end)

about:Button("双人合作获得BOB",function()
local executedCount = 0  -- 用于记录已经执行的次数
while true do
    local args = {
        [1] = true
    }
    game:GetService("ReplicatedStorage").Duplicate:FireServer(unpack(args))
    task.wait(0.01)  -- 每次循环后暂停 0.01 秒，这个时间可根据实际情况调整
    executedCount = executedCount + 1
    if executedCount == 6000 then
        print("已经成功执行了 6000 次！")
        -- 在这里你还可以添加其他当执行 6000 次后想做的操作
    end
end
end)

about:Toggle("无CD","Toggle" ,false, function(Value)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local tool = character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
    
    bazhangmnq = Value
    
    while bazhangmnq do
    local localscript = tool:FindFirstChildOfClass("LocalScript")
    local localscriptclone = localscript:Clone()
    localscriptclone = localscript:Clone()
    localscriptclone:Clone()
    localscript:Destroy()
    localscriptclone.Parent = tool
    wait(0.1)
    end
    end)
    
    about:Button("获取计数器手套", function()
    fireclickdetector(game.Workspace.CounterLever.ClickDetector)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    wait(121)
    for i,v in pairs(workspace.Maze:GetDescendants()) do
    if v:IsA("ClickDetector") then
    fireclickdetector(v)
    end
    end
    end)
    
    about:Toggle("地牢亮度","Toggle" ,false, function(Value)
     Light = Value
        if not Light then
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end)
    
    about:Dropdown("传送","Dropdown",{"安全区","竞技场","埃及岛","果实岛","盘子","锦标赛","默认竞技场"},function(Value)
    if Value == "安全区" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,40,0)
    elseif Value == "竞技场" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
    elseif Value == "埃及岛" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
    elseif Value == "果实岛" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
    elseif Value == "盘子" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)
    elseif Value == "锦标赛" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
    elseif Value == "默认竞技场" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,360,-3)
    end
    end)
    
    about:Toggle("复古技能","Toggle" ,false, function(Value)
    RetroSpam = Value
    while RetroSpam do
    game:GetService("ReplicatedStorage").RetroAbility:FireServer(RetroAbility)
    task.wait()
    end
    end)
    
    about:Dropdown("复古技能选择","Dropdown",{"Rocket Launcher","Ban Hammer","Bomb"}, function(Value)
    RetroAbility = Value
    end)
    
    about:Toggle("自动捡糖果","Toggle",false, function(Value)
    CandyCornFarm = Value
    while CandyCornFarm do
    for i, v in pairs(workspace.CandyCorns:GetChildren()) do
                    if v:FindFirstChildWhichIsA("TouchTransmitter") then
    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
    task.wait()
    end
    end)
    
    about:Toggle("获取炼金术师材料","Toggle", false, function(Value)
    AlchemistIngredients = Value
    if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
    while AlchemistIngredients do
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Mushroom")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Glowing Mushroom")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Fire Flower")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Winter Rose")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dark Root")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dire Flower")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Autumn Sprout")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Elder Wood")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Hazel Lily")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Wild Vine")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Jade Stone")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Lamp Grass")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Plane Flower")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blood Rose")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Red Crystal")
    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blue Crystal")
    task.wait()
    end
    end
    end)
    
    about:Toggle("自动加入竞技场","Toggle", false, function(Value)
    AutoEnterArena = Value
    while AutoEnterArena do
    if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
        end
    task.wait()
    end
    end)
    
    about:Toggle("自动光波球","Toggle", false, function(Value)
    if Person == nil then
    Person = game.Players.LocalPlayer.Name
    end
    _G.RojoSpam = Value
    while _G.RojoSpam do
    game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players[Person].Character.HumanoidRootPart.CFrame})
    task.wait()
    end
    end)
    
    about:Button("Rojo技能", function(Value)
    _G.RojoSpam = Value
    game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Charge")
    wait(6)
    game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
    task.wait()
    end)
    
    about:Toggle("音符技能","Toggle", false, function(Value)
    _G.RhythmSpam = Value
    while _G.RhythmSpam do
    game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",0)
    task.wait()
    end
    end)
    
    about:Toggle("Null技能","Toggle", false, function(Value)
    NullSpam = Value
    while NullSpam do
    game:GetService("ReplicatedStorage").NullAbility:FireServer()
    task.wait()
    end
    end)
    
    about:Toggle("自动拾取黄金果实","Toggle", false, function(Value)
    SlappleFarm = Value
    while SlappleFarm do
    for i, v in ipairs(workspace.Arena.island5.Slapples:GetDescendants()) do
                    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Glove" and v:FindFirstChildWhichIsA("TouchTransmitter") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
                    end
                end
    task.wait()
    end
    end)
    
    about:Toggle("自动捡飞行宝珠","Toggle", false, function(Value)
    Jetfarm = Value
    while Jetfarm do
    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "JetOrb" and v:FindFirstChild("TouchInterest") then
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                        end
                    end
    task.wait()
    end
    end)
    
    about:Toggle("自动捡相位球","Toggle", false, function(Value)
    Phasefarm = Value
    while Phasefarm do
    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "PhaseOrb" and v:FindFirstChild("TouchInterest") then
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                        end
                    end
    task.wait()
    end
    end)
    
    about:Toggle("自动刷bob","Toggle", false, function(Value)
    ReplicaFarm = Value
    while ReplicaFarm do
    for i, v in pairs(workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
    game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"))
                    end
                end
    task.wait()
    game:GetService("ReplicatedStorage").Duplicate:FireServer()
    task.wait(7)
    end
    end)
    
    about:Toggle("无限反转","Toggle", false, function(Value)
    _G.InfReverse = Value
    while _G.InfReverse do
    game:GetService("ReplicatedStorage").ReverseAbility:FireServer()
    wait(6)
    end
    end)
    
    about:Toggle("彩虹角色(装备黄金手套)","Toggle", false, function(Value)
    _G.Rainbow = Value
    while _G.Rainbow do
    for i = 0,1,0.001*25 do
    game:GetService("ReplicatedStorage").Goldify:FireServer(false, BrickColor.new(Color3.fromHSV(i,1,1)))
    task.wait()
    end
    end
    end)
    
    about:Toggle("防击飞","Toggle", false, function(Value)
    AntiRagdoll = Value
    if AntiRagdoll then
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
    game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
    if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and AntiRagdoll then
    repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
    until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
    game.Players.LocalPlayer.Character.Torso.Anchored = false
    end
    end)
    end)
    end
    end)
    
    about:Toggle("反虚空(锦标赛也有效果)","Toggle", false, function(Value)
    game.Workspace.dedBarrier.CanCollide = Value
    game.Workspace.TAntiVoid.CanCollide = Value
    end)

about:Toggle("防死亡屏障","Toggle", false, function(Value)
    if Value == true then
    for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                        if v.ClassName == "Part" and v.Name == "BLOCK" then
                            v.CanTouch = false
                        end
                    end
    workspace.DEATHBARRIER.CanTouch = false
    workspace.DEATHBARRIER2.CanTouch = false
    workspace.dedBarrier.CanTouch = false
    workspace.ArenaBarrier.CanTouch = false
    workspace.AntiDefaultArena.CanTouch = false
    else
    for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                        if v.ClassName == "Part" and v.Name == "BLOCK" then
                            v.CanTouch = true
                        end
                    end
    workspace.DEATHBARRIER.CanTouch = true
    workspace.DEATHBARRIER2.CanTouch = true
    workspace.dedBarrier.CanTouch = true
    workspace.ArenaBarrier.CanTouch = true
    workspace.AntiDefaultArena.CanTouch = true
    end
    end)
    
    about:Toggle("反巴西","Toggle", false, function(Value)
    if Value == true then
    for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                            v.CanTouch = false
                    end
    else
    for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                            v.CanTouch = true
                    end
    end
    end)
    
    about:Toggle("反死亡方块","Toggle", false, function(Value)
    if Value == true then
            workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
            else
                    workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
            end
    end)
    
    about:Toggle("反上帝技能","Toggle", false, function(Value)
    AntiTimestop = Value
    while AntiTimestop do
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.ClassName == "Part" then
                            v.Anchored = false
                        end
                    end
    task.wait()
    end
    end)
    
    about:Toggle("反鱿鱼","Toggle", false, function(Value)
    AntiSquid = Value
    if AntiSquid == false then
            game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = true
            end
    while AntiSquid do
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk") then
            game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = false
    end
    task.wait()
    end
    end)
    
    about:Toggle("反神圣杰克","Toggle", false, function(Value)
    game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = Value
    end)
    
    about:Toggle("反传送带","Toggle", false, function(Value)
    game.Players.LocalPlayer.PlayerScripts.ConveyorVictimized.Disabled = Value
    end)
    
    about:Toggle("反板砖","Toggle", false, function(Value)
    AntiBrick = Value
    while AntiBrick do
    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "Union" then
                            v.CanTouch = false
                        end
                    end
    task.wait()
    end
    end)
    
    about:Toggle("反Null","Toggle", false, function(Value)
    AntiNull = Value
    while AntiNull do
    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "Imp" and v:FindFirstChild("Body") then
    shared.gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v.Body,true)
    end
    end
    task.wait()
    end
    end)
    
about:Button("自动刷巴掌",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm'))()
end)

about:Button("巴掌模拟器1",function()
loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()
end)

about:Button("巴掌模拟器2",function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
end)

about:Button("巴掌模拟器3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
end)

about:Button("巴掌模拟器4",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dusty1234567890/Ab-admin-glove-badge/main/Ab%20glovr%20badge%20admin"))()
end)

about:Button("巴掌模拟器5",function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Donjosx/SlapBattle_Scripts/main/God_Mode_V2")))()
end)

about:Button("巴掌模拟器6",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
end)

about:Button("巴掌模拟器7",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
end)

about:Button("巴掌模拟器8",function()
loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()
end)

about:Button("巴掌模拟器9",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/bazhang"))()
end)

local UITab1 = win:Tab("『通用』",'6031097229')

local about = UITab1:section("『通用』",true)

about:Button("透视",function()
about:Button("透视",function()  
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
        local function ApplyESP(v)
       if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
           v.Character.Humanoid.NameDisplayDistance = 9e9
           v.Character.Humanoid.NameOcclusion = "NoOcclusion"
           v.Character.Humanoid.HealthDisplayDistance = 9e9
           v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
           v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed
       end
    end
    for i,v in pairs(game.Players:GetPlayers()) do
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end
    
    game.Players.PlayerAdded:Connect(function(v)
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end)
    
        local Players = game:GetService("Players"):GetChildren()
    local RunService = game:GetService("RunService")
    local highlight = Instance.new("Highlight")
    highlight.Name = "Highlight"
    
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
        end
    end
    
    game.Players.PlayerAdded:Connect(function(player)
        repeat wait() until player.Character
        if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = player.Character
            highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.Name = "Highlight"
        end
    end)
    
    game.Players.PlayerRemoving:Connect(function(playerRemoved)
        playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
    end)
    
    RunService.Heartbeat:Connect(function()
        for i, v in pairs(Players) do
            repeat wait() until v.Character
            if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = v.Character
                highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlightClone.Name = "Highlight"
                task.wait()
            end
    end
    end)
    end)
 end)
 
  
local UITab1 = win:Tab("『通用』",'6031097229')

local about = UITab1:section("『通用』",true)

about:Button("穿墙",function()
about:Button("汉化穿墙",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()
end)
end)

local UITab1 = win:Tab("『 BF脚本』",'6031097229')

local about = UITab1:section("『BF』",true)

about:Button("R开头的脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
  end)

about:Button("无卡密w开头的脚本",function()
getgenv().Team = "Pirates"loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
end)

local UITab1 = win:Tab("『SA』",'6031097229')

local about = UITab1:section("『SA』",true)

about:Button("打boss攻速脚本",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/itsyouranya/free/main/Anya%20Stands%20Awakening%20Helper.lua'),true))()
    end)

about:Button(" 打boss范围脚本建议搭配上一个攻速",function()
loadstring(game:HttpGet("https://pastebin.com/raw/c6xE0n3v", true))()
end)

about:Button("打boss脚本",function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/Wi-sp/Limitless-legacy/refs/heads/main/GUI")()
end)

about:Button("SA打boss脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Looser3itx/sus/main/Loader.lua"))()
end)

local UITab1 = win:Tab("『伐木大亨2』",'6031097229')

local about = UITab1:section("『伐木大亨2』",true)

about:Button("伐木大亨2脚本英文",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
     end)

about:Button("伐木大亨2脚本中文",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/LuaWare.lua", true))()
end)

local UITab1 = win:Tab("『白脚本』",'6031097229')

local about = UITab1:section("『好用的脚本白』",true)

about:Button("高级的白脚本 Bug之上的脚本打开不了就证明又出bug了💀",function()
_G.qq="1790789616"loadstring(game:HttpGet(('https://raw.githubusercontent.com/wev666666/baijiaobengV2.0beta/main/%E7%99%BD%E8%84%9A%E6%9C%ACbeta'),true))()
end)

local UITab1 = win:Tab("『自瞄』",'6031097229')

local about = UITab1:section("『高级自瞄』",true)

about:Button("绝对好用的，自瞄不好用来打我🤓",function()
local fov = 10
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Cam = game.Workspace.CurrentCamera
 
local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 2
FOVring.Color = Color3.fromRGB(128, 0, 128) -- Purple color
FOVring.Filled = false
FOVring.Radius = fov
FOVring.Position = Cam.ViewportSize / 2
 
local function updateDrawings()
    local camViewportSize = Cam.ViewportSize
    FOVring.Position = camViewportSize / 2
end
 
local function onKeyDown(input)
    if input.KeyCode == Enum.KeyCode.Delete then
        RunService:UnbindFromRenderStep("FOVUpdate")
        FOVring:Remove()
    end
end
 
UserInputService.InputBegan:Connect(onKeyDown)
 
local function lookAt(target)
    local lookVector = (target - Cam.CFrame.Position).unit
    local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
    Cam.CFrame = newCFrame
end
 
local function getClosestPlayerInFOV(trg_part)
    local nearest = nil
    local last = math.huge
    local playerMousePos = Cam.ViewportSize / 2
 
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer then
            local part = player.Character and player.Character:FindFirstChild(trg_part)
            if part then
                local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
                local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude
 
                if distance < last and isVisible and distance < fov then
                    last = distance
                    nearest = player
                end
            end
        end
    end
 
    return nearest
end
 
RunService.RenderStepped:Connect(function()
    updateDrawings()
    local closest = getClosestPlayerInFOV("Head")
    if closest and closest.Character:FindFirstChild("Head") then
        lookAt(closest.Character.Head.Position)
    end
end)
end)
local UITab1 = win:Tab("『自然灾害黑洞』",'6031097229')

local about = UITab1:section("『自然灾害黑洞』",true)

about:Button("黑洞脚本",function()
loadstring(game:HttpGet("https://pastefy.app/pYhER1z4/raw"))()
end)


local UITab1 = win:Tab("『各大脚本』",'6031097229')

local about = UITab1:section("『各大脚本』",true)

about:Button("流亡脚本",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Oooooo5ooooo/LWang/refs/heads/main/Protected_2128420936233350.txt"))()
   end)

about:Button("XK中心",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\88\75\46\84\88\84\34\41\41\40\41\10")()
end)

about:Button("山脚本",function()
    loadstring(game:HttpGet("https://h.lkmc.asia/script/ssfb.lua"))()
end)
about:Button("青脚本",function()
    loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()
end)
about:Button("陈脚本",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QxDD9SpW"))()
end)
about:Button("杯脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/llcq"))()
end)
about:Button("北极脚本『中心』",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KwARpDxV",true))()
end)
about:Button("地岩脚本",function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
end)
about:Button("导管中心",function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
end)
about:Button("脚本中心1.5版本",function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
end)
about:Button("玖恶脚本",function()
    loadstring(game:HttpGet('https://ayangwp.cn/api/v3/file/get/8508/%E7%8E%96%E6%81%B6%E4%B8%AD%E5%BF%83.lua?sign=wt54yWf_f0LDB3gXXyQu0SFQ0oUDUXZBOaWQShwCFGg%3D%3A0'))()
end)
about:Button("老大脚本",function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8401/%E8%80%81%E5%A4%A7%E8%84%9A%E6%9C%AC1.0%E7%89%88.txt?sign=XHxQ1ja8djAnEjVEG-eEZFPeZKFHJ0FHeybHpSbtBW4%3D%3A0"))()
end)
about:Button("乌云脚本",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/dT4ZGge8"))()
end)
about:Button("皇脚本",function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8577/%E7%9A%87v5.txt?sign=ToDT3Udyh4r3WwDu_yVblRL849qC2GJjjjQ7FTidF_w%3D%3A0"))()
end)
about:Button("冰红茶脚本",function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8582/Protected_9297682332119129.lua?sign=jP-h1AGooC90C0A0O5eDboOCoaQTZpOzLoWzg_oz1eE%3D%3A0"))()
end)
about:Button("静新脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/jxdjbx/ggff/main/%E5%B8%85%E9%94%85%E4%B8%80%E6%9E%9A%E5%B0%8F%E5%8F%AF%E7%88%B1%E5%91%80%E5%8F%91%E8%B4%A7%E5%A5%BD%E7%9A%84%E5%90%83%E4%B8%8D%E5%90%83%E8%AE%B0%E5%BE%97%E8%AE%B0%E5%BE%97%E4%BD%A0%E6%96%B9%E4%BE%BF%E6%89%93%E5%BC%80%E7%94%B5%E8%84%91%E6%96%B9%E4%B8%8D%E6%96%B9%E4%BE%BF%E8%AE%B0%E5%BE%97%E9%83%BD%E8%A7%81%E4%B8%8D%E5%88%B0%E6%96%B9%E4%BE%BF%E7%9A%84%E8%AF%9D%E6%89%8B%E6%9C%BA%E6%96%B9%E4%B8%8D%E6%96%B9%E4%BE%BF%E5%B0%B1"))()
end)
about:Button("小魔脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaomoNB666/xiaomoNB666/main/%E6%9E%81.lua"))()
end)
about:Button("鲨新ui脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fvvhhh/sturdy-octo-engine/main/Protected_1221338743706560.lua.txt"))()
end)
about:Button("雷脚本",function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/tPB47inG')))()
end)

about:Button("林",function()
lin = "作者林"lin ="林QQ群 747623342"loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()
end)

local UITab1 = win:Tab("『鱼 Fish』",'6031097229')

local about = UITab1:section("『鱼 Fish』",true)

about:Button("乌托邦",function()
loadstring(game:HttpGet("https://pastefy.app/M1Ns2Ggo/raw"))()
end)

about:Button(" Fish英文",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/Fisch.lua"))()
end)

local UITab1 = win:Tab("『杀手与警察』",'6031097229')

local about = UITab1:section("『杀手与警察』",true)

about:Button("导师送给我的",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ShenJiaoBen/ShenJiaoBen/refs/heads/main/%E6%9D%80%E6%89%8B%E4%B8%8E%E8%AD%A6%E9%95%BF%EF%BC%88%E7%9B%AE%E5%89%8D%E6%AD%A3%E5%9C%A8FIX%EF%BC%89.lua"))()
end)

local UITab1 = win:Tab("『忍者传奇』",'6031097229')

local about = UITab1:section("『忍者传奇』",true)

about:Button("不知道好不好用的忍者传奇脚本",function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Rolly-Hub-I-6-GAMES-SUPPORTED-4511"))()
end)
local UITab1 = win:Tab("『Doors』",'6031097229')

local about = UITab1:section("『Doors』",true)

about:Button(" Doors20万年前脚本",function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\76\88\51\49\56\47\76\88\47\109\97\105\110\47\76\88\37\50\48\50\46\108\117\97\0"))()
end)

local UITab1 = win:Tab("『战争大亨』",'6031097229')

local about = UITab1:section("『战争大亨』",true)

about:Button("战争大亨透视脚本锁头",function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Gripen-War-Tycoon-White-hub-beta-28323"))()
end)

about:Button("无卡密但不知道好不好用",function()
loadstring(game:HttpGet'https://raw.githubusercontent.com/Macintosh1983/ChillHubMain/main/ChillHubOilWarfareTycoon.lua')()
end)

about:Button("战争大亨1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nivex123456/War-Tycoon/main/Script"))() 
end)

about:Button("战争大亨2",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/WarTycoon", true))() 
end)

about:Button("战争大亨3",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/nici002018/GNHub/master/GNHub.lua", true))() 
end)

about:Button("战争大亨4",function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/WarTycoon", true))()
end)

about:Button("战争大亨5",function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraScript/Script/main/WarTycoon'))()
end)

about:Button("战争大亨6",function()
loadstring(gameHttpGet(httpsraw.githubusercontent.comNivex123456War-TycoonmainScript))()
end)

about:Button("战争大亨7",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraScript/Script/main/WarTycoon'))()
end)

about:Button("战争大亨8",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nivex123456/War-Tycoon/main/Script"))()
end)

about:Button("战争大亨9",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Vortex194/main/main/oilwarfare", true))()
end)

about:Button("战争大亨10",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0wartycoon", true))()
end)

about:Button("战争大亨11",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/megamoeus/UI-Engine-V2/main/OWTPublic"))()
end)

about:Button("战争大亨12",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/megamoeus/UI-Engine-V2/main/OWTPublic"))()
end)

local UITab1 = win:Tab("『最强战场』",'6031097229')

local about = UITab1:section("『最强战场』",true)

about:Button("粘到别人脚底下卡密：RoscriptsOnTop",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RealOfficialSkully/Smm/main/Smm"))()
end)

about:Button("tsb虚空杀脚本",function()
loadstring(game:HttpGet("https://pastefy.app/afHQ7oyj/raw"))()
end)

local UITab1 = win:Tab("『河北唐县』",'6031097229')

local about = UITab1:section("『河北唐县』",true)

about:Button("河北唐县-皮",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/Pi-script-Hebeitangxian.lua"))()
end)

about:Button("河北唐县-叶",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE%20SCRIPT-Tang%20County%2C%20Hebei.lua"))()
end)

about:Button("传送到警察局", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5513.97412109375, 8.656171798706055, 4964.291015625)
end)
about:Button("传送到出生点", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3338.31982421875, 10.048742294311523, 3741.84033203125)
end)
about:Button("传送到医院", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5471.482421875, 14.149418830871582, 4259.75341796875)
end)
about:Button("传送到手机店", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6789.2041015625, 11.197686195373535, 1762.687255859375)
end)
about:Button("传送到火锅店", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5912.84765625, 12.217276573181152, 1058.29443359375)
end)
 
about:Button("河北唐县1",function()
loadstring(game:HttpGet("https://pastefy.app/s20nni0h/raw"))()
end)

about:Button("河北唐县2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Tang%20Country.lua"))()
end)

about:Label("需要先成为快递员，才能自动刷钱")
local function autoFarm()
    while _G.autoFarm do
        local clickDetector = game:GetService("Workspace").DeliverySys.Misc["Package Pile"].ClickDetector
        if clickDetector then
            local success, errorMsg = pcall(function()
                fireclickdetector(clickDetector)
            end)
            if not success then
                warn("Failed to fire ClickDetector: " .. errorMsg)
            end
        else
            warn("ClickDetector not found!")
        end
        
        task.wait(2.2)

        local deliveryPoints = game:GetService("Workspace").DeliverySys.DeliveryPoints:GetChildren()
        local delivered = false
        for _, point in ipairs(deliveryPoints) do
            if point:FindFirstChild("Locate") and point.Locate.Locate.Enabled then
                local hrp = game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if hrp then
                    hrp.CFrame = point.CFrame
                    delivered = true
                    break
                end
            end
        end
        
        if not delivered then
            warn("No delivery point found!")
        end

        task.wait(0)
    end
end

about:Toggle("自动刷钱", "AL", false, function(AM)
    _G.autoFarm = AM
    
    if AM then
        if not _G.autoFarmThread or not _G.autoFarmThread.Running then
            _G.autoFarmThread = coroutine.create(autoFarm)
            coroutine.resume(_G.autoFarmThread)
        end
    else
        if _G.autoFarmThread and _G.autoFarmThread.Running then
            coroutine.close(_G.autoFarmThread)
        end
    end
end)

about:Toggle("自动刷钱", "AM", false, function(AM)
    local virtualUser = game:GetService('VirtualUser') virtualUser:CaptureController() function teleportTo(CFrame) game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame end _G.autoFarm = false function autoFarm() while _G.autoFarm do fireclickdetector(game:GetService("Workspace").DeliverySys.Misc["Package Pile"].ClickDetector) task.wait(2.2) for _,point in pairs(game:GetService("Workspace").DeliverySys.DeliveryPoints:GetChildren()) do if point.Locate.Locate.Enabled then teleportTo(point.CFrame) end end task.wait(0) end end
end)

about:Label("第一个刷钱和第二个是不同的 一个不能用 可以用另一个")

local UITab1 = win:Tab("『监狱人生』",'6031097229')

local about = UITab1:section("『监狱人生』",true)

about:Button("监狱人生黑人管理菜单部分英文",function()
loadstring(game:HttpGet("https://pastebin.com/raw/LnAUPBXj",true))()
end)

about:Button("监狱人生英文挺强的",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
end)

about:Button("新菜单",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/LiverMods/xRawnder/main/HubMoblie'))()
end)

local UITab1 = win:Tab("『GB』",'6031097229')

local about = UITab1:section("『GB』",true)

about:Button("中文汉化好用的脚本",function()
local SCC_CharPool={[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,51,55,116,67,82,116,117,109})end)()))}loadstring(game:HttpGet(SCC_CharPool[1]))()
end)

local UITab1 = win:Tab("『Dig it』",'6031097229')

local about = UITab1:section("『Dig ti』",true)

about:Button("需要卡密，但很简单",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader", true))()
end)

local UITab8 = win:Tab("『超级大力士模拟器』",'8932036109')

local about = UITab8:section("『超级大力士模拟器』",true)
    
about:Button("超级大力士模拟器1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0strongman", true))()
end)

about:Button("超级大力士模拟器2",function()
loadstring(game:HttpGet("https://pastefy.app/aO18ZEB9/raw"))()
end)

about:Button("超级大力士模拟器3",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/hngamingroblox/scripts/main/strongman%20simulator'))()
end)

about:Button("超级大力士模拟器4",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0strongman", true))()
end)

about:Button("传送到开始区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.86943817138672, 11.751949310302734, -198.07127380371094)
    end)
    
about:Button("传送到健身区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.60747528076172, 11.751947402954102, -10.266206741333008)
    end)
    
about:Button("传送到食物区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.86384582519531, 11.751947402954102, 228.9690399169922)
    end)
    
about:Button("传送到街机区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.99887084960938, 11.751949310302734, 502.90997314453125)
    end)
    
about:Button("传送到农场区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.6707763671875, 11.751947402954102, 788.5997314453125)
    end)
    
about:Button("传送到城堡区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.87281036376953, 11.84177017211914, 1139.7509765625)
    end)
    
about:Button("传送到蒸汽朋克区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.63227081298828, 11.841767311096191, 1692.7890625)
    end)
    
about:Button("传送到迪斯科区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.69613647460938, 16.015085220336914, 2505.213134765625)
    end)
    
about:Button("传送到太空区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.42948150634766, 11.841769218444824, 3425.941650390625)
    end)
    
about:Button("传送到糖果区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.55805969238281, 11.841663360595703, 4340.69921875)
    end)
    
about:Button("送到实验室区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.00920867919922, 11.841663360595703, 5226.60205078125)
    end)
    
about:Button("传送到热带区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80.26090240478516, 12.0902681350708, 6016.16552734375)
    end)
    
about:Button("传送到恐龙区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.4753303527832, 25.801530838012695, 6937.779296875)
    end)
    
about:Button("传送到复古区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.81867218017578, 12.89099407196045, 7901.74755859375)
    end)
    
about:Button("传送到冬季区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.47243881225586, 11.841662406921387, 8983.810546875)
    end)
    
about:Button("传送到深海区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.36250305175781, 26.44820213317871, 9970.0849609375)
    end)
    
about:Button("传送到狂野西部区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.69414520263672, 15.108586311340332, 10938.654296875)
    end)
    
about:Button("传送到豪华公寓区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.75145721435547, 11.313281059265137, 12130.349609375)
    end)
    
about:Button("传送到宝剑战斗区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.25597381591797, 11.408829689025879, 12945.57421875)
    end)
    
about:Button("传送到童话区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121.14932250976562, 11.313281059265137, 14034.50390625)
    end)
    
about:Button("传送到桃花区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.2142333984375, 11.813281059265137, 15131.861328125)
    end)
    
about:Button("传送到厨房区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.78338623046875, 21.76291847229004, 16204.9755859375)
    end)
    
about:Button("传送到下水道区域", function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.36086654663086, 12.25178050994873, 17656.04296875)
    end)

local UITab9 = win:Tab("『河北唐县』",'7734068321')

local about = UITab9:section("『河北唐县』",true)

about:Button("传送到警察局", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5513.97412109375, 8.656171798706055, 4964.291015625)
end)
about:Button("传送到出生点", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3338.31982421875, 10.048742294311523, 3741.84033203125)
end)
about:Button("传送到医院", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5471.482421875, 14.149418830871582, 4259.75341796875)
end)
about:Button("传送到手机店", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6789.2041015625, 11.197686195373535, 1762.687255859375)
end)
about:Button("传送到火锅店", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5912.84765625, 12.217276573181152, 1058.29443359375)
end)
 
 local UITab1 = win:Tab("『力量传奇』",'7734068321')

local about = UITab1:section("『力量传奇』",true)

about:Button("力量传奇",function()

end)

about:Toggle("自动比赛开关", "AR", false, function(AR)
  while AR do wait() wait(2) game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl") end
end)
about:Toggle("自动举哑铃", "ATYL", false, function(ATYL)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true local rs = game:GetService("RunService").RenderStepped while ATYL do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Weight" then v.Parent = game.Players.LocalPlayer.Character end end game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") end
end)
about:Toggle("自动俯卧撑", "ATFWC", false, function(ATFWC)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true local rs = game:GetService("RunService").RenderStepped while ATFWC do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Pushups" then v.Parent = game.Players.LocalPlayer.Character end end game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") end
end)
about:Toggle("自动仰卧起坐", "ATYWQZ", false, function(ATYWQZ)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true local rs = game:GetService("RunService").RenderStepped while ATYWQZ do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Situps" then v.Parent = game.Players.LocalPlayer.Character end end end game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
about:Toggle("自动倒立身体", "ATDL", false, function(ATDL)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true local rs = game:GetService("RunService").RenderStepped while ATDL do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Handstands" then v.Parent = game.Players.LocalPlayer.Character end end end game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
about:Toggle("自动锻炼", "ATAAA", false, function(ATAAA)
  local part = Instance.new('Part', workspace) part.Size = Vector3.new(500, 20, 530.1) part.Position = Vector3.new(0, 100000, 133.15) part.CanCollide = true part.Anchored = true while ATAAA do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0) for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v.ClassName == "Tool" and v.Name == "Handstands" or v.Name == "Situps" or v.Name == "Pushups" or v.Name == "Weight" then v:FindFirstChildOfClass("NumberValue").Value = 0 repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep") end end end
end)

about:Toggle("自动重生", "ATRE", false, function(ATRE)
  while ATRE do wait() game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest") end
end)
about:Button("收集宝石", function()
  jk = {} for _, v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do if v.Name ~= "Light Karma Chest" or v.Name ~= "Evil Karma Chest" then table.insert(jk, v.Name) end end for i = 1, #jk do wait(2) game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(jk[i]) end
end)

about:Toggle("沙滩跑步机10", "PPJ10", false, function(PPJ10)
    getgenv().PPJ10 = PPJ10 while getgenv().PPJ10 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(238.671112, 5.40315914, 387.713165, -0.0160072874, -2.90710176e-08, -0.99987185, -3.3434191e-09, 1, -2.90212157e-08, 0.99987185, 2.87843993e-09, -0.0160072874) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end if not getgenv().PPJ10 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
about:Toggle("健身房跑步机2000", "PPJ2000", false, function(PPJ2000)
    if game.Players.LocalPlayer.Agility.Value >= 2000 then getgenv().PPJ2000 = PPJ2000 while getgenv().PPJ2000 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-3005.37866, 14.3221855, -464.697876, -0.015773816, -1.38508964e-08, 0.999875605, -5.13225586e-08, 1, 1.30429667e-08, -0.999875605, -5.11104332e-08, -0.015773816) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end end if not getgenv().PPJ2000 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
about:Toggle("神话健身房跑步机2000", "SHPPJ2000", false, function(SHPPJ2000)
    if game.Players.LocalPlayer.Agility.Value >= 2000 then getgenv().SHPPJ2000 = SHPPJ2000 while getgenv().SHPPJ2000 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2571.23706, 15.6896839, 898.650391, 0.999968231, 2.23868635e-09, -0.00797206629, -1.73198844e-09, 1, 6.35660768e-08, 0.00797206629, -6.3550246e-08, 0.999968231) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end end if not getgenv().SHPPJ2000 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
about:Toggle("永恒健身房跑步机3500", "YHPPJ3500", false, function(YHPPJ3500)
    if game.Players.LocalPlayer.Agility.Value >= 3500 then getgenv().YHPPJ3500 = YHPPJ3500 while getgenv().YHPPJ3500 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7077.79102, 29.6702118, -1457.59961, -0.0322036594, -3.31122768e-10, 0.99948132, -6.44344267e-09, 1, 1.23684493e-10, -0.99948132, -6.43611742e-09, -0.0322036594) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end end if not getgenv().YHPPJ3500 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)
about:Toggle("传奇健身房跑步机3000", "CQPPJ3000", false, function(CQPPJ3000)
    if game.Players.LocalPlayer.Agility.Value >= 3000 then getgenv().CQPPJ3000 = CQPPJ3000 while getgenv().CQPPJ3000 do wait() game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 10 game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4370.82812, 999.358704, -3621.42773, -0.960604727, -8.41949266e-09, -0.27791819, -6.12478646e-09, 1, -9.12496567e-09, 0.27791819, -7.06329528e-09, -0.960604727) local oldpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:BindToRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:WaitForChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end end if not getgenv().CQPPJ3000 then local RunService = game:GetService("RunService") local Players = game:GetService("Players") local localPlayer = Players.LocalPlayer RunService:UnbindFromRenderStep("move", Enum.RenderPriority.Character.Value + 1, function() if localPlayer.Character then local humanoid = localPlayer.Character:FindFirstChild("Humanoid") if humanoid then humanoid:Move(Vector3.new(10000, 0, -1), true) end end end) end
end)

about:Toggle("石头0", "RK0", false, function(RK0)
    getgenv().RK0 = RK0 while getgenv().RK0 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(7.60643005, 4.02632904, 2104.54004, -0.23040159, -8.53662385e-08, -0.973095655, -4.68743764e-08, 1, -7.66279342e-08, 0.973095655, 2.79580536e-08, -0.23040159) end if not getgenv().RK0 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end
end)
about:Toggle("石头10", "RK10", false, function(RK10)
    if game.Players.LocalPlayer.Durability.Value >= 10 then getgenv().RK10 = RK10 while getgenv().RK10 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-157.680908, 3.72453046, 434.871185, 0.923298299, -1.81774684e-09, -0.384083599, 3.45247031e-09, 1, 3.56670582e-09, 0.384083599, -4.61917082e-09, 0.923298299) end if not getgenv().RK10 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头100", "RK100", false, function(RK100)
    if game.Players.LocalPlayer.Durability.Value >= 100 then getgenv().RK100 = RK100 while getgenv().RK100 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(162.233673, 3.66615629, -164.686783, -0.921312928, -1.80826774e-07, -0.38882193, -9.13036544e-08, 1, -2.48719346e-07, 0.38882193, -1.93647494e-07, -0.921312928) end if not getgenv().RK100 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头5000", "RK5000", false, function(RK5000)
    if game.Players.LocalPlayer.Durability.Value >= 5000 then getgenv().RK5000 = RK5000 while getgenv().RK5000 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(329.831482, 3.66450214, -618.48407, -0.806075394, -8.67358096e-08, 0.591812849, -1.05715522e-07, 1, 2.57029176e-09, -0.591812849, -6.04919563e-08, -0.806075394) end if not getgenv().RK5000 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头150000", "RK150000", false, function(RK150000)
    if game.Players.LocalPlayer.Durability.Value >= 150000 then getgenv().RK150000 = RK150000 while getgenv().RK150000 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2566.78076, 3.97019577, -277.503235, -0.923934579, -4.11600105e-08, -0.382550538, -3.38838042e-08, 1, -2.57576183e-08, 0.382550538, -1.08360858e-08, -0.923934579) end if not getgenv().RK150000 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头400000", "RK400000", false, function(RK400000)
    if game.Players.LocalPlayer.Durability.Value >= 400000 then getgenv().RK400000 = RK400000 while getgenv().RK400000 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2155.61743, 3.79830337, 1227.06482, -0.551303148, -9.16796949e-09, -0.834304988, -5.61318245e-08, 1, 2.61027839e-08, 0.834304988, 6.12216127e-08, -0.551303148) end if not getgenv().RK400000 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头750000", "RK750000", false, function(RK750000)
    if game.Players.LocalPlayer.Durability.Value >= 750000 then getgenv().RK750000 = RK750000 while getgenv().RK750000 do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7285.6499, 3.66624784, -1228.27417, 0.857643783, -1.58175091e-08, -0.514244199, -1.22581563e-08, 1, -5.12025977e-08, 0.514244199, 5.02172774e-08, 0.857643783) end if not getgenv().RK750000 then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头100万", "RK1M", false, function(RK1M)
    if game.Players.LocalPlayer.Durability.Value >= 1000000 then getgenv().RK1M = RK1M while getgenv().RK1M do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4160.87109, 987.829102, -4136.64502, -0.893115997, 1.25481356e-05, 0.44982639, 5.02490684e-06, 1, -1.79187136e-05, -0.44982639, -1.37431543e-05, -0.893115997) end if not getgenv().RK1M then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)
about:Toggle("石头500万", "RK5M", false, function(RK5M)
    if game.Players.LocalPlayer.Durability.Value >= 5000000 then getgenv().RK5M = RK5M while getgenv().RK5M do wait() for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if v:IsA("Tool") and v.Name == "Punch" then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v) end end for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if h:IsA("Tool") and h.Name == "Punch" then h:Activate() end end game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8957.54395, 5.53625107, -6126.90186, -0.803919137, 6.6065212e-08, 0.594738603, -8.93136143e-09, 1, -1.23155459e-07, -0.594738603, -1.04318865e-07, -0.803919137) end if not getgenv().RK5M then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools() end end
end)

about:Button("传送到出生点",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
end)

about:Button("传送到安全岛",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
end)

about:Button("传送到幸运抽奖区域😏😏😏",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
end)

about:Button("传送到肌肉之王健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
end)

about:Button("传送到传说健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
end)

about:Button("传送到永恒健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
end)

about:Button("传送到神话健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
end)

about:Button("传送到冰霜健身房",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
end)

about:Button("力量传奇改力量",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
end)

local UITab1 = win:Tab("『evade逃脱』",'6031097229')

local about = UITab1:section("『evade逃脱』",true)

about:Button("如果倒地了，点击一下就可以复活",function()
local args = {
    [1] = true
}

game:GetService("ReplicatedStorage").Events.Player.ChangePlayerMode:FireServer(unpack(args))
end)

local UITab1 = win:Tab("『死铁轨』",'6031097229')

local about = UITab1:section("『死铁轨』",true)

about:Button("小狗",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/refs/heads/main/TbaoHubDeadRails"))()
end)

about:Button("要卡密寂寞",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
end)

about:Button(" B站",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/iopjklbnmsss/SansHubScript/refs/heads/main/SansHub"))()
end)

about:Button(" Wtd",function()
loadstring(game:HttpGet('https://pastefy.app/w72aJbvr/raw'))()
end)

local UITab1 = win:Tab("『木材大亨』",'6031097229')

local about = UITab1:section("『木材大亨』",true)

about:Button("不知",function()
local lp=game.Players.LocalPlayer
local mouse = lp:GetMouse()
local CurrentSlot = game.Players.LocalPlayer:WaitForChild("CurrentSaveSlot").Value
local ScriptLoadOrSave = false
local CurrentlySavingOrLoading = game.Players.LocalPlayer:WaitForChild("CurrentlySavingOrLoading")
local bai = {
  autoaxedupe=false,
  cuttreeselect="Generic",
  axedupepick=nil,
  autodupe=false,
  dxmz="",
  slot=-1,
  zlwjia="",
  zix=1,
  zlz=3,
  bringamount=1,
  bringtree=false,
  waterwalk=false,
  awaysday=false,
  awaysdnight=false,
  nofog=false,
  cswjiail=nil,
  itemset=nil,
  autocsdx=nil,
  autobuystop=false,
  autobuyamount=1,
  away = nil
}

local function notify(Title,Text,Duration) -- Sends Notification in the bottom right of the screen
  game.StarterGui:SetCore("SendNotification", {
    Title = Title;
    Text = Text;
    Icon = nil;
    Duration = Duration
  })
end
function Dupeaxe()


  lp.Character.Humanoid:UnequipTools()
  local oldpos = lp.Character.HumanoidRootPart.CFrame
  for i,v in pairs(game:service"Players".LocalPlayer.Backpack:GetChildren()) do
    game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v,"Drop tool")
  end

  game:service"Players".LocalPlayer.Character.Head:Destroy()
  wait(6)
  lp.Character.HumanoidRootPart.CFrame=oldpos
end
local Vehicle
function cartp(cframe)
  Vehicle = lp.Character.Humanoid.SeatPart.Parent
  spawn(function()
    for i = 1, 3 do
      task.wait()
      Vehicle:SetPrimaryPartCFrame(cframe)
    end
  end)
end
function ItemStackeraxe(ItemType, XAxis, ZAxis)
  local Player = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3.5, 0)
  local Items = {}

  for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) ==bai.zlwjia
      then if (
        v:FindFirstChild "DraggableItem" and tostring(v.DraggableItem.Parent) == ItemType)
        then table
        .
        insert(Items, v)
      end
    end
  end
  local Count = 0
  for Y = 1, math.ceil(#Items / (XAxis * ZAxis)) do for X = 1, XAxis do for Z = 1, ZAxis do Count = Count
        + 1
        game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,
        CFrame.new(X * Items[1].Main.Size.X, Y * Items[1].Main.Size.Y, Z * Items[1].Main.Size.Z) + Player
        ,
        game.Players.LocalPlayer, nil, Items[Count], true)
      end
    end
  end
end
function ItemStackerbox(ItemType, XAxis, ZAxis)
  local Player = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 4, 0)
  local Items = {}

  for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) ==bai.zlwjia
      then if (
        v:FindFirstChild("PurchasedBoxItemName") and tostring(v.PurchasedBoxItemName.Value) == ItemType)
        then table
        .
        insert(Items, v)
      end
    end
  end
  local Count = 0
  for Y = 1, math.ceil(#Items / (XAxis * ZAxis)) do for X = 1, XAxis do for Z = 1, ZAxis do Count = Count
        + 1
        game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,
        CFrame.new(X * Items[1].Main.Size.X, Y * Items[1].Main.Size.Y, Z * Items[1].Main.Size.Z) + Player
        ,
        game.Players.LocalPlayer, nil, Items[Count], true)
      end
    end
  end
end
local function CheckIfSlotAvailable(Slot)
  for a,b in pairs(game.ReplicatedStorage.LoadSaveRequests.GetMetaData:InvokeServer(game.Players.LocalPlayer)) do
    if a == Slot then
      for c,d in pairs(b) do
        if c == "NumSaves" and d ~= 0 then
          return true
         else
          return false
        end
      end
    end
  end
end

local function CheckSlotNumber() --Checks if the slot number is right
  if bai.slot == "1" or bai.slot == "2" or bai.slot == "3" or bai.slot == "4" or bai.slot == "5" or bai.slot == "6" then
    local SlotNumber = tonumber(bai.slot)
    return SlotNumber
   else return false
  end
end




function toolsta(toolname)
  return require(game.ReplicatedStorage.Purchasables.Tools.AllTools[toolname].AxeClass).new()
end

local function table_foreach(table, callback)
  for i=1,#table do
    callback(i, table[i])
  end
end


local function tp(pos)
  if typeof(pos) == "CFrame" then
    lp.Character:SetPrimaryPartCFrame(pos)
   elseif typeof(pos) == "Vector3" then
    lp.Character:MoveTo(pos)
  end
end

function sellwood()
  for _, Log in pairs(workspace.LogModels:GetChildren()) do
    if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
      if Log.Owner.Value == game.Players.LocalPlayer then
        for i,v in pairs(Log:GetChildren()) do
          if v.Name=="WoodSection" then
            spawn(function()
              for i=1,100 do
                wait();
                game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(v.WoodSection)
                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v.WoodSection)
                v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
              end
            end)
          end
        end

      end
    end
  end
end



local function cutPart (tool,event, treeClass,axestr)
  game:GetService"ReplicatedStorage".Interaction.RemoteProxy:FireServer(event, {
    tool = tool,
    faceVector = Vector3.new(0, 0,-1),
    height = 0.3,
    sectionId = 1,
    hitPoints = axestr,
    cooldown = -14,
    cuttingClass = "Axe"
  })
end
local treeListener = function(treeClass, callback)
  local childAdded
  a= workspace.LogModels.ChildAdded:Connect(function(child)
    local owner = child:WaitForChild("Owner")
    if owner.Value == lp and child.TreeClass.Value == treeClass then
      a:Disconnect()
      callback(child)
    end
  end)
end


local getBiggestTree = function(treeClass)
  for _,v in next,workspace:children()do
    if tostring(v)=="TreeRegion"then
      for _,g in next,v:children()do
        if g:FindFirstChild("TreeClass")and tostring(g.TreeClass.Value)==treeClass and g:FindFirstChild("Owner")then
          if g.Owner.Value==nil or tostring(g.Owner.Value)==tostring(lp)then
            if #g:children() > 5 and g:FindFirstChild("WoodSection")then
              for h,j in next,g:children() do
                if j:FindFirstChild("ID")and j.ID.Value==1 and j.Size.Y>.5 then
                  return j;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  return false;
end
local function lowerBridge(value)

  if value=="Higher"then
    for _,v in pairs(game.workspace.Bridge.VerticalLiftBridge.Lift:GetChildren()) do
      v.CFrame = v.CFrame + Vector3.new(0, 26, 0)
    end

   elseif value=="Lower"then
    for _,v in pairs(game.workspace.Bridge.VerticalLiftBridge.Lift:GetChildren()) do
      v.CFrame = v.CFrame + Vector3.new(0, -26, 0)
    end
  end;
end
function modwood()
  local wood
  local Saw
  notify("自动加工", "请点击一颗树", 4)
  local ModTree = mouse.Button1Up:Connect(function()
    local obj = mouse.Target.Parent
    if not obj:FindFirstChild "RootCut" and obj.Parent.Name == "TreeRegion" then
      return notify("错误!", "这棵树还没有砍!", 3)
    end
    if obj:FindFirstChild "Owner" and obj.Owner.Value == lp and obj:FindFirstChild "WoodSection" then
      wood = obj
      notify("一键加工", "已选择树!", 3)
    end
    if obj.Name:find("Sawmill")then
      Saw=sawmill;
      notify("老猫","剧木机已选择",4)
     elseif obj.Parent.Name:find("Sawmill")or obj.Parent:FindFirstChild"BlockageAlert"then
      Saw=obj.Parent
      notify("老猫","剧木机已选择",4)
    end;
  end
  )
  repeat
    task.wait(.01)
  until wood and Saw ~= nil
  ModTree:Disconnect()
  ModTree = nil
  local SawC = Saw.Particles.CFrame + Vector3.new(0.7, 0)
  local cu,cw= 0,nil
  for p, I in next, wood:GetChildren() do
    if I.Name == "WoodSection" then
      if I.ID.Value > cu then
        cu = I.ID.Value
        cw=I
      end
    end
  end
  for p, I in next, wood:GetChildren() do
    if I.Name == "WoodSection" then

      for p, b in next, I.ChildIDs:GetChildren() do

        if b.Value ==cu then
          cv = I

        end
      end
    end
  end
  tp(cv.CFrame)
  wait()
  repeat wait(0.1)
    cv.CFrame = game.Workspace["Region_Volcano"].Lava.Lava.CFrame
  until cv:FindFirstChild("LavaFire");
  cv:FindFirstChild("LavaFire"):Destroy();
  tp(cw.CFrame)
  for i=1,20 do
    cw:MoveTo(Saw)
    cw.CFrame=SawC
  end
end
local function bringTree(treeClass)
  lp.Character.Humanoid:UnequipTools()
  local oldPos=lp.Character.HumanoidRootPart.CFrame;
  local tool
  local tool=0
  for i,v in pairs (lp.Backpack:GetChildren()) do
    if v.Name ~= "BlueprintTool"then
      tool=tool+1
    end
  end
  if tool==0 then
    return
    notify("老猫","你需要斧头",4)
  end


  for i,v in pairs (lp.Backpack:GetChildren()) do
    if v.Name ~= "BlueprintTool"then

      tool = v
    end
  end
  local toolname
  for i ,v in pairs (tool:GetChildren()) do
    if v.Name=="ToolName" then
      toolname=v.Value

    end
  end

  local axestr=toolsta(toolname)
  if axestr.SpecialTrees and axestr.SpecialTrees[treeClass] then
    for i, v in next, axestr.SpecialTrees[treeClass] do
      axestr[i] = v
    end
  end
  local tree = getBiggestTree(treeClass)

  if not tree then
    return notify("老猫","没有找到树",4)
  end




  local treeCut = false
  if treeClass=="LoveCave" and axestr.Damage<10000000 then
    return notify("老猫","你没有合适的斧头去砍这棵树") end
  if treeClass=="Shine" and axestr.Damage<80000000 then
    return notify("老猫","你没有合适的斧头去砍这棵树") end
  if treeClass=="Shine" and axestr.Damage<80000000 then
    return notify("老猫","你没有合适的斧头去砍这棵树") end
  if treeClass=="Magma" and axestr.Damage<10000000 then
    return notify("老猫","你没有合适的斧头去砍这棵树") end
  if treeClass=="Ice" and axestr.Damage<8000000 then
    return notify("老猫","你没有合适的斧头去砍这棵树") end
  if treeClass== "Radioactive" and axestr.Damage<10000000 then
    return notify("老猫","你没有合适的斧头去砍这棵树") end
  if treeClass== "Scale" and axestr.Damage<40000000 then
    return notify("老猫","你没有合适的斧头去砍这棵树") end

  workspace.Camera.CameraSubject = tree
  treeListener(treeClass, function(tree)
    tree.PrimaryPart = tree:FindFirstChild("WoodSection")
    treeCut = true
    wait()
    workspace.Camera.CameraSubject = lp.Character

  end)

  task.wait()


  repeat


    cutPart(tool,tree.Parent.CutEvent, treeClass,axestr.Damage)
    wait()
  until treeCut


end
local cashierIds = {}
local connection = game.ReplicatedStorage.NPCDialog.PromptChat.OnClientEvent:connect(function(bu, data)
  if cashierIds[data.Name] == nil then
    cashierIds[data.Name] = data.ID;
  end
end)

game.ReplicatedStorage.NPCDialog.SetChattingValue:InvokeServer(1)
spawn(function()
  repeat wait(0.5) until cashierIds["Thom"] ~= nil
  wait(3)
  connection:Disconnect()
  connection = nil
  game.ReplicatedStorage.NPCDialog.SetChattingValue:InvokeServer(0)

end)
local bt = false;

function finditem(BItem)
  local NameStore,Cashier,CID,StoreItems, Counter
  for _,w in pairs (s.ShopItems:GetChildren()) do
    if w.Name=="Bed1" or w.Name=="Seat_Couch" then
      NameStore = "Corey"
      Cashier = game.Workspace.Stores.FurnitureStore.Corey
      StoreItems =l
      Counter = game.Workspace.Stores.FurnitureStore.Counter.CFrame + Vector3.new(0, .4, 0)

     elseif w.Name=="Sawmill" or w.Name=="Sawmill2" then
      NameStore = "Thom"
      Cashier = game.Workspace.Stores.WoodRUs.Thom
      StoreItems =l
      Counter = game.Workspace.Stores.WoodRUs.Counter.CFrame + Vector3.new(0, .4, 0)

     elseif w.Name=="Trailer2" or w.Name=="UtilityTruck2" then
      NameStore = "Jenny"
      Cashier = game.Workspace.Stores.CarStore.Jenny
      StoreItems =l
      Counter = game.Workspace.Stores.CarStore.Counter.CFrame + Vector3.new(0, .4, 0)

     elseif w.Name=="CanOfWorms" or w.Name=="Dynamite" then
      NameStore = "Bob"
      Cashier = game.Workspace.Stores.ShackSho.Bob
      StoreItems =l
      Counter = game.Workspace.Stores.ShackShop.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Painting1" or w.Name=="Painting2" then
      NameStore = "Timothy"
      Cashier = game.Workspace.Stores.FineArt.Timothy
      StoreItems =l
      Counter = game.Workspace.Stores.FineArt.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="GateXOR" or w.Name=="NeonWireOrange" then
      NameStore = "Lincoln"
      Cashier = game.Workspace.Stores.LogicStore.Lincoln
      StoreItems =l
      Counter = game.Workspace.Stores.LogicStore.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="BeachBall" or w.Name=="Cookie" then
      NameStore = "Guy"
      Cashier = game:GetService("Workspace").Stores.SeaSide.Guy
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.SeaSide.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="StrangeMan" or w.Name=="EndtimesChainsaw" then
      NameStore = "sneakypotato7"
      Cashier = game:GetService("Workspace").Stores.BlackMarket.sneakypotato7
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.BlackMarket.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="GoldGameCube" or w.Name=="GoldConveyorFunnel" then
      NameStore = "Todd"
      Cashier =game:GetService("Workspace").Stores.VIPSHOP.Todd
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.VIPSHOP.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Playstation" or w.Name=="SawmillGift" then
      NameStore = "Mr.Bacon"
      Cashier =game:GetService("Workspace").Stores.MountainSide["Mr.Bacon"]
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.MountainSide.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="MegaConveyorFunnel" or w.Name=="GameCube" then
      NameStore = "Bloxyway"
      Cashier =game:GetService("Workspace").Stores.SamsStuff.Bloxyway
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.SamsStuff.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="StorageBox" or w.Name=="StorageBox" then
      NameStore = "Geck"
      Cashier =game:GetService("Workspace").Stores.BoatsStore.Geck
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.BoatsStore.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="FireRock" or w.Name=="PotFrost" then
      NameStore = "OGxOutcast"
      Cashier =game:GetService("Workspace").Stores.PlanterStore.OGxOutcast
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.PlanterStore.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="LumberCD" or w.Name=="UtilityVolt" then
      NameStore = "NotPlantomic56"
      Cashier =game:GetService("Workspace").Stores.TravelingTrader.NotPlantomic56
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.TravelingTrader.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Eye1" or w.Name=="PumpkinClassic" then
      NameStore = "Sally"
      Cashier =game:GetService("Workspace").Stores.SallysSeasonal.Sally
      StoreItems =l
      Counter =game:GetService("Workspace").Stores.SallysSeasonal.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="LumberCDDab" or w.Name=="Lemon" then
      NameStore = "dab529"
      Cashier =game:GetService("Workspace").Stores.StoneRUs.dab529
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.StoneRUs.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="LeafCutters" or w.Name=="LeafFurnace" then
      NameStore = "William"
      Cashier =game:GetService("Workspace").Stores.AutumnCatalog.William
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.AutumnCatalog.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="AxeIce" or w.Name=="Cocoa" then
      NameStore = "Cold Guy"
      Cashier =game:GetService("Workspace").Stores.Igloo["Cold Guy"]
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.Igloo.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Egg" or w.Name=="HappyBall" then
      NameStore = "Plantomic56"
      Cashier =game:GetService("Workspace").Stores.PlantomicsChoice.Plantomic56
      StoreItems =l
      Counter = game:GetService("Workspace").Stores.PlantomicsChoice.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="Wall2Round" or w.Name=="WritableSign" then
      NameStore = "Manachron"
      Cashier =game:GetService("Workspace").Stores.FineFinds.Manachron
      StoreItems =l
      Counter= game:GetService("Workspace").Stores.FineFinds.Counter.CFrame + Vector3.new(0, .4, 0)
     elseif w.Name=="SaplingCrate" or w.Name=="Planter2" then
      NameStore = "Billy"
      Cashier =game:GetService("Workspace").Stores.SaplingCart.Billy
      StoreItems =l
      Counter= game:GetService("Workspace").Stores.SaplingCart.Counter.CFrame + Vector3.new(0, .4, 0)




    end

  end




  if NameStore~=nil then
    return{NameStore,Cashier,cashierIds[Cashier.Name],Counter,StoreItems}
  end
end

function autobuyv2(o)


  local item=nil
  local ltem

  item=finditem(o)

  if item==nil then
    notify("老猫","没有找到商品或者没有刷新，请你等待",4)
    repeat
      item=finditem(o)
      wait()

    until item~=nil

  end

  ltem=item[5]


  game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,item[4],lp, nil, ltem, true)



  game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted:InvokeServer({["Character"] = item[2], ["Name"] =item[1], ["ID"] = tonumber(item[3])}, "ConfirmPurchase")



  return o
end

function autobuy(o, r)
  bai.autocsdx = game.Workspace.PlayerModels.ChildAdded:connect(function(v)

    game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,bai.autobuyset,lp, nil, v, true)

  end)
  for e = 1, r do
    if bai.autobuystop==false then
      autobuyv2(o)
    end

  end
  spawn(function()
    wait(1)
    bai.autocsdx:Disconnect();
    bai.autocsdx=nil;
  end)
  return o, r
end
function tpitems(name)
  local plr = bai.cswjia
  local StealType = name

  for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == plr then
      if StealType ~= "TreeClass" then
        if v:FindFirstChild("Type") and tostring(v.Type.Value) == StealType then
          if v.PrimaryPart then
            game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,bai.itemset,lp, nil, v, true)
          end
        end
       else

        if v:FindFirstChild("TreeClass") then

          spawn(function()
            for i=1 ,20 do
              game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(v.WoodSection)
              game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v.WoodSection)
              game:GetService("RunService").Stepped:wait();
            end
            v.WoodSection.CFrame= bai.itemset
          end)
          task.wait()



        end





      end
    end

  end
  notfy("老猫","完成",4)
end

function shuaxinlb(zji)
  bai.dropdown={}
  if zji==true then
    for p, I in next,game.Players:GetChildren() do
      table.insert(bai.dropdown, I.Name)
    end
   else
    for p, I in next, game.Players:GetChildren() do
      if I ~= lp then
        table.insert(bai.dropdown, I.Name)
      end
    end
  end
end
shuaxinlb(true)
repeat task.wait() until game:IsLoaded()
game.StarterGui:SetCore("SendNotification", {
  Title = "老猫",
  Text = "作者:11264iwqw/老猫/父yu7/注意此脚本只用于测试封号概不负责",
  Icon = "",
  Duration = 5,
})

local library = {}
local ToggleUI = false
library.currentTab = nil
library.flags = {}

local services = setmetatable({}, {
  __index = function(t, k)
    return game.GetService(game, k)
  end
})

local mouse = services.Players.LocalPlayer:GetMouse()

function Tween(obj, t, data)
  services.TweenService:Create(obj, TweenInfo.new(t[1], Enum.EasingStyle[t[2]], Enum.EasingDirection[t[3]]), data):Play()
  return true
end

function Ripple(obj)
  spawn(function()
    if obj.ClipsDescendants ~= true then
      obj.ClipsDescendants = true
    end
    local Ripple = Instance.new("ImageLabel")
    Ripple.Name = "Ripple"
    Ripple.Parent = obj
    Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Ripple.BackgroundTransparency = 1.000
    Ripple.ZIndex = 8
    Ripple.Image = "rbxassetid://16785029075"
    Ripple.ImageTransparency = 0.800
    Ripple.ScaleType = Enum.ScaleType.Fit
    Ripple.ImageColor3 = Color3.fromRGB(255, 255, 255)
    Ripple.Position = UDim2.new((mouse.X - Ripple.AbsolutePosition.X) / obj.AbsoluteSize.X, 0, (mouse.Y - Ripple.AbsolutePosition.Y) / obj.AbsoluteSize.Y, 0)
    Tween(Ripple, {.3, 'Linear', 'InOut'}, {Position = UDim2.new(-5.5, 0, -5.5, 0), Size = UDim2.new(12, 0, 12, 0)})
    wait(0.15)
    Tween(Ripple, {.3, 'Linear', 'InOut'}, {ImageTransparency = 1})
    wait(.3)
    Ripple:Destroy()
  end)
end

local toggled = false

-- # Switch Tabs # --
local switchingTabs = false
function switchTab(new)
  if switchingTabs then return end
  local old = library.currentTab
  if old == nil then
    new[2].Visible = true
    library.currentTab = new
    services.TweenService:Create(new[1], TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
    services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0}):Play()
    return
  end

  if old[1] == new[1] then return end
  switchingTabs = true
  library.currentTab = new

  services.TweenService:Create(old[1], TweenInfo.new(0.1), {ImageTransparency = 0.2}):Play()
  services.TweenService:Create(new[1], TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
  services.TweenService:Create(old[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0.2}):Play()
  services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0}):Play()

  old[2].Visible = false
  new[2].Visible = true

  task.wait(0.1)

  switchingTabs = false
end

-- # Drag, Stolen from Kiriot or Wally # --
function drag(frame, hold)
  if not hold then
    hold = frame
  end
  local dragging
  local dragInput
  local dragStart
  local startPos

  local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
  end

  hold.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
      dragging = true
      dragStart = input.Position
      startPos = frame.Position

      input.Changed:Connect(function()
        if input.UserInputState == Enum.UserInputState.End then
          dragging = false
        end
      end)
    end
  end)

  frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
      dragInput = input
    end
  end)

  services.UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
      update(input)
    end
  end)
end

function library.new(library, name,theme)
  for _, v in next, services.CoreGui:GetChildren() do
    if v.Name == "qing" then
      v:Destroy()
    end
  end
  if theme == 'qing' then
    MainColor = Color3.fromRGB(10, 25, 255)
    Background = Color3.fromRGB(10, 25, 255)
    zyColor= Color3.fromRGB(10, 25, 255)
    beijingColor = Color3.fromRGB(10, 25, 255)
   else
    MainColor = Color3.fromRGB(0, 51, 179)
    Background = Color3.fromRGB(0, 51, 179)
    zyColor= Color3.fromRGB(0, 51, 179)
    beijingColor = Color3.fromRGB(0, 51, 179)
  end
  local dogent = Instance.new("ScreenGui")
  local OP = Instance.new("ImageLabel")
  local Main = Instance.new("Frame")
  local TabMain = Instance.new("Frame")
  local MainC = Instance.new("UICorner")
  local SB = Instance.new("Frame")
  local SBC = Instance.new("UICorner")
  local Side = Instance.new("Frame")
  local SideG = Instance.new("UIGradient")
  local TabBtns = Instance.new("ScrollingFrame")
  local TabBtnsL = Instance.new("UIListLayout")
  local ScriptTitle = Instance.new("TextLabel")
  local SBG = Instance.new("UIGradient")
  local Open = Instance.new("TextButton")
  local UIG=Instance.new("UIGradient")
  local DropShadowHolder = Instance.new("Frame")
  local DropShadow = Instance.new("ImageLabel")
  local UICornerMain = Instance.new("UICorner")
  local UIGradient=Instance.new("UIGradient")
  local UIGradientTitle=Instance.new("UIGradient")

  if syn and syn.protect_gui then syn.protect_gui(dogent) end

  dogent.Name = "qing"
  dogent.Parent = services.CoreGui

  function UiDestroy()
    dogent:Destroy()
  end

  function ToggleUILib()
    if not ToggleUI then
      dogent.Enabled = false
      ToggleUI = true
     else
      ToggleUI = false
      dogent.Enabled = true
    end
  end

  Main.Name = "Main"
  Main.Parent = dogent
  Main.AnchorPoint = Vector2.new(0.5, 0.5)
  Main.BackgroundColor3 = Background
  Main.BorderColor3 = MainColor
  Main.Position = UDim2.new(0.5, 0, 0.5, 0)
  Main.Size = UDim2.new(0, 572, 0, 353)
  Main.ZIndex = 1
  Main.Active = true
  Main.Draggable = true
  services.UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
      if Main.Visible == true then
        Main.Visible = false else
        Main.Visible = true
      end
    end
  end)
  drag(Main)

  UICornerMain.Parent = Main
  UICornerMain.CornerRadius = UDim.new(0,3)

  OP.Parent = Main
  OP.Image = "rbxassetid://16785029075"
  OP.Size = UDim2.new(0, 572, 0, 353)

  DropShadowHolder.Name = "DropShadowHolder"
  DropShadowHolder.Parent = Main
  DropShadowHolder.BackgroundTransparency = 1.000
  DropShadowHolder.BorderSizePixel = 0
  DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
  DropShadowHolder.BorderColor3 = Color3.fromRGB(255,255,255)
  DropShadowHolder.ZIndex = 0

  DropShadow.Name = "DropShadow"
  DropShadow.Parent = DropShadowHolder
  DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
  DropShadow.BackgroundTransparency = 1.000
  DropShadow.BorderSizePixel = 0
  DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
  DropShadow.Size = UDim2.new(1, 43, 1, 43)
  DropShadow.ZIndex = 0
  DropShadow.Image = "rbxassetid://6015897843"
  DropShadow.ImageColor3 = Color3.fromRGB(255,255,255)
  DropShadow.ImageTransparency = 0.500
  DropShadow.ScaleType = Enum.ScaleType.Slice
  DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)


  UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.10, Color3.fromRGB(255, 127, 0)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(0.30, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(139, 0, 255)), ColorSequenceKeypoint.new(0.70, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(255, 127, 0)), ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 0))}
  UIGradient.Parent = DropShadow

  local TweenService = game:GetService("TweenService")
  local tweeninfo = TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
  local tween = TweenService:Create(UIGradient, tweeninfo, {Rotation = 360})
  tween:Play()

  function toggleui()
    toggled = not toggled
    spawn(function()
      if toggled then wait(0.3) end
    end)
    Tween(Main, {0.3, 'Sine', 'InOut'}, {
      Size = UDim2.new(0, 609, 0, (toggled and 505 or 0))
    })
  end

  TabMain.Name = "TabMain"
  TabMain.Parent = Main
  TabMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TabMain.BackgroundTransparency = 1.000
  TabMain.Position = UDim2.new(0.217000037, 0, 0, 3)
  TabMain.Size = UDim2.new(0, 448, 0, 353)

  MainC.CornerRadius = UDim.new(0, 5.5)
  MainC.Name = "MainC"
  MainC.Parent = Frame

  SB.Name = "SB"
  SB.Parent = Main
  SB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  SB.BorderColor3 = MainColor
  SB.Size = UDim2.new(0, 8, 0, 353)

  SBC.CornerRadius = UDim.new(0, 6)
  SBC.Name = "SBC"
  SBC.Parent = SB

  Side.Name = "Side"
  Side.Parent = SB
  Side.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Side.BorderColor3 = Color3.fromRGB(255, 255, 255)
  Side.BorderSizePixel = 0
  Side.ClipsDescendants = true
  Side.Position = UDim2.new(1, 0, 0, 0)
  Side.Size = UDim2.new(0, 110, 0, 353)

  SideG.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, zyColor), ColorSequenceKeypoint.new(1.00, zyColor)}
  SideG.Rotation = 90
  SideG.Name = "SideG"
  SideG.Parent = Side

  TabBtns.Name = "TabBtns"
  TabBtns.Parent = Side
  TabBtns.Active = true
  TabBtns.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TabBtns.BackgroundTransparency = 1.000
  TabBtns.BorderSizePixel = 0
  TabBtns.Position = UDim2.new(0, 0, 0.0973535776, 0)
  TabBtns.Size = UDim2.new(0, 110, 0, 318)
  TabBtns.CanvasSize = UDim2.new(0, 0, 1, 0)
  TabBtns.ScrollBarThickness = 0

  TabBtnsL.Name = "TabBtnsL"
  TabBtnsL.Parent = TabBtns
  TabBtnsL.SortOrder = Enum.SortOrder.LayoutOrder
  TabBtnsL.Padding = UDim.new(0, 12)

  ScriptTitle.Name = "ScriptTitle"
  ScriptTitle.Parent = Side
  ScriptTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ScriptTitle.BackgroundTransparency = 1.000
  ScriptTitle.Position = UDim2.new(0, 0, 0.00953488424, 0)
  ScriptTitle.Size = UDim2.new(0, 102, 0, 20)
  ScriptTitle.Font = Enum.Font.GothamSemibold
  ScriptTitle.Text = name
  ScriptTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
  ScriptTitle.TextSize = 14.000
  ScriptTitle.TextScaled = true
  ScriptTitle.TextXAlignment = Enum.TextXAlignment.Left

  UIGradientTitle.Parent = ScriptTitle

  local function NPLHKB_fake_script()
    local script = Instance.new('LocalScript', ScriptTitle)

    local button = script.Parent
    local gradient = button.UIGradient
    local ts = game:GetService("TweenService")
    local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local offset = {Offset = Vector2.new(1, 0)}
    local create = ts:Create(gradient, ti, offset)
    local startingPos = Vector2.new(-1, 0)
    local list = {}
    local s, kpt = ColorSequence.new, ColorSequenceKeypoint.new
    local counter = 0
    local status = "down"
    gradient.Offset = startingPos
    local function rainbowColors()
      local sat, val = 255, 255
      for i = 1, 10 do
        local hue = i * 17
        table.insert(list, Color3.fromHSV(hue / 255, sat / 255, val / 255))
      end
    end
    rainbowColors()
    gradient.Color = s({
      kpt(0, list[#list]),
      kpt(0.5, list[#list - 1]),
      kpt(1, list[#list - 2])
    })
    counter = #list
    local function animate()
      create:Play()
      create.Completed:Wait()
      gradient.Offset = startingPos
      gradient.Rotation = 180
      if counter == #list - 1 and status == "down" then
        gradient.Color = s({
          kpt(0, gradient.Color.Keypoints[1].Value),
          kpt(0.5, list[#list]),
          kpt(1, list[1])
        })
        counter = 1
        status = "up"
       elseif counter == #list and status == "down" then
        gradient.Color = s({
          kpt(0, gradient.Color.Keypoints[1].Value),
          kpt(0.5, list[1]),
          kpt(1, list[2])
        })
        counter = 2
        status = "up"
       elseif counter <= #list - 2 and status == "down" then
        gradient.Color = s({
          kpt(0, gradient.Color.Keypoints[1].Value),
          kpt(0.5, list[counter + 1]),
          kpt(1, list[counter + 2])
        })
        counter = counter + 2
        status = "up"
      end
      create:Play()
      create.Completed:Wait()
      gradient.Offset = startingPos
      gradient.Rotation = 0
      if counter == #list - 1 and status == "up" then
        gradient.Color = s({

          kpt(0, list[1]),
          kpt(0.5, list[#list]),
          kpt(1, gradient.Color.Keypoints[3].Value)
        })
        counter = 1
        status = "down"
       elseif counter == #list and status == "up" then
        gradient.Color = s({
          kpt(0, list[2]),
          kpt(0.5, list[1]),
          kpt(1, gradient.Color.Keypoints[3].Value)
        })
        counter = 2
        status = "down"
       elseif counter <= #list - 2 and status == "up" then
        gradient.Color = s({
          kpt(0, list[counter + 2]),
          kpt(0.5, list[counter + 1]),
          kpt(1, gradient.Color.Keypoints[3].Value)
        })
        counter = counter + 2
        status = "down"
      end
      animate()
    end
    animate()

  end
  coroutine.wrap(NPLHKB_fake_script)()

  SBG.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, zyColor), ColorSequenceKeypoint.new(1.00, zyColor)}
  SBG.Rotation = 90
  SBG.Name = "SBG"
  SBG.Parent = SB

  TabBtnsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    TabBtns.CanvasSize = UDim2.new(0, 0, 0, TabBtnsL.AbsoluteContentSize.Y + 18)
  end)
  Open.Name = "Open"
  Open.Parent = dogent
  Open.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
  Open.Position = UDim2.new(0.00829315186, 0, 0.31107837, 0)
  Open.Size = UDim2.new(0, 61, 0, 32)
  Open.Font = Enum.Font.SourceSans
  Open.Text = "隐藏/打开"
  Open.TextColor3 = Color3.fromRGB(255, 255, 255)
  Open.TextSize = 14.000
  Open.Active = true
  Open.Draggable = true
  Open.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
  end)
  UIG.Parent = Open
  local window = {}
  function window.Tab(window, name, icon)
    local Tab = Instance.new("ScrollingFrame")
    local TabIco = Instance.new("ImageLabel")
    local TabText = Instance.new("TextLabel")
    local TabBtn = Instance.new("TextButton")
    local TabL = Instance.new("UIListLayout")

    Tab.Name = "Tab"
    Tab.Parent = TabMain
    Tab.Active = true
    Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tab.BackgroundTransparency = 1.000
    Tab.Size = UDim2.new(1, 0, 1, 0)
    Tab.ScrollBarThickness = 2
    Tab.Visible = false

    TabIco.Name = "TabIco"
    TabIco.Parent = TabBtns
    TabIco.BackgroundTransparency = 1.000
    TabIco.BorderSizePixel = 0
    TabIco.Size = UDim2.new(0, 24, 0, 24)
    TabIco.Image = ("rbxassetid://%s"):format((icon or 4370341699))
    TabIco.ImageTransparency = 0.2

    TabText.Name = "TabText"
    TabText.Parent = TabIco
    TabText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabText.BackgroundTransparency = 1.000
    TabText.Position = UDim2.new(1.41666663, 0, 0, 0)
    TabText.Size = UDim2.new(0, 76, 0, 24)
    TabText.Font = Enum.Font.GothamSemibold
    TabText.Text = name
    TabText.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabText.TextSize = 14.000
    TabText.TextXAlignment = Enum.TextXAlignment.Left
    TabText.TextTransparency = 0.2

    TabBtn.Name = "TabBtn"
    TabBtn.Parent = TabIco
    TabBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabBtn.BackgroundTransparency = 1.000
    TabBtn.BorderSizePixel = 0
    TabBtn.Size = UDim2.new(0, 110, 0, 24)
    TabBtn.AutoButtonColor = false
    TabBtn.Font = Enum.Font.SourceSans
    TabBtn.Text = ""
    TabBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
    TabBtn.TextSize = 14.000

    TabL.Name = "TabL"
    TabL.Parent = Tab
    TabL.SortOrder = Enum.SortOrder.LayoutOrder
    TabL.Padding = UDim.new(0, 4)

    TabBtn.MouseButton1Click:Connect(function()
      spawn(function()
        Ripple(TabBtn)
      end)
      switchTab({TabIco, Tab})
    end)

    if library.currentTab == nil then switchTab({TabIco, Tab}) end

    TabL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
      Tab.CanvasSize = UDim2.new(0, 0, 0, TabL.AbsoluteContentSize.Y + 8)
    end)

    local tab = {}
    function tab.section(tab, name, TabVal)
      local Section = Instance.new("Frame")
      local SectionC = Instance.new("UICorner")
      local SectionText = Instance.new("TextLabel")
      local SectionOpen = Instance.new("ImageLabel")
      local SectionOpened = Instance.new("ImageLabel")
      local SectionToggle = Instance.new("ImageButton")
      local Objs = Instance.new("Frame")
      local ObjsL = Instance.new("UIListLayout")

      Section.Name = "Section"
      Section.Parent = Tab
      Section.BackgroundColor3 = Color3.fromRGB(102, 190, 193)
      Section.BackgroundTransparency = 1.000
      Section.BorderSizePixel = 0
      Section.ClipsDescendants = true
      Section.Size = UDim2.new(0.981000006, 0, 0, 36)

      SectionC.CornerRadius = UDim.new(0, 6)
      SectionC.Name = "SectionC"
      SectionC.Parent = Section

      SectionText.Name = "SectionText"
      SectionText.Parent = Section
      SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      SectionText.BackgroundTransparency = 1.000
      SectionText.Position = UDim2.new(0.0887396261, 0, 0, 0)
      SectionText.Size = UDim2.new(0, 401, 0, 36)
      SectionText.Font = Enum.Font.GothamSemibold
      SectionText.Text = name
      SectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
      SectionText.TextSize = 16.000
      SectionText.TextXAlignment = Enum.TextXAlignment.Left

      SectionOpen.Name = "SectionOpen"
      SectionOpen.Parent = SectionText
      SectionOpen.BackgroundTransparency = 1
      SectionOpen.BorderSizePixel = 0
      SectionOpen.Position = UDim2.new(0, -33, 0, 5)
      SectionOpen.Size = UDim2.new(0, 26, 0, 26)
      SectionOpen.Image = "http://www.roblox.com/asset/?id=6031302934"

      SectionOpened.Name = "SectionOpened"
      SectionOpened.Parent = SectionOpen
      SectionOpened.BackgroundTransparency = 1.000
      SectionOpened.BorderSizePixel = 0
      SectionOpened.Size = UDim2.new(0, 26, 0, 26)
      SectionOpened.Image = "http://www.roblox.com/asset/?id=6031302932"
      SectionOpened.ImageTransparency = 1.000

      SectionToggle.Name = "SectionToggle"
      SectionToggle.Parent = SectionOpen
      SectionToggle.BackgroundTransparency = 1
      SectionToggle.BorderSizePixel = 0
      SectionToggle.Size = UDim2.new(0, 26, 0, 26)

      Objs.Name = "Objs"
      Objs.Parent = Section
      Objs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Objs.BackgroundTransparency = 1
      Objs.BorderSizePixel = 0
      Objs.Position = UDim2.new(0, 6, 0, 36)
      Objs.Size = UDim2.new(0.986347735, 0, 0, 0)

      ObjsL.Name = "ObjsL"
      ObjsL.Parent = Objs
      ObjsL.SortOrder = Enum.SortOrder.LayoutOrder
      ObjsL.Padding = UDim.new(0, 8)

      local open = TabVal
      if TabVal ~= false then
        Section.Size = UDim2.new(0.981000006, 0, 0, open and 36 + ObjsL.AbsoluteContentSize.Y + 8 or 36)
        SectionOpened.ImageTransparency = (open and 0 or 1)
        SectionOpen.ImageTransparency = (open and 1 or 0)
      end

      SectionToggle.MouseButton1Click:Connect(function()
        open = not open
        Section.Size = UDim2.new(0.981000006, 0, 0, open and 36 + ObjsL.AbsoluteContentSize.Y + 8 or 36)
        SectionOpened.ImageTransparency = (open and 0 or 1)
        SectionOpen.ImageTransparency = (open and 1 or 0)
      end)

      ObjsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        if not open then return end
        Section.Size = UDim2.new(0.981000006, 0, 0, 36 + ObjsL.AbsoluteContentSize.Y + 8)
      end)

      local section = {}
      function section.Button(section, text, callback)
        local callback = callback or function() end

        local BtnModule = Instance.new("Frame")
        local Btn = Instance.new("TextButton")
        local BtnC = Instance.new("UICorner")

        BtnModule.Name = "BtnModule"
        BtnModule.Parent = Objs
        BtnModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        BtnModule.BackgroundTransparency = 1.000
        BtnModule.BorderSizePixel = 0
        BtnModule.Position = UDim2.new(0, 0, 0, 0)
        BtnModule.Size = UDim2.new(0, 428, 0, 38)

        Btn.Name = "Btn"
        Btn.Parent = BtnModule
        Btn.BackgroundColor3 = zyColor
        Btn.BorderSizePixel = 0
        Btn.Size = UDim2.new(0, 428, 0, 38)
        Btn.AutoButtonColor = false
        Btn.Font = Enum.Font.GothamSemibold
        Btn.Text = "   " .. text
        Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        Btn.TextSize = 16.000
        Btn.TextXAlignment = Enum.TextXAlignment.Left

        BtnC.CornerRadius = UDim.new(0, 6)
        BtnC.Name = "BtnC"
        BtnC.Parent = Btn

        Btn.MouseButton1Click:Connect(function()
          spawn(function()
            Ripple(Btn)
          end)
          spawn(callback)
        end)
      end

      function section:Label(text)
        local LabelModule = Instance.new("Frame")
        local TextLabel = Instance.new("TextLabel")
        local LabelC = Instance.new("UICorner")

        LabelModule.Name = "LabelModule"
        LabelModule.Parent = Objs
        LabelModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelModule.BackgroundTransparency = 1.000
        LabelModule.BorderSizePixel = 0
        LabelModule.Position = UDim2.new(0, 0, NAN, 0)
        LabelModule.Size = UDim2.new(0, 428, 0, 19)

        TextLabel.Parent = LabelModule
        TextLabel.BackgroundColor3 = zyColor
        TextLabel.Size = UDim2.new(0, 428, 0, 22)
        TextLabel.Font = Enum.Font.GothamSemibold
        TextLabel.Text = text
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 14.000

        LabelC.CornerRadius = UDim.new(0, 6)
        LabelC.Name = "LabelC"
        LabelC.Parent = TextLabel
        return TextLabel
      end

      function section.Toggle(section, text, flag, enabled, callback)
        local callback = callback or function() end
        local enabled = enabled or false
        assert(text, "No text provided")
        assert(flag, "No flag provided")

        library.flags[flag] = enabled

        local ToggleModule = Instance.new("Frame")
        local ToggleBtn = Instance.new("TextButton")
        local ToggleBtnC = Instance.new("UICorner")
        local ToggleDisable = Instance.new("Frame")
        local ToggleSwitch = Instance.new("Frame")
        local ToggleSwitchC = Instance.new("UICorner")
        local ToggleDisableC = Instance.new("UICorner")

        ToggleModule.Name = "ToggleModule"
        ToggleModule.Parent = Objs
        ToggleModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ToggleModule.BackgroundTransparency = 1.000
        ToggleModule.BorderSizePixel = 0
        ToggleModule.Position = UDim2.new(0, 0, 0, 0)
        ToggleModule.Size = UDim2.new(0, 428, 0, 38)

        ToggleBtn.Name = "ToggleBtn"
        ToggleBtn.Parent = ToggleModule
        ToggleBtn.BackgroundColor3 = zyColor
        ToggleBtn.BorderSizePixel = 0
        ToggleBtn.Size = UDim2.new(0, 428, 0, 38)
        ToggleBtn.AutoButtonColor = false
        ToggleBtn.Font = Enum.Font.GothamSemibold
        ToggleBtn.Text = "   " .. text
        ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleBtn.TextSize = 16.000
        ToggleBtn.TextXAlignment = Enum.TextXAlignment.Left

        ToggleBtnC.CornerRadius = UDim.new(0, 6)
        ToggleBtnC.Name = "ToggleBtnC"
        ToggleBtnC.Parent = ToggleBtn

        ToggleDisable.Name = "ToggleDisable"
        ToggleDisable.Parent = ToggleBtn
        ToggleDisable.BackgroundColor3 = Background
        ToggleDisable.BorderSizePixel = 0
        ToggleDisable.Position = UDim2.new(0.901869178, 0, 0.208881587, 0)
        ToggleDisable.Size = UDim2.new(0, 36, 0, 22)

        ToggleSwitch.Name = "ToggleSwitch"
        ToggleSwitch.Parent = ToggleDisable
        ToggleSwitch.BackgroundColor3 = beijingColor
        ToggleSwitch.Size = UDim2.new(0, 24, 0, 22)

        ToggleSwitchC.CornerRadius = UDim.new(0, 6)
        ToggleSwitchC.Name = "ToggleSwitchC"
        ToggleSwitchC.Parent = ToggleSwitch

        ToggleDisableC.CornerRadius = UDim.new(0, 6)
        ToggleDisableC.Name = "ToggleDisableC"
        ToggleDisableC.Parent = ToggleDisable

        local funcs = {
          SetState = function(self, state)
            if state == nil then state = not library.flags[flag] end
            if library.flags[flag] == state then return end
            services.TweenService:Create(ToggleSwitch, TweenInfo.new(0.2), {Position = UDim2.new(0, (state and ToggleSwitch.Size.X.Offset / 2 or 0), 0, 0), BackgroundColor3 = (state and Color3.fromRGB(255, 255, 255) or beijingColor)}):Play()
            library.flags[flag] = state
            callback(state)
          end,
          Module = ToggleModule
        }

        if enabled ~= false then
          funcs:SetState(flag,true)
        end

        ToggleBtn.MouseButton1Click:Connect(function()
          funcs:SetState()
        end)
        return funcs
      end

      function section.Keybind(section, text, default, callback)
        local callback = callback or function() end
        assert(text, "No text provided")
        assert(default, "No default key provided")

        local default = (typeof(default) == "string" and Enum.KeyCode[default] or default)
        local banned = {
          Return = true;
          Space = true;
          Tab = true;
          Backquote = true;
          CapsLock = true;
          Escape = true;
          Unknown = true;
        }
        local shortNames = {
          RightControl = 'Right Ctrl',
          LeftControl = 'Left Ctrl',
          LeftShift = 'Left Shift',
          RightShift = 'Right Shift',
          Semicolon = ";",
          Quote = '"',
          LeftBracket = '[',
          RightBracket = ']',
          Equals = '=',
          Minus = '-',
          RightAlt = 'Right Alt',
          LeftAlt = 'Left Alt'
        }

        local bindKey = default
        local keyTxt = (default and (shortNames[default.Name] or default.Name) or "None")

        local KeybindModule = Instance.new("Frame")
        local KeybindBtn = Instance.new("TextButton")
        local KeybindBtnC = Instance.new("UICorner")
        local KeybindValue = Instance.new("TextButton")
        local KeybindValueC = Instance.new("UICorner")
        local KeybindL = Instance.new("UIListLayout")
        local UIPadding = Instance.new("UIPadding")

        KeybindModule.Name = "KeybindModule"
        KeybindModule.Parent = Objs
        KeybindModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        KeybindModule.BackgroundTransparency = 1.000
        KeybindModule.BorderSizePixel = 0
        KeybindModule.Position = UDim2.new(0, 0, 0, 0)
        KeybindModule.Size = UDim2.new(0, 428, 0, 38)

        KeybindBtn.Name = "KeybindBtn"
        KeybindBtn.Parent = KeybindModule
        KeybindBtn.BackgroundColor3 = zyColor
        KeybindBtn.BorderSizePixel = 0
        KeybindBtn.Size = UDim2.new(0, 428, 0, 38)
        KeybindBtn.AutoButtonColor = false
        KeybindBtn.Font = Enum.Font.GothamSemibold
        KeybindBtn.Text = "   " .. text
        KeybindBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        KeybindBtn.TextSize = 16.000
        KeybindBtn.TextXAlignment = Enum.TextXAlignment.Left

        KeybindBtnC.CornerRadius = UDim.new(0, 6)
        KeybindBtnC.Name = "KeybindBtnC"
        KeybindBtnC.Parent = KeybindBtn

        KeybindValue.Name = "KeybindValue"
        KeybindValue.Parent = KeybindBtn
        KeybindValue.BackgroundColor3 = Background
        KeybindValue.BorderSizePixel = 0
        KeybindValue.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
        KeybindValue.Size = UDim2.new(0, 100, 0, 28)
        KeybindValue.AutoButtonColor = false
        KeybindValue.Font = Enum.Font.Gotham
        KeybindValue.Text = keyTxt
        KeybindValue.TextColor3 = Color3.fromRGB(255, 255, 255)
        KeybindValue.TextSize = 14.000

        KeybindValueC.CornerRadius = UDim.new(0, 6)
        KeybindValueC.Name = "KeybindValueC"
        KeybindValueC.Parent = KeybindValue

        KeybindL.Name = "KeybindL"
        KeybindL.Parent = KeybindBtn
        KeybindL.HorizontalAlignment = Enum.HorizontalAlignment.Right
        KeybindL.SortOrder = Enum.SortOrder.LayoutOrder
        KeybindL.VerticalAlignment = Enum.VerticalAlignment.Center

        UIPadding.Parent = KeybindBtn
        UIPadding.PaddingRight = UDim.new(0, 6)

        services.UserInputService.InputBegan:Connect(function(inp, gpe)
          if gpe then return end
          if inp.UserInputType ~= Enum.UserInputType.Keyboard then return end
          if inp.KeyCode ~= bindKey then return end
          callback(bindKey.Name)
        end)

        KeybindValue.MouseButton1Click:Connect(function()
          KeybindValue.Text = "..."
          wait()
          local key, uwu = services.UserInputService.InputEnded:Wait()
          local keyName = tostring(key.KeyCode.Name)
          if key.UserInputType ~= Enum.UserInputType.Keyboard then
            KeybindValue.Text = keyTxt
            return
          end
          if banned[keyName] then
            KeybindValue.Text = keyTxt
            return
          end
          wait()
          bindKey = Enum.KeyCode[keyName]
          KeybindValue.Text = shortNames[keyName] or keyName
        end)

        KeybindValue:GetPropertyChangedSignal("TextBounds"):Connect(function()
          KeybindValue.Size = UDim2.new(0, KeybindValue.TextBounds.X + 30, 0, 28)
        end)
        KeybindValue.Size = UDim2.new(0, KeybindValue.TextBounds.X + 30, 0, 28)
      end

      function section.Textbox(section, text, flag, default, callback)
        local callback = callback or function() end
        assert(text, "No text provided")
        assert(flag, "No flag provided")
        assert(default, "No default text provided")

        library.flags[flag] = default

        local TextboxModule = Instance.new("Frame")
        local TextboxBack = Instance.new("TextButton")
        local TextboxBackC = Instance.new("UICorner")
        local BoxBG = Instance.new("TextButton")
        local BoxBGC = Instance.new("UICorner")
        local TextBox = Instance.new("TextBox")
        local TextboxBackL = Instance.new("UIListLayout")
        local TextboxBackP = Instance.new("UIPadding")

        TextboxModule.Name = "TextboxModule"
        TextboxModule.Parent = Objs
        TextboxModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextboxModule.BackgroundTransparency = 1.000
        TextboxModule.BorderSizePixel = 0
        TextboxModule.Position = UDim2.new(0, 0, 0, 0)
        TextboxModule.Size = UDim2.new(0, 428, 0, 38)

        TextboxBack.Name = "TextboxBack"
        TextboxBack.Parent = TextboxModule
        TextboxBack.BackgroundColor3 = zyColor
        TextboxBack.BorderSizePixel = 0
        TextboxBack.Size = UDim2.new(0, 428, 0, 38)
        TextboxBack.AutoButtonColor = false
        TextboxBack.Font = Enum.Font.GothamSemibold
        TextboxBack.Text = "   " .. text
        TextboxBack.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextboxBack.TextSize = 16.000
        TextboxBack.TextXAlignment = Enum.TextXAlignment.Left

        TextboxBackC.CornerRadius = UDim.new(0, 6)
        TextboxBackC.Name = "TextboxBackC"
        TextboxBackC.Parent = TextboxBack

        BoxBG.Name = "BoxBG"
        BoxBG.Parent = TextboxBack
        BoxBG.BackgroundColor3 = Background
        BoxBG.BorderSizePixel = 0
        BoxBG.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
        BoxBG.Size = UDim2.new(0, 100, 0, 28)
        BoxBG.AutoButtonColor = false
        BoxBG.Font = Enum.Font.Gotham
        BoxBG.Text = ""
        BoxBG.TextColor3 = Color3.fromRGB(255, 255, 255)
        BoxBG.TextSize = 14.000

        BoxBGC.CornerRadius = UDim.new(0, 6)
        BoxBGC.Name = "BoxBGC"
        BoxBGC.Parent = BoxBG

        TextBox.Parent = BoxBG
        TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.BackgroundTransparency = 1.000
        TextBox.BorderSizePixel = 0
        TextBox.Size = UDim2.new(1, 0, 1, 0)
        TextBox.Font = Enum.Font.Gotham
        TextBox.Text = default
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.TextSize = 14.000

        TextboxBackL.Name = "TextboxBackL"
        TextboxBackL.Parent = TextboxBack
        TextboxBackL.HorizontalAlignment = Enum.HorizontalAlignment.Right
        TextboxBackL.SortOrder = Enum.SortOrder.LayoutOrder
        TextboxBackL.VerticalAlignment = Enum.VerticalAlignment.Center

        TextboxBackP.Name = "TextboxBackP"
        TextboxBackP.Parent = TextboxBack
        TextboxBackP.PaddingRight = UDim.new(0, 6)

        TextBox.FocusLost:Connect(function()
          if TextBox.Text == "" then
            TextBox.Text = default
          end
          library.flags[flag] = TextBox.Text
          callback(TextBox.Text)
        end)

        TextBox:GetPropertyChangedSignal("TextBounds"):Connect(function()
          BoxBG.Size = UDim2.new(0, TextBox.TextBounds.X + 30, 0, 28)
        end)
        BoxBG.Size = UDim2.new(0, TextBox.TextBounds.X + 30, 0, 28)
      end

      function section.Slider(section, text, flag, default, min, max, precise, callback)
        local callback = callback or function() end
        local min = min or 1
        local max = max or 10
        local default = default or min
        local precise = precise or false

        library.flags[flag] = default

        assert(text, "No text provided")
        assert(flag, "No flag provided")
        assert(default, "No default value provided")

        local SliderModule = Instance.new("Frame")
        local SliderBack = Instance.new("TextButton")
        local SliderBackC = Instance.new("UICorner")
        local SliderBar = Instance.new("Frame")
        local SliderBarC = Instance.new("UICorner")
        local SliderPart = Instance.new("Frame")
        local SliderPartC = Instance.new("UICorner")
        local SliderValBG = Instance.new("TextButton")
        local SliderValBGC = Instance.new("UICorner")
        local SliderValue = Instance.new("TextBox")
        local MinSlider = Instance.new("TextButton")
        local AddSlider = Instance.new("TextButton")

        SliderModule.Name = "SliderModule"
        SliderModule.Parent = Objs
        SliderModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderModule.BackgroundTransparency = 1.000
        SliderModule.BorderSizePixel = 0
        SliderModule.Position = UDim2.new(0, 0, 0, 0)
        SliderModule.Size = UDim2.new(0, 428, 0, 38)

        SliderBack.Name = "SliderBack"
        SliderBack.Parent = SliderModule
        SliderBack.BackgroundColor3 = zyColor
        SliderBack.BorderSizePixel = 0
        SliderBack.Size = UDim2.new(0, 428, 0, 38)
        SliderBack.AutoButtonColor = false
        SliderBack.Font = Enum.Font.GothamSemibold
        SliderBack.Text = "   " .. text
        SliderBack.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderBack.TextSize = 16.000
        SliderBack.TextXAlignment = Enum.TextXAlignment.Left

        SliderBackC.CornerRadius = UDim.new(0, 6)
        SliderBackC.Name = "SliderBackC"
        SliderBackC.Parent = SliderBack

        SliderBar.Name = "SliderBar"
        SliderBar.Parent = SliderBack
        SliderBar.AnchorPoint = Vector2.new(0, 0.5)
        SliderBar.BackgroundColor3 = Background
        SliderBar.BorderSizePixel = 0
        SliderBar.Position = UDim2.new(0.369000018, 40, 0.5, 0)
        SliderBar.Size = UDim2.new(0, 140, 0, 12)

        SliderBarC.CornerRadius = UDim.new(0, 4)
        SliderBarC.Name = "SliderBarC"
        SliderBarC.Parent = SliderBar

        SliderPart.Name = "SliderPart"
        SliderPart.Parent = SliderBar
        SliderPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderPart.BorderSizePixel = 0
        SliderPart.Size = UDim2.new(0, 54, 0, 13)

        SliderPartC.CornerRadius = UDim.new(0, 4)
        SliderPartC.Name = "SliderPartC"
        SliderPartC.Parent = SliderPart

        SliderValBG.Name = "SliderValBG"
        SliderValBG.Parent = SliderBack
        SliderValBG.BackgroundColor3 = Background
        SliderValBG.BorderSizePixel = 0
        SliderValBG.Position = UDim2.new(0.883177578, 0, 0.131578952, 0)
        SliderValBG.Size = UDim2.new(0, 44, 0, 28)
        SliderValBG.AutoButtonColor = false
        SliderValBG.Font = Enum.Font.Gotham
        SliderValBG.Text = ""
        SliderValBG.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderValBG.TextSize = 14.000

        SliderValBGC.CornerRadius = UDim.new(0, 6)
        SliderValBGC.Name = "SliderValBGC"
        SliderValBGC.Parent = SliderValBG

        SliderValue.Name = "SliderValue"
        SliderValue.Parent = SliderValBG
        SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderValue.BackgroundTransparency = 1.000
        SliderValue.BorderSizePixel = 0
        SliderValue.Size = UDim2.new(1, 0, 1, 0)
        SliderValue.Font = Enum.Font.Gotham
        SliderValue.Text = "1000"
        SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderValue.TextSize = 14.000

        MinSlider.Name = "MinSlider"
        MinSlider.Parent = SliderModule
        MinSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MinSlider.BackgroundTransparency = 1.000
        MinSlider.BorderSizePixel = 0
        MinSlider.Position = UDim2.new(0.296728969, 40, 0.236842096, 0)
        MinSlider.Size = UDim2.new(0, 20, 0, 20)
        MinSlider.Font = Enum.Font.Gotham
        MinSlider.Text = "-"
        MinSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
        MinSlider.TextSize = 24.000
        MinSlider.TextWrapped = true

        AddSlider.Name = "AddSlider"
        AddSlider.Parent = SliderModule
        AddSlider.AnchorPoint = Vector2.new(0, 0.5)
        AddSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        AddSlider.BackgroundTransparency = 1.000
        AddSlider.BorderSizePixel = 0
        AddSlider.Position = UDim2.new(0.810906529, 0, 0.5, 0)
        AddSlider.Size = UDim2.new(0, 20, 0, 20)
        AddSlider.Font = Enum.Font.Gotham
        AddSlider.Text = "+"
        AddSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
        AddSlider.TextSize = 24.000
        AddSlider.TextWrapped = true

        local funcs = {
          SetValue = function(self, value)
            local percent = (mouse.X - SliderBar.AbsolutePosition.X) / SliderBar.AbsoluteSize.X
            if value then
              percent = (value - min) / (max - min)
            end
            percent = math.clamp(percent, 0, 1)
            if precise then
              value = value or tonumber(string.format("%.1f", tostring(min + (max - min) * percent)))
             else
              value = value or math.floor(min + (max - min) * percent)
            end
            library.flags[flag] = tonumber(value)
            SliderValue.Text = tostring(value)
            SliderPart.Size = UDim2.new(percent, 0, 1, 0)
            callback(tonumber(value))
          end
        }

        MinSlider.MouseButton1Click:Connect(function()
          local currentValue = library.flags[flag]
          currentValue = math.clamp(currentValue - 1, min, max)
          funcs:SetValue(currentValue)
        end)

        AddSlider.MouseButton1Click:Connect(function()
          local currentValue = library.flags[flag]
          currentValue = math.clamp(currentValue + 1, min, max)
          funcs:SetValue(currentValue)
        end)

        funcs:SetValue(default)

        local dragging, boxFocused, allowed = false, false, {
          [""] = true,
          ["-"] = true
        }

        SliderBar.InputBegan:Connect(function(input)
          if input.UserInputType == Enum.UserInputType.MouseButton1 then
            funcs:SetValue()
            dragging = true
          end
        end)

        services.UserInputService.InputEnded:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
          end
        end)

        services.UserInputService.InputChanged:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            funcs:SetValue()
          end
        end)

        SliderBar.InputBegan:Connect(function(input)
          if input.UserInputType == Enum.UserInputType.Touch then
            funcs:SetValue()
            dragging = true
          end
        end)

        services.UserInputService.InputEnded:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
          end
        end)

        services.UserInputService.InputChanged:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.Touch then
            funcs:SetValue()
          end
        end)

        SliderValue.Focused:Connect(function()
          boxFocused = true
        end)

        SliderValue.FocusLost:Connect(function()
          boxFocused = false
          if SliderValue.Text == "" then
            funcs:SetValue(default)
          end
        end)

        SliderValue:GetPropertyChangedSignal("Text"):Connect(function()
          if not boxFocused then return end
          SliderValue.Text = SliderValue.Text:gsub("%D+", "")

          local text = SliderValue.Text

          if not tonumber(text) then
            SliderValue.Text = SliderValue.Text:gsub('%D+', '')
           elseif not allowed[text] then
            if tonumber(text) > max then
              text = max
              SliderValue.Text = tostring(max)
            end
            funcs:SetValue(tonumber(text))
          end
        end)

        return funcs
      end
      function section.Dropdown(section, text, flag, options, callback)
        local callback = callback or function() end
        local options = options or {}
        assert(text, "No text provided")
        assert(flag, "No flag provided")

        library.flags[flag] = nil

        local DropdownModule = Instance.new("Frame")
        local DropdownTop = Instance.new("TextButton")
        local DropdownTopC = Instance.new("UICorner")
        local DropdownOpen = Instance.new("TextButton")
        local DropdownText = Instance.new("TextBox")
        local DropdownModuleL = Instance.new("UIListLayout")
        local Option = Instance.new("TextButton")
        local OptionC = Instance.new("UICorner")

        DropdownModule.Name = "DropdownModule"
        DropdownModule.Parent = Objs
        DropdownModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropdownModule.BackgroundTransparency = 1.000
        DropdownModule.BorderSizePixel = 0
        DropdownModule.ClipsDescendants = true
        DropdownModule.Position = UDim2.new(0, 0, 0, 0)
        DropdownModule.Size = UDim2.new(0, 428, 0, 38)

        DropdownTop.Name = "DropdownTop"
        DropdownTop.Parent = DropdownModule
        DropdownTop.BackgroundColor3 = zyColor
        DropdownTop.BorderSizePixel = 0
        DropdownTop.Size = UDim2.new(0, 428, 0, 38)
        DropdownTop.AutoButtonColor = false
        DropdownTop.Font = Enum.Font.GothamSemibold
        DropdownTop.Text = ""
        DropdownTop.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownTop.TextSize = 16.000
        DropdownTop.TextXAlignment = Enum.TextXAlignment.Left

        DropdownTopC.CornerRadius = UDim.new(0, 6)
        DropdownTopC.Name = "DropdownTopC"
        DropdownTopC.Parent = DropdownTop

        DropdownOpen.Name = "DropdownOpen"
        DropdownOpen.Parent = DropdownTop
        DropdownOpen.AnchorPoint = Vector2.new(0, 0.5)
        DropdownOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropdownOpen.BackgroundTransparency = 1.000
        DropdownOpen.BorderSizePixel = 0
        DropdownOpen.Position = UDim2.new(0.918383181, 0, 0.5, 0)
        DropdownOpen.Size = UDim2.new(0, 20, 0, 20)
        DropdownOpen.Font = Enum.Font.Gotham
        DropdownOpen.Text = "+"
        DropdownOpen.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownOpen.TextSize = 24.000
        DropdownOpen.TextWrapped = true

        DropdownText.Name = "DropdownText"
        DropdownText.Parent = DropdownTop
        DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DropdownText.BackgroundTransparency = 1.000
        DropdownText.BorderSizePixel = 0
        DropdownText.Position = UDim2.new(0.0373831764, 0, 0, 0)
        DropdownText.Size = UDim2.new(0, 184, 0, 38)
        DropdownText.Font = Enum.Font.GothamSemibold
        DropdownText.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
        DropdownText.PlaceholderText = text
        DropdownText.Text = ""
        DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownText.TextSize = 16.000
        DropdownText.TextXAlignment = Enum.TextXAlignment.Left

        DropdownModuleL.Name = "DropdownModuleL"
        DropdownModuleL.Parent = DropdownModule
        DropdownModuleL.SortOrder = Enum.SortOrder.LayoutOrder
        DropdownModuleL.Padding = UDim.new(0, 4)

        local setAllVisible = function()
          local options = DropdownModule:GetChildren()
          for i=1, #options do
            local option = options[i]
            if option:IsA("TextButton") and option.Name:match("Option_") then
              option.Visible = true
            end
          end
        end

        local searchDropdown = function(text)
          local options = DropdownModule:GetChildren()
          for i=1, #options do
            local option = options[i]
            if text == "" then
              setAllVisible()
             else
              if option:IsA("TextButton") and option.Name:match("Option_") then
                if option.Text:lower():match(text:lower()) then
                  option.Visible = true
                 else
                  option.Visible = false
                end
              end
            end
          end
        end

        local open = false
        local ToggleDropVis = function()
          open = not open
          if open then setAllVisible() end
          DropdownOpen.Text = (open and "-" or "+")
          DropdownModule.Size = UDim2.new(0, 428, 0, (open and DropdownModuleL.AbsoluteContentSize.Y + 4 or 38))
        end

        DropdownOpen.MouseButton1Click:Connect(ToggleDropVis)
        DropdownText.Focused:Connect(function()
          if open then return end
          ToggleDropVis()
        end)

        DropdownText:GetPropertyChangedSignal("Text"):Connect(function()
          if not open then return end
          searchDropdown(DropdownText.Text)
        end)

        DropdownModuleL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
          if not open then return end
          DropdownModule.Size = UDim2.new(0, 428, 0, (DropdownModuleL.AbsoluteContentSize.Y + 4))
        end)

        local funcs = {}
        funcs.AddOption = function(self, option)
          local Option = Instance.new("TextButton")
          local OptionC = Instance.new("UICorner")

          Option.Name = "Option_" .. option
          Option.Parent = DropdownModule
          Option.BackgroundColor3 = zyColor
          Option.BorderSizePixel = 0
          Option.Position = UDim2.new(0, 0, 0.328125, 0)
          Option.Size = UDim2.new(0, 428, 0, 26)
          Option.AutoButtonColor = false
          Option.Font = Enum.Font.Gotham
          Option.Text = option
          Option.TextColor3 = Color3.fromRGB(255, 255, 255)
          Option.TextSize = 14.000

          OptionC.CornerRadius = UDim.new(0, 6)
          OptionC.Name = "OptionC"
          OptionC.Parent = Option

          Option.MouseButton1Click:Connect(function()
            ToggleDropVis()
            callback(Option.Text)
            DropdownText.Text = Option.Text
            library.flags[flag] = Option.Text
          end)
        end

        funcs.RemoveOption = function(self, option)
          local option = DropdownModule:FindFirstChild("Option_" .. option)
          if option then option:Destroy() end
        end

        funcs.SetOptions = function(self, options)
          for _, v in next, DropdownModule:GetChildren() do
            if v.Name:match("Option_") then
              v:Destroy()
            end
          end
          for _,v in next, options do
            funcs:AddOption(v)
          end
        end

        funcs:SetOptions(options)

        return funcs
      end
      return section
    end
    return tab
  end
  return window
end

local win = library:new("老猫--木材大亨2")
local Tab1 = win:Tab("玩家功能", "10882439086")
local Section3 = Tab1:section("玩家")
local Sectioncs = Tab1:section("传送")
local Sectionqccs = Tab1:section("汽车传送")
local Tab = win:Tab("主要功能", "10728953248")
local Section = Tab:section("斧头")
local Section1 = Tab:section("基地")
local Sectionchuanson = Tab:section("传送东西")
local Sectionzhengli = Tab:section("整理")
local Section5 = Tab:section("木头")
local Tab2 = win:Tab("环境", "4626047596")
local Sectionhuanjin = Tab2:section("环境")
local Tab3 = win:Tab("自动购买暂时不可用", "558024189")
local Sectionautobuy = Tab3:section("自动购买V2(测试)暂时不可用",false)
local Sectionautobuy6 = Tab3:section("其他",false)

Section3:Textbox("设置速度","TextBoxfalg","输入数字",function(s)

  spawn(function()
    while task.wait() do
      lp.Character.Humanoid.WalkSpeed = s
    end
  end)
end)
Section3:Textbox("设置跳跃","TextBoxfalg","输入数字",function(s)

  spawn(function()
    while task.wait() do
      game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = s
    end
  end)
end)
Section3:Textbox("设置高度","TextBoxfalg","输入数字",function(s)
  lp.Character.Humanoid.HipHeight=s
end)
Section3:Button("飞行", function()
  loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)
Sectioncs:Dropdown("传送","Dropdown",{"恶魔鸭合成地点","裂纹木所在地","回家","连接逻辑店","土地商店","会员商店","画店","桥对岸","沙滩","火木","雪山","洞穴","码头","黑市","糖果原","雪地入口","盖克斯航运","玻璃冰木入口","云层","山边商品","章鱼哥祭坛","沼泽商店","石头商店","沼泽","冰胡","星星岛","辐射商店","核污染区","种子商人","鲍勃的店","家具店","车店","罗布克斯商店","肯德坤专卖店","秋季商店"}, function(b)
  list = b
  if list == "恶魔鸭合成地点"then
    tp(CFrame.new(-208.76177978515625, 59.79999542236328, 924.8598022460938))

   elseif list == "裂纹木所在地"then
    tp(CFrame.new(-7612.0859375, 319.6391296386719, 4276.14990234375))

   elseif list == "洞穴" then

    tp(CFrame.new(-7229.9619140625, 390.3774108886719, 4686.23486328125))

   elseif list == "连接逻辑店" then
    tp(CFrame.new(4607, 9, -798))

   elseif list == "雪山" then
    tp(CFrame.new(6458.20703125, -85.10005187988281, -4557.05224609375))

   elseif list == "土地商店" then
    tp(CFrame.new(-374.26605224609375, 15.62093734741211, -1340.554443359375))

   elseif list == "画店" then
    tp(CFrame.new(5207, -156, 719))

   elseif list == "火木" then
    tp(CFrame.new(-1585, 625, 1140))

   elseif list == "沙滩" then
    tp(CFrame.new(2549, 5, -42))

   elseif list == "桥对岸"then
    tp(CFrame.new(109,5,-1166))

   elseif list == "会员商店" then
    tp(CFrame.new(907,4,-92))

   elseif list == "码头" then
    tp(CFrame.new(1122,1,-203))

   elseif list == "黑市" then
    tp(CFrame.new(-22,61,1377))

   elseif list == "糖果原" then
    tp(CFrame.new(-561,272,2312))

   elseif list == "雪地入口"then
    tp(CFrame.new(-712.809, 26.8001, -248.328))

   elseif list == "盖克斯航运"then
    tp(CFrame.new(1894,-2,1581))

   elseif list == "玻璃冰木入口" then
    tp(CFrame.new(2305.939697265625, 255.29136657714844, 2976.620361328125))

   elseif list == "云层" then
    tp(CFrame.new(2073,495,2967))

   elseif list == "山边商品"then
    tp(CFrame.new(-640,160,374))

   elseif list == "章鱼哥祭坛" then
    tp(CFrame.new(-1622,196,941))

   elseif list == "沼泽商店" then
    tp(CFrame.new(-1274,133,-1443))

   elseif list == "沼泽" then
    tp(CFrame.new(-999,133,-1191))

   elseif list == "石头商店" then
    tp(CFrame.new(-2387,302,-1899))

   elseif list == "冰胡" then
    tp(CFrame.new(-2149,321,743))

   elseif list == "星星岛" then
    tp(CFrame.new(-520.5476684570312, -87.6123046875, -2028.247802734375))

   elseif list == "辐射商店" then
    tp(CFrame.new(172,12,-2627))

   elseif list == "核污染区" then
    tp(CFrame.new(207,15,-2752))

   elseif list == "种子商人" then
    tp(CFrame.new(-24,18,-2684))

   elseif list == "鲍勃的店" then
    tp(CFrame.new(261,9,-2541))

   elseif list == "家具店" then
    tp(CFrame.new(492,4,-1723))

   elseif list == "车店" then
    tp(CFrame.new(512,4,-1459))

   elseif list == "罗布克斯商店" then
    tp(CFrame.new(652,4,-1589))

   elseif list == "肯德坤专卖店" then
    tp(CFrame.new(65,4,-455))

   elseif list == "秋季商店" then
    tp(CFrame.new(6004,4,33))
   elseif list == "回家" then
    for i,v in pairs(game.Workspace.Properties:GetChildren()) do
      if v.Owner.Value == lp then
        tp(v.OriginSquare.CFrame + Vector3.new(0,10,0))
      end
    end
  end




end)

Sectionqccs:Dropdown("汽车传送","Dropdown",{"恶魔鸭合成地点","回家","裂纹木所在地","连接逻辑店","土地商店","会员商店","画店","桥对岸","沙滩","火木","雪山","洞穴","码头","黑市","糖果原","雪地入口","盖克斯航运","玻璃冰木入口","云层","山边商品","章鱼哥祭坛","沼泽商店","石头商店","沼泽","冰胡","星星岛","辐射商店","核污染区","种子商人","鲍勃的店","家具店","车店","罗布克斯商店","肯德坤专卖店","秋季商店"}, function(v)
  list = v
  if list == "恶魔鸭合成地点"then

    cartp(CFrame.new(187,5,55))

   elseif list == "裂纹木所在地"then

    cartp(CFrame.new(-7612.0859375, 319.6391296386719, 4276.14990234375))

   elseif list == "洞穴" then

    cartp(CFrame.new(3581, -177, 430))

   elseif list == "连接逻辑店" then

    cartp(CFrame.new(4607, 9, -740))

   elseif list == "雪山" then

    cartp(CFrame.new(1451.66248, 412.208405, 3183.47607))

   elseif list == "土地商店" then

    cartp(CFrame.new(230, 5, -99))

   elseif list == "画店" then

    cartp(CFrame.new(5207, -156, 719))

   elseif list == "火木" then

    cartp(CFrame.new(-1585, 625, 1140))

   elseif list == "沙滩" then

    cartp(CFrame.new(2549, 5, -42))

   elseif list == "桥对岸"then

    cartp(CFrame.new(109,5,-1166))

   elseif list == "会员商店" then

    cartp(CFrame.new(907,4,-115))

   elseif list == "码头" then

    cartp(CFrame.new(1122,1,-203))

   elseif list == "黑市" then

    cartp(CFrame.new(-15,61,1365))

   elseif list == "糖果原" then

    cartp(CFrame.new(-561,272,2312))

   elseif list == "雪地入口"then

    cartp(CFrame.new(888,61,1188))

   elseif list == "盖克斯航运"then

    cartp(CFrame.new(1894,-2,1581))

   elseif list == "雪屋" then

    cartp(CFrame.new(1929,256,2918))

   elseif list == "云层" then

    cartp(CFrame.new(2060,495,2967))

   elseif list == "山边商品"then

    cartp(CFrame.new(-640,160,374))

   elseif list == "章鱼哥祭坛不要传送有bug" then

    cartp(CFrame.new(-1622,196,941))

   elseif list == "沼泽商店" then

    cartp(CFrame.new(-1274,133,-1443))

   elseif list == "沼泽" then

    cartp(CFrame.new(-999,133,-1191))

   elseif list == "石头商店" then

    cartp(CFrame.new(-2395,302,-1899))

   elseif list == "冰胡" then

    cartp(CFrame.new(-2149,321,743))

   elseif list == "星星岛" then

    cartp(CFrame.new(-612,46,-3169))

   elseif list == "辐射商店" then

    cartp(CFrame.new(172,12,-2627))

   elseif list == "核污染区" then

    cartp(CFrame.new(207,15,-2752))

   elseif list == "种子商人" then

    cartp(CFrame.new(-15,18,-2680))

   elseif list == "鲍勃的店" then

    cartp(CFrame.new(-712.809, 26.8001, -248.328))

   elseif list == "家具店" then

    cartp(CFrame.new(490,4,-1690))

   elseif list == "车店" then

    cartp(CFrame.new(512,4,-1490))

   elseif list == "罗布克斯商店" then

    cartp(CFrame.new(652,4,-1565))

   elseif list == "肯德坤专卖店" then

    cartp(CFrame.new(100,4,-455))

   elseif list == "秋季商店" then

    cartp(CFrame.new(6004,4,33))
   elseif list == "回家" then
    for i,v in pairs(game.Workspace.Properties:GetChildren()) do
      if v.Owner.Value == lp then
        cartp(v.OriginSquare.CFrame + Vector3.new(0,10,0))
      end
    end
  end





end)

Section:Button("复制斧头", function()
  Dupeaxe()
end)
Section:Button("扔掉所有斧头", function()
  for i,v in pairs(game:service"Players".LocalPlayer.Backpack:GetChildren()) do
    if v.Name == "Tool" then
      game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v,"Drop tool",game:service"Players".LocalPlayer.Character.Torso.CFrame * CFrame.new(0,5,0))
    end
  end
end)
Section:Button("捡斧头", function()
  for a,b in pairs(workspace.PlayerModels:GetChildren()) do
    if b:FindFirstChild("Owner") and b.Owner.Value == lp then
      if b:FindFirstChild("Type") and b.Type.Value == "Tool" then
        game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(b,"Pick up Vengeance")
        task.wait()

      end
    end
  end
end)

Section:Toggle("自动复制斧头","Toggleflag",false,function(state)
  if state then
    bai.autoaxedupe=true

    while bai.autoaxedupe ==true do

      Dupeaxe()

    end
   else
    bai.autoaxedupe=false
  end
end)

Section1:Textbox("加载基地数字","TextBoxfalg","输入数字",function(s)
  bai.slot=s
end)
Section1:Button("加载（不保存当前基地）", function()
  ScriptLoadOrSave = true
  local CheckSlot = CheckSlotNumber()
  if CheckSlot ~= false then
    if CheckIfSlotAvailable(CheckSlot) == true then
      local LoadSlot = game.ReplicatedStorage.LoadSaveRequests.RequestLoad:InvokeServer(CheckSlot)
      if LoadSlot == false then
        notify("老猫", "现在不能加载!", 1)
      end
      if LoadSlot == true then
        notify("老猫", "已加载!", 2)
        CurrentSlot = CheckSlot
      end
     else
      notify("老猫", "貌似不工作了☹️", 2)
    end
   else
    notify("老猫", "请你填数字😏", 2)
  end
  ScriptLoadOrSave = false
end)
Section1:Button("保存", function()
  local CheckSlot = CheckSlotNumber()
  if CheckSlot ~= false then
    if CurrentSlot ~= -1 then
      ScriptLoadOrSave = true
      local SaveSlot = game.ReplicatedStorage.LoadSaveRequests.RequestSave:InvokeServer(CheckSlot)
      if SaveSlot == true then
        notify("老猫", "已保存 ✅", 2)
        wait(.5)
        ScriptLoadOrSave = false
       elseif SaveSlot == false then
        notify("老猫", "保存成功!", 1)
        wait(.5)
        ScriptLoadOrSave = false
      end
     else
      notify("老猫", "错误会不会弄!", 1)
    end
   else
    notify("老猫", "你会不会填!", 1)
  end
end)
Section1:Button("免费土地", function()
  for a,b in pairs(workspace.Properties:GetChildren()) do
    if b:FindFirstChild("Owner") and b:FindFirstChild("OriginSquare") and b.Owner.Value == nil then
      game.ReplicatedStorage.PropertyPurchasing.ClientPurchasedProperty:FireServer(b, b.OriginSquare.OriginCFrame.Value.p + Vector3.new(0,3,0))
      wait(0.5)
      Instance.new("RemoteEvent", game:service"ReplicatedStorage".Interaction).Name = "Ban"
      for i,v in pairs(game.Workspace.Properties:GetChildren()) do
        if v.Owner.Value == game.Players.LocalPlayer then
          game.Players.LocalPlayer.Character.Humanoid.Jump = true
          wait(0.1)
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,10,0)
          game.Players.LocalPlayer.Character.Humanoid.Jump = true
          wait(0.1)
        end
      end
    end
  end
end)

Section1:Button("最大土地", function()
  for i, v in pairs(game:GetService("Workspace").Properties:GetChildren()) do
    if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
      base = v
      square = v.OriginSquare
    end
  end
  function makebase(pos)
    local Event = game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty
    Event:FireServer(base, pos)
  end
  spos = square.Position
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z))
  makebase(CFrame.new(spos.X, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z))
  makebase(CFrame.new(spos.X, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X, spos.Y, spos.Z - 80))
  --Corners--
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 80))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 80))
  --Corners--
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 80))
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 40))
  makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 40))
  makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 80))
  makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 80))
end)
local Players = Sectionchuanson:Dropdown("选择玩家","Dropdown",bai.dropdown,function(v)
  bai.cswjia= v
end)

Sectionchuanson:Button("重置玩家名称", function()
  shuaxinlb(true)
  Players:SetOptions(bai.dropdown)
end)
local Players = Sectionzhengli:Dropdown("选择玩家","Dropdown",bai.dropdown,function(v)
  bai.zlwjia= v
end)

Sectionchuanson:Button("设置传送点", function()
  pcall(function()
    workspace.baiBasedropCord:Destroy();
    bai.itemset=nil
  end)
  local baiBasedropCord=Instance.new("Part")
  baiBasedropCord.Name="baiBasedropCord";
  baiBasedropCord.Anchored=true;
  baiBasedropCord.Parent=game.Workspace;
  baiBasedropCord.Shape=Enum.PartType.Ball;
  baiBasedropCord.Size=Vector3.new(2,2,2)
  baiBasedropCord.Color=Color3.fromRGB(0, 217, 255);
  baiBasedropCord.Material=Enum.Material.ForceField;
  baiBasedropCord.CFrame=lp.Character.HumanoidRootPart.CFrame
  bai.itemset=lp.Character.HumanoidRootPart.CFrame
end)
Sectionchuanson:Button("删除传送点", function()
  pcall(function()
    workspace.baiBasedropCord:Destroy();
    bai.itemset=nil
  end)

end)
Sectionchuanson:Button("传送东西", function()
  for i=1,20 do
    tpitems("Loose Item")
    wait()
  end
end)
Sectionchuanson:Button("传送斧头", function()
  for i=1,20 do
    tpitems("Tool")
    wait()
  end
end)

Sectionchuanson:Button("传送家具", function()
  for i=1,20 do
    tpitems("Furniture")
    wait()
  end

end)

Sectionchuanson:Button("传送礼物", function()
  for i=1,20 do

    tpitems("Trident")
    wait()
  end
end)
Sectionchuanson:Button("传送木板", function()
  for i=1,20 do
    tpitems("TreeClass")
    wait()
  end
end)
Sectionzhengli:Button("重置玩家名称", function()
  shuaxinlb(true)
  Players:SetOptions(bai.dropdown)
end)

Sectionzhengli:Textbox("x轴","TextBoxfalg","输入数字",function(txt)
  bai.zix=txt
end)
Sectionzhengli:Textbox("z轴","TextBoxfalg","输入数字",function(txt)
  bai.zlz=txt
end)
Sectionzhengli:Button("获取整理工具", function()
  Identify = Instance.new("Tool")
  Identify.RequiresHandle = false;
  Identify.Name = "点击要整理的物品"
  Identify.Activated:connect(function()
    if mouse.Target.Parent:FindFirstChild("PurchasedBoxItemName") then
      bai.dxmz=mouse.Target.Parent.PurchasedBoxItemName.Value
      ItemStackerbox(bai.dxmz,bai.zix, bai.zlz)

     elseif mouse.Target.Parent:FindFirstChild("ItemName") then
      bai.dxmz=mouse.Target.Parent.ItemName.Value
      ItemStackeraxe(bai.dxmz,bai.zix, bai.zlz)
    end
  end)
  Identify.Parent = game.Players.LocalPlayer.Backpack
end)

Section5:Button("传送木头", function()

  local oldPosition = lp.Character.HumanoidRootPart.Position

  for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
    if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
      if Log.Owner.Value == game.Players.LocalPlayer then
        for _ = 1, 60 do
          tp(Log.WoodSection.CFrame)
          Log:MoveTo(oldPosition)
          tp(oldPosition)
        end
      end
    end
  end

end)
Section5:Button("卖木头", function()
  sellwood()
end)
Section5:Toggle("拖拽器","Toggleflag",false,function(state)
  if state then
    workspace.ChildAdded:connect(function(Dragger)
      if tostring(Dragger)=="Dragger"then
        local BodyGyro=Dragger:WaitForChild"BodyGyro";
        local BodyPosition=Dragger:WaitForChild"BodyPosition";
        repeat game:GetService"RunService".Stepped:wait()until workspace:FindFirstChild"Dragger";

        BodyPosition.P=120000;
        BodyPosition.D=1000;
        BodyPosition.maxForce=Vector3.new(1,1,1)*1000000;
        BodyGyro.maxTorque=Vector3.new(1,1,1)*200;
        BodyGyro.P=1200;
        BodyGyro.D=140;

      end
    end)
   else


    workspace.ChildAdded:connect(function(Dragger)
      if tostring(Dragger)=="Dragger"then
        local BodyGyro=Dragger:WaitForChild"BodyGyro";
        local BodyPosition=Dragger:WaitForChild"BodyPosition";
        repeat game:GetService"RunService".Stepped:wait()until workspace:FindFirstChild"Dragger";


        BodyPosition.P=10000;
        BodyPosition.D=800;
        BodyPosition.maxForce=Vector3.new(17000,17000,17000);
        BodyGyro.maxTorque=Vector3.new(200,200,200);
        BodyGyro.P=1200;
        BodyGyro.D=140;
      end;
    end)

  end
end)
Section5:Toggle("传送木头","Toggleflag",false,function(state)
if state then
  bai.away = true
  while wait() do
    if bai.away == true then
      local oldPosition = lp.Character.HumanoidRootPart.Position

      for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
          if Log.Owner.Value == game.Players.LocalPlayer then


              Log:MoveTo(oldPosition)

            
          end
        end
      end
    end
  end
 else
bai.away = false
end     end)

    Section5:Dropdown("选择树","Dropdown",{"普通树","曲奇树","卡通树","幻影树","砖头木","生命树","玻璃冰木","红颜树", "石头木","沼泽黄金", "樱花", "蓝木", "冰木", "火山木", "橡木", "巧克力木", "白桦木", "黄金木", "雪地松", "僵尸木", "大巧克力树", "椰子树","南瓜木","幽灵木","大理石木","天堂木","虚拟木","玻璃木","糖果树","积木树","发光红色糖果木","彩虹树","雷电木","煤炭木","岩浆树","紫木","下水道木","辐射木","地狱木","沙滩木","白洋木","发光彩虹木","布料木","虚空木","裂纹木","幽灵食尸者","金子木","生锈木","土豆木","星空木","只能灾厄砍的","星星木","雪木","死木"},function(b)
      if b=="普通树"then
        bai.cuttreeselect="Generic"
       elseif b=="沼泽黄金"then
        bai.cuttreeselect="GoldSwampy"
       elseif b=="樱花"then
        bai.cuttreeselect="Cherry"
       elseif b=="蓝木"then
        bai.cuttreeselect="CaveCrawler"
       elseif b=="冰木"then
        bai.cuttreeselect="Frost"
       elseif b=="火山木"then
        bai.cuttreeselect="Volcano"
       elseif b=="橡木"then
        bai.cuttreeselect="Oak"
       elseif b=="巧克力木"then
        bai.cuttreeselect="Walnut"
       elseif b=="白桦木"then
        bai.cuttreeselect="Birch"
       elseif b=="黄金木"then
        bai.cuttreeselect="SnowGlow"
       elseif b=="雪地松"then
        bai.cuttreeselect="Pine"
       elseif b=="僵尸木"then
        bai.cuttreeselect="GreenSwampy"
       elseif b=="大巧克力树"then
        bai.cuttreeselect="Koa"
       elseif b=="椰子树"then
        bai.cuttreeselect="Palm"
       elseif b=="幽灵木"then
        bai.cuttreeselect="Spooky"
       elseif b=="南瓜木"then
        bai.cuttreeselect="SpookyNeon"
       elseif b=="大理石木"then
        bai.cuttreeselect="Marble"
       elseif b=="天堂木"then
        bai.cuttreeselect="Sky"
       elseif b=="虚拟木"then
        bai.cuttreeselect="Virtual"
       elseif b=="玻璃木"then
        bai.cuttreeselect="Taco"
       elseif b=="糖果树"then
        bai.cuttreeselect="CandycaneGreen"
       elseif b=="积木树"then
        bai.cuttreeselect="CandycaneRed"
       elseif b=="发光红色糖果木"then
        bai.cuttreeselect="CandyNeon"
       elseif b=="彩虹树"then
        bai.cuttreeselect="Rainbow"
       elseif b=="雷电木"then
        bai.cuttreeselect="Electric"
       elseif b=="煤炭木"then
        bai.cuttreeselect="GenericDead"
       elseif b=="岩浆树"then
        bai.cuttreeselect="Skittles"
       elseif b=="紫木"then
        bai.cuttreeselect="Cavern"
       elseif b=="下水道木"then
        bai.cuttreeselect="MuckySewer"
       elseif b=="辐射木"then
        bai.cuttreeselect="Radioactive"
       elseif b=="地狱木"then
        bai.cuttreeselect="Hell"
       elseif b=="沙滩木"then
        bai.cuttreeselect="Sand"
       elseif b=="白洋木"then
        bai.cuttreeselect="Aspen"
       elseif b=="发光彩虹木"then
        bai.cuttreeselect="NeonRainbow"
       elseif b=="狗木"then
        bai.cuttreeselect="Dog"
       elseif b=="幻影树"then
        bai.cuttreeselect="LoneCave"
       elseif b=="红颜树"then
        bai.cuttreeselect="Shine"
       elseif b=="石头木"then
        bai.cuttreeselect="Magma"
       elseif b=="玻璃冰木"then
        bai.cuttreeselect="Ice"
       elseif b=="砖头木"then
        bai.cuttreeselect="Blah"
       elseif b=="卡通树"then
        bai.cuttreeselect="CobbleStone"
       elseif b=="曲奇树"then
        bai.cuttreeselect="Cookie"
       elseif b=="生命树"then
        bai.cuttreeselect="GreatOak"
       elseif b=="虚空木"then
        bai.cuttreeselect="Void"
       elseif b=="裂纹木"then
        bai.cuttreeselect="Celestial"
       elseif b=="幽灵食尸者"then
        bai.cuttreeselect="SpookyGhoul"
       elseif b=="生锈木"then
        bai.cuttreeselect="SewageTree"
       elseif b=="金子木"then
        bai.cuttreeselect="Gold"
       elseif b=="土豆木"then
        bai.cuttreeselect="BlueFlame"
       elseif b=="星空木"then
        bai.cuttreeselect="Spirit"
       elseif b=="只能灾厄砍的"then
        bai.cuttreeselect="Flame"
       elseif b=="星星木"then
        bai.cuttreeselect="Star"
       elseif b=="雪木"then
        bai.cuttreeselect="Snow"
       elseif b=="死木"then
        bai.cuttreeselect="GenericDead"

      end
    end)
    Section5:Textbox("带来树的数量","TextBoxfalg","输入数字",function(txt)
      bai.bringamount=txt
    end)
    Section5:Button("带来树", function()
      bai.bringtree=true
      for i=1 , bai.bringamount do
        if bai.bringtree==true then
          task.wait()
          bringTree(bai.cuttreeselect)
        end

      end


    end)
    Section5:Button("停止", function()
      bai.bringtree=false
      workspace.Camera.CameraSubject = lp.Character
    end)
    Section5:Button("处理树", function()
      modwood()
    end)
    Sectionhuanjin:Toggle("终日白天","Toggleflag",false, function(state)
      if state then
        bai.awaysday=true
        while task.wait() do
          if bai.awaysday==true then
            game:GetService("Lighting").TimeOfDay=("12:00:00");
          end
        end
       else bai.awaysday=false
      end

    end)
    Sectionhuanjin:Toggle("终日黑天","Toggleflag",false, function(state)
      if state then
        bai.awaysdnight=true
        while task.wait() do
          if bai.awaysdnight==true then
            game:GetService("Lighting").TimeOfDay=("2:00:00");
          end
        end
       else
        bai.awaysdnight=false
      end
    end)
    game:GetService("Lighting").GlobalShadows =true
    Sectionhuanjin:Toggle("消除阴影","Toggleflag",false, function(state)


      if state then
        game:GetService("Lighting").GlobalShadows=false
       else
        game:GetService("Lighting").GlobalShadows=true
      end

    end)
    Sectionhuanjin:Button("删除灵视神殿的石头", function()
      workspace.Region_Mountainside.BoulderRegen.Boulder:Destroy()
      workspace.Region_Mountainside.Door.Door:Destroy()

    end)

    Sectionhuanjin:Button("删除灵视神殿的石头", function()
      workspace.Camera.CameraSubject = lp.Character
    end)

    Sectionhuanjin:Toggle("删除岩浆","Toggleflag",false,function(state)
      for i,v in pairs(game.Workspace.Region_Volcano:GetDescendants()) do
        if v.Name == "TouchInterest" then
          v:Destroy()
         elseif v.Name == "Lava" then
          for n,k in pairs(v:GetChildren()) do
            if k:IsA("Part") then
              if state == true then
                k.Transparency = 1
               else
                k.Transparency = 0
              end
            end
          end
        end
      end
    end)
    Sectionhuanjin:Toggle("删除水","Toggleflag",false,function(state)
      for _,v in pairs(game.Workspace.Water:GetChildren()) do
        if v.Name == "Water" then
          if state then
            v.Transparency = 1;
           else
            v.Transparency = 0;
          end
        end
      end
    end)

    Sectionhuanjin:Toggle("去除雾","Toggleflag",false, function(state)
      if state then
        bai.nofog=true
        while task.wait() do
          if bai.nofog==true then
            game:GetService("Lighting").FogEnd=1000000;
          end
        end
       else bai.nofog=false
      end
    end)
    Sectionhuanjin:Toggle("水上行走","Toggleflag",false, function(state)
      for i,v in next,game.workspace.Water:children()do
        if v.ClassName=="Part"then
          bai.waterwalk,v.CanCollide=state,state;
        end;
      end;
      for i,v in next,game:GetService("Workspace").Bridge.VerticalLiftBridge.WaterModel:children()do
        if v:IsA("BasePart")then
          v.CanCollide=state;
        end;
      end;


    end)
    Sectionhuanjin:Toggle("岩浆行走","Toggleflag",false, function(state)
      for i,v in next,game.workspace.Region_Volcano:children()do
        if v.ClassName=="Part"then
          bai.waterwalk,v.CanCollide=state,state;
        end;
      end;
      for i,v in next,game:GetService("Workspace").Bridge.VerticalLiftBridge.LavaModel:children()do
        if v:IsA("BasePart")then
          v.CanCollide=state;
        end;
      end;


    end)