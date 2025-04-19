local kurai = loadstring(
    game:HttpGetAsync(`https://raw.githubusercontent.com/focat69/kurai/refs/heads/main/source?t={tostring(tick())}`)
)()

local ui = kurai.new({
    Name = "Kurai",
    GameName = "Phantom Forces",
    ScriptHubName = "暗い | Developer Build",
    Tabs = {"Rage", "Legit", "Visuals", "Misc", "Configs"}
})

ui:CreateLabel("Rage", { -- [ "Rage" is the tab name. ]
    Name = "RageLabel",
    Text = "Rage Options",
    Alignment = Enum.TextXAlignment.Left
})
ui:CreateSplitter("Rage") -- [ Notice how we don't have to declare redundant variables every time? ]

ui:CreateToggle("Rage", {
    Name = "Aimbot",
    Text = "Aimbot",
    Default = false,
    Flag = "AimbotEnabled",
    Callback = function(state)
        ui:Notify("Aimbot", "Aimbot is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Rage", {
    Name = "Auto Shoot",
    Text = "Auto Shoot",
    Default = false,
    Flag = "AutoShootEnabled",
    Callback = function(state)
        ui:Notify("Auto Shoot", "Auto Shoot is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Rage", {
    Name = "Auto Scope",
    Text = "Auto Scope",
    Default = false,
    Flag = "AutoScopeEnabled",
    Callback = function(state)
        ui:Notify("Auto Scope", "Auto Scope is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Rage", {
    Name = "Anti Aim",
    Text = "Anti Aim",
    Default = false,
    Flag = "AntiAimEnabled",
    Callback = function(state)
        ui:Notify("Anti Aim", "Anti Aim is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Rage", {
    Name = "Resolver",
    Text = "Resolver",
    Default = false,
    Flag = "ResolverEnabled",
    Callback = function(state)
        ui:Notify("Resolver", "Resolver is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Rage", {
    Name = "Fly",
    Text = "Fly",
    Default = false,
    Flag = "FlyEnabled",
    Callback = function(state)
        ui:Notify("Fly", "Fly is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateSlider("Rage", {
    Name = "Fly Speed",
    Text = "Fly Speed",
    Min = 0,
    Max = 100,
    Default = 50,
    Increment = 1,
    Suffix = "Studs/s",
    Flag = "FlySpeed",
    Callback = function(value)
        print("Fly speed set to " .. value .. " Studs/s")
    end
})
ui:CreateSlider("Rage", {
    Name = "FOV",
    Text = "FOV",
    Min = 0,
    Max = 180,
    Default = 90,
    Increment = 1,
    Suffix = "°",
    Flag = "FOVValue",
    Callback = function(value)
        print("FOV set to " .. value)
    end
})

-- [ legit tab ]
ui:CreateLabel("Legit", {
    Name = "LegitLabel",
    Text = "Legit Options",
    Alignment = Enum.TextXAlignment.Left
})
ui:CreateSplitter("Legit")

ui:CreateToggle("Legit", {
    Name = "Triggerbot",
    Text = "Triggerbot",
    Default = false,
    Flag = "TriggerbotEnabled",
    Callback = function(state)
        ui:Notify("Triggerbot", "Triggerbot is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateSlider("Legit", {
    Name = "Triggerbot Delay",
    Text = "Triggerbot Delay",
    Min = 0,
    Max = 1000,
    Default = 100,
    Increment = 1,
    Suffix = "ms",
    Flag = "TriggerbotDelay",
    Callback = function(value)
        print("Triggerbot delay set to " .. value .. " ms")
    end
})

ui:CreateToggle("Legit", {
    Name = "Silent Aim",
    Text = "Silent Aim",
    Default = false,
    Flag = "SilentAimEnabled",
    Callback = function(state)
        ui:Notify("Silent Aim", "Silent Aim is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateSlider("Legit", {
    Name = "Silent Aim FOV",
    Text = "Silent Aim FOV",
    Min = 0,
    Max = 180,
    Default = 90,
    Increment = 1,
    Suffix = "°",
    Flag = "SilentAimFOV",
    Callback = function(value)
        print("Silent Aim FOV set to " .. value .. "°")
    end
})
ui:CreateSlider("Legit", {
    Name = "Silent Aim Hit Chance",
    Text = "Silent Aim Hit Chance",
    Min = 0,
    Max = 100,
    Default = 100,
    Increment = 1,
    Suffix = "%",
    Flag = "SilentAimHitChance",
    Callback = function(value)
        print("Silent Aim hit chance set to " .. value .. "%")
    end
})

ui:CreateToggle("Legit", {
    Name = "RecoilCntrl",
    Text = "Recoil Control Masterswitch",
    Default = false,
    Flag = "RecoilCntrlEnabled",
    Callback = function(state)
        ui:Notify("Recoil Control", "Recoil Control is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateSlider("Legit", {
    Name = "Recoil Control X",
    Text = "Recoil Control X",
    Min = 0,
    Max = 1,
    Default = 0.1,
    Increment = 0.01,
    Suffix = "",
    Flag = "RecoilControlX",
    Callback = function(value)
        print("Recoil Control X set to " .. value)
    end
})
ui:CreateSlider("Legit", {
    Name = "Recoil Control Y",
    Text = "Recoil Control Y",
    Min = 0,
    Max = 1,
    Default = 0.1,
    Increment = 0.01,
    Suffix = "",
    Flag = "RecoilControlY",
    Callback = function(value)
        print("Recoil Control Y set to " .. value)
    end
})

-- [ visuals tab ]
ui:CreateLabel("Visuals", {
    Name = "VisualsLabel",
    Text = "Visual Options",
    Alignment = Enum.TextXAlignment.Left
})
ui:CreateSplitter("Visuals")

ui:CreateToggle("Visuals", {
    Name = "ESPGlobal",
    Text = "ESP Masterswitch",
    Default = false,
    Flag = "ESPToggle",
    Callback = function(state)
        ui:Notify("ESP", "ESP is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Visuals", {
    Name = "Box ESP",
    Text = "Box ESP",
    Default = false,
    Flag = "BoxESPToggle",
    Callback = function(state)
        ui:Notify("Box ESP", "Box ESP is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Visuals", {
    Name = "Name ESP",
    Text = "Name ESP",
    Default = false,
    Flag = "NameESPToggle",
    Callback = function(state)
        ui:Notify("Name ESP", "Name ESP is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Visuals", {
    Name = "Distance ESP",
    Text = "Distance ESP",
    Default = false,
    Flag = "DistanceESPToggle",
    Callback = function(state)
        ui:Notify("Distance ESP", "Distance ESP is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Visuals", {
    Name = "Health ESP",
    Text = "Health ESP",
    Default = false,
    Flag = "HealthESPToggle",
    Callback = function(state)
        ui:Notify("Health ESP", "Health ESP is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Visuals", {
    Name = "Team Check",
    Text = "Team Check",
    Default = false,
    Flag = "TeamCheckToggle",
    Callback = function(state)
        ui:Notify("Team Check", "Team Check is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Visuals", {
    Name = "Chams",
    Text = "Chams",
    Default = false,
    Flag = "ChamsToggle",
    Callback = function(state)
        ui:Notify("Chams", "Chams are now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})

-- [ misc tab ]
ui:CreateLabel("Misc", {
    Name = "MiscLabel",
    Text = "Misc Options",
    Alignment = Enum.TextXAlignment.Left
})
ui:CreateSplitter("Misc")

ui:CreateToggle("Misc", {
    Name = "ThirdP",
    Text = "Third Person",
    Default = false,
    Flag = "ThirdPToggle",
    Callback = function(state)
        ui:Notify("Third Person", "Third Person is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateSlider("Misc", {
    Name = "ThirdP Distance",
    Text = "Third Person Distance",
    Min = 0,
    Max = 100,
    Default = 10,
    Increment = 1,
    Suffix = "Studs",
    Flag = "ThirdPDistance",
    Callback = function(value)
        print("Third Person distance set to " .. value .. " Studs")
    end
})
ui:CreateToggle("Misc", {
    Name = "NoClip",
    Text = "No Clip",
    Default = false,
    Flag = "NoClipToggle",
    Callback = function(state)
        ui:Notify("No Clip", "No Clip is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Misc", {
    Name = "Bhop",
    Text = "Bunny Hop",
    Default = false,
    Flag = "BhopToggle",
    Callback = function(state)
        ui:Notify("Bunny Hop", "Bunny Hop is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})
ui:CreateToggle("Misc", {
    Name = "Auto Strafe",
    Text = "Auto Strafe",
    Default = false,
    Flag = "AutoStrafeToggle",
    Callback = function(state)
        ui:Notify("Auto Strafe", "Auto Strafe is now " .. (state and "enabled" or "disabled"), 3, state and "success" or "warn")
    end
})

-- [ configs tab ]
ui:CreateLabel("Configs", {
    Name = "ConfigsLabel",
    Text = "Config Options",
    Alignment = Enum.TextXAlignment.Left
})
ui:CreateSplitter("Configs")

ui:CreateButton("Configs", {
    Name = "SaveConfig",
    Text = "Save Config",
    Callback = function()
        ui:Notify("Config", "Config saved successfully!", 3, "success")
    end
})
ui:CreateButton("Configs", {
    Name = "LoadConfig",
    Text = "Load Config",
    Callback = function()
        ui:Notify("Config", "Config loaded successfully!", 3, "success")
    end
})

ui:CreateLabel("Configs", {
    Name = "ConfigLabel",
    Text = "jewware on top",
    Alignment = Enum.TextXAlignment.Left
})

ui:Notify("Kurai", "Kurai UI loaded successfully.", 3)
