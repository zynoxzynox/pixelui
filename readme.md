# 暗い. | kurai

> 暗い kurai (pronounced "koo-rye") is a sleek ui library focused on simplicity, modern design, and csgo inspired aesthetics.  
> dropdowns, inputs, keybinds and more added later.

## installation 暗い
```lua
local lib = loadstring(
    game:HttpGetAsync(`https://raw.githubusercontent.com/focat69/kurai/refs/heads/main/source?t={tostring(tick())}`)
)()
```

## initialization 暗い
to create a new instance:
```lua
local kurai = lib.new({
    Name = "screenguiname",             -- (optional) name for the screengui
    GameName = "Phantom Forces",        -- displayed in the title bar
    ScriptHubName = "JewWare Premium",  -- displayed under the game name
    Tabs = {"Main", "Visuals"}          -- tab names for your interface
})
```
to toggle ui, press `RCTRL`.  
 you can always change this before initialization.
```lua
kurai:SetKeybind(
    KeyCode: Enum.KeyCode
) -- default is right ctrl 暗い
```

## ui elements 暗い

### button
creates a clickable button with ripple effect.

```lua
kurai:CreateButton("TabName", {
    Name = "MyButton",           -- (optional) element name
    Text = "Click Me",           -- button text
    Callback = function()        -- function to execute when clicked
        print("Button clicked!")
    end
})
```

### label
creates a text label.

```lua
kurai:CreateLabel("TabName", {
    Name = "MyLabel",            -- (optional) element name
    Text = "Information Text",   -- label text
    Alignment = Enum.TextXAlignment.Left  -- text alignment (Left/Center/Right)
})
```

### splitter
creates a horizontal divider line.

```lua
local splitter = kurai:CreateSplitter("TabName", {
    Name = "MySplitter"          -- (optional) element name
})

-- optional methods:
splitter:SetColor(Color3.new(1, 0, 0))   -- change color
local currentColor = splitter:GetColor() -- get current color
```

### slider
creates an adjustable slider input.

```lua
local slider = kurai:CreateSlider("TabName", {
    Name = "MySlider",           -- (optional) element name
    Text = "Volume",             -- label text
    Min = 0,                     -- minimum value
    Max = 100,                   -- maximum value
    Default = 50,                -- starting value
    Increment = 1,               -- step size
    Suffix = "%",                -- (optional) text appended to value
    Precise = false,             -- (optional) show decimal places
    Flag = "volume_slider",      -- (optional) identifier for flags
    Callback = function(value)   -- function called when value changes
        print("New value:", value)
    end
})

-- optional methods:
slider:Set(75)                   -- set slider value
local value = slider:Get()       -- get current value
```

### toggle
creates a switch toggle.

```lua
local toggle = kurai:CreateToggle("TabName", {
    Name = "MyToggle",           -- (optional) element name
    Text = "Enable Feature",     -- label text
    Default = false,             -- starting state
    Flag = "feature_toggle",     -- (optional) identifier for flags
    Callback = function(state)   -- function called when toggled
        print("Toggle state:", state)
    end
})

-- optional methods:
toggle:Set(true)           -- set toggle state
local state = toggle:Get() -- get current state
```

## utility 暗い

### notification
display a temporary notification.

```lua
function Notify(
    title: string,           -- title of the notification
    message: string,         -- text below title/content
    duration: number,        -- [optional] duration in seconds (default 5)
    notificationType: string -- [optional] notification type: "success", "warn", "err"
) ... end

-- example:
ui:Notify("Your Title", "Your action was successful!", 5, "success")
ui:Notify("Your Title", "This is a warning message.", 5, "warn")
ui:Notify("Your Title", "An error occurred!", 5, "err")
ui:Notify("Your Title", "This is an info message.", 5) -- default type is "info", uses Theme.Accent color
```

### tween
applies a tween animation to an object.

```lua
kurai.Tween(object, properties, duration, easingStyle, easingDirection)
-- example:
kurai.Tween(frame, {Size = UDim2.new(0, 200, 0, 50)}, 0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
```

### rainbow effect
applies a rainbow color animation to an element.

```lua
kurai.Rainbow(element, speed)
-- example:
kurai.Rainbow(frame, 0.3)  -- speed is optional (default 0.5)
```

## theming 暗い
customize 暗い's colors by modifying the theme table before initialization:

```lua
lib.Theme = {
    Main = Color3.fromRGB(20, 20, 20),        -- main window background
    Tab = Color3.fromRGB(23, 23, 23),         -- tab button color
    TabAccent = Color3.fromRGB(30, 30, 30),   -- active tab color
    Content = Color3.fromRGB(25, 25, 25),     -- content background
    Accent = Color3.fromRGB(253, 181, 181),   -- accent color (buttons, sliders)
    Text = Color3.fromRGB(212, 212, 212),     -- primary text color
    SubText = Color3.fromRGB(89, 89, 89)      -- secondary text color
}
```

## flags system 暗い
暗い includes a simple flags system to track element states:

```lua
local current_volume = lib.Flags.volume_slider
local toggle_state   = lib.Flags.feature_toggle
```

## credits 暗い
> i've spent countless hours on this and i wouldnt want my hard work to be skidded without permission  
> please respect my work and do not skid this library without my permission  
> if approved by me, remember to give credits where its due!