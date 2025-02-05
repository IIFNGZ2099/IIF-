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
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "IIF脚本"; Text ="感谢大家使用IIF脚本"; Duration = 2; })
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/IIFNGZ2099/IIF-/refs/heads/main/IIF%E7%9A%84Ui%E6%BA%90%E7%A0%81(1).lua"))();  
local win = ui:new("IIF脚本中心")

local UITab1 = win:Tab("『信息』",'6031097229')

local about = UITab1:section("查看作者信息",true)

about:Label("IIF脚本中心")
about:Label("『IIF脚本作者』")
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

about:Label("感谢所有支持IFF脚本的人")
about:Label("主脚本作者『我也觉得很巧』")
about:Label("副作者『叉烧包(风御 X』")     

local UITab1 = win:Tab("『通用』",'6031097229')

local about = UITab1:section("『通用』",true)

about:Button("飞行",function()
loadstring(game:HttpGet("https://pastebin.com/raw/JEdkPtA1"))()
end)


local UITab1 = win:Tab("『巴掌模拟器』",'6031097229')

local about = UITab1:section("『巴掌模拟器』",true)

about:Button("巴掌服务器通用",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
  end)


local UITab1 = win:Tab("『巴掌模拟器』",'6031097229')

local about = UITab1:section("『巴掌模拟器』",true)

about:Button("全手套技能",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Donjosx/SBS/refs/heads/main/GlovesAbuser.lua'),true))()
end)

local UITab1 = win:Tab("『巴掌模拟器』",'6031097229')

local about = UITab1:section("『巴掌模拟器』",true)

about:Button("巴掌农场",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/slapfarmgui/main/main.lua'))()
end)

local UITab1 = win:Tab("『巴掌模拟器』",'6031097229')

local about = UITab1:section("『巴掌模拟器』",true)

about:Button("获得绝大数的手套",function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Slap-Battles-KykyryzoB-Hub-SB-9008"))()
end)

local UITab1 = win:Tab("『巴掌模拟器』",'6031097229')

local about = UITab1:section("『巴掌模拟器』",true)

about:Button("巴掌农场需要拳套",function()
AutoExecute = true

NoCollide = false

GhostInvis = true

SlappleFarm = true

FarmToolbox = true

FarmOrbs = true

wait(1)
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BoxerFarmUpgraded/main/main.lua'))()
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



local UITab1 = win:Tab("『BF』",'6031097229')

local about = UITab1:section("『BF』",true)

about:Button("无卡密w开头的脚本",function()
getgenv().Team = "Pirates"loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
end)

local UITab1 = win:Tab("『SA』",'6031097229')

local about = UITab1:section("『SA』",true)

about:Button("打boss攻速脚本",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/itsyouranya/free/main/Anya%20Stands%20Awakening%20Helper.lua'),true))()
    end)
  
  
  local UITab1 = win:Tab("『SA』",'6031097229')

local about = UITab1:section("『SA』",true)

about:Button(" 打boss范围脚本建议搭配上一个攻速",function()
loadstring(game:HttpGet("https://pastebin.com/raw/c6xE0n3v", true))()
end)

local UITab1 = win:Tab("『SA』",'6031097229')

local about = UITab1:section("『SA』",true)

about:Button("打boss脚本",function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/Wi-sp/Limitless-legacy/refs/heads/main/GUI")()
end)

local UITab1 = win:Tab("『SA』",'6031097229')

local about = UITab1:section("『SA』",true)

about:Button("SA打boss脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Looser3itx/sus/main/Loader.lua"))()
end)

local UITab1 = win:Tab("『伐木大亨2』",'6031097229')

local about = UITab1:section("『伐木大亨2』",true)

about:Button("伐木大亨2脚本英文",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
     end)


local UITab1 = win:Tab("『伐木大亨2』",'6031097229')

local about = UITab1:section("『伐木大亨2』",true)

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
   
local UITab1 = win:Tab("『各大脚本』",'6031097229')

local about = UITab1:section("『各大脚本』",true)

about:Button("XK中心",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\88\75\46\84\88\84\34\41\41\40\41\10")()
end)

local UITab1 = win:Tab("『各大脚本』",'6031097229')

local about = UITab1:section("『各大脚本』",true)

about:Button("林",function()
lin = "作者林"lin ="林QQ群 747623342"loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()
end)

local UITab1 = win:Tab("『鱼 Fish』",'6031097229')

local about = UITab1:section("『鱼 Fish』",true)

about:Button("乌托邦",function()
loadstring(game:HttpGet("https://pastefy.app/M1Ns2Ggo/raw"))()
end)

local UITab1 = win:Tab("『外网 Fish』",'6031097229')

local about = UITab1:section("『外网鱼脚本』",true)

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
getgenv().Spy="mspaint"
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoXuAnZang/XKscript/refs/heads/main/DOORS.txt"))()
end)

local UITab1 = win:Tab("『战争大亨』",'6031097229')

local about = UITab1:section("『战争大亨』",true)

about:Button("战争大亨透视脚本锁头",function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Gripen-War-Tycoon-White-hub-beta-28323"))()
end)

about:Button("无卡密但不知道好不好用",function()
loadstring(game:HttpGet'https://raw.githubusercontent.com/Macintosh1983/ChillHubMain/main/ChillHubOilWarfareTycoon.lua')()
end)

local UITab1 = win:Tab("『最强战场』",'6031097229')

local about = UITab1:section("『最强战场』",true)

about:Button("粘到别人脚底下卡密：RoscriptsOnTop",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RealOfficialSkully/Smm/main/Smm"))()
end)

local UITab1 = win:Tab("『最强战场』",'6031097229')

local about = UITab1:section("『最强战场』",true)

about:Button("tsb虚空杀脚本",function()
loadstring(game:HttpGet("https://pastefy.app/afHQ7oyj/raw"))()
end)

local UITab1 = win:Tab("『河北唐县』",'6031097229')

local about = UITab1:section("『河北唐县』",true)

about:Button("河北唐县-皮",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/Pi-script-Hebeitangxian.lua"))()
end)

local UITab1 = win:Tab("『河北唐县』",'6031097229')

local about = UITab1:section("『河北唐县』",true)

about:Button("河北唐县-叶",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE%20SCRIPT-Tang%20County%2C%20Hebei.lua"))()
end)

local UITab1 = win:Tab("『监狱人生』",'6031097229')

local about = UITab1:section("『监狱人生』",true)

about:Button("监狱人生黑人管理菜单部分英文",function()
loadstring(game:HttpGet("https://pastebin.com/raw/LnAUPBXj",true))()
end)

local UITab1 = win:Tab("『监狱人生』",'6031097229')

local about = UITab1:section("『监狱人生』",true)

about:Button("监狱人生英文挺强的",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
end)

local UITab1 = win:Tab("『监狱人生』",'6031097229')

local about = UITab1:section("『监狱人生』",true)

about:Button("新菜单",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/LiverMods/xRawnder/main/HubMoblie'))()
end)