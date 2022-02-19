gap = 6

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Q", function()
	hs.alert.show("Made with love by: Brian Sukhnandan ツ!!")
end)

-- * Tiling

-- * Left
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "J", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + gap
	f.y = max.y + gap
	f.w = max.w / 2 - gap - (gap/2)
	f.h = max.h - gap - (gap)
	win:setFrame(f)
end)

-- * Right
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
	local win = hs.window.focusedWindow()
 	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w / 2) + (gap/2)
	f.y = max.y + gap
	f.w = max.w / 2 - (gap) - (gap/2)
	f.h = max.h - (gap) - gap
	win:setFrame(f)
end)

-- * Top-Left
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "U", function()
	local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + gap
        f.y = max.y + gap
        f.w = max.w / 2 - gap - (gap/2)
        f.h = max.h / 2 - gap - (gap/2)
        win:setFrame(f)
end)

-- * Bottom-Left
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "M", function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + gap
        f.y = max.y + (max.h / 2) + (gap/2)
	f.w = max.w / 2 - gap - (gap/2)	
        f.h = max.h / 2 - gap - (gap/2)
        win:setFrame(f)
end)

-- * Top-Right
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "O", function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + (max.w / 2) + (gap/2)
        f.y = max.y + gap
        f.w = max.w / 2 - gap - (gap/2)
        f.h = max.h / 2 - gap - (gap/2)
        win:setFrame(f)
end)

-- * Bottom-Right
hs.hotkey.bind({"cmd", "alt", "ctrl"}, ".", function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + (max.w / 2) + (gap/2)
        f.y = max.y + (max.h / 2) + (gap/2)
        f.w = max.w / 2 - gap - (gap/2)
        f.h = max.h / 2 - gap - (gap/2)
        win:setFrame(f)
end)

--* Top-Half
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "I", function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + gap
        f.y = max.y + gap
        f.w = max.w - gap - gap
        f.h = (max.h / 2) - gap - (gap/2)
        win:setFrame(f)
end)

-- * Bottom-Half
hs.hotkey.bind({"cmd", "alt", "ctrl"}, ",", function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + gap 
        f.y = max.y + (max.h / 2) + (gap/2)
        f.w = max.w - gap - gap
        f.h = max.h / 2 - gap - (gap/2)
        win:setFrame(f)
end)

-- * Tiled fullscreen position
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + gap 
        f.y = max.y + gap
        f.w = max.w - gap - gap
        f.h = max.h - gap - gap
        win:setFrame(f)
end)

-- * A personally appealing tiling position
        -- * top-left half a little over 3/4 size
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "N", function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + gap
        f.y = max.y + (max.h / 2) + (max.h / 4) + (max.h / 12) + (gap/2)
	f.w = max.w / 2 - gap - (gap/2)	
        f.h = (max.h / 2) - (max.h / 4) - (max.h / 12) - gap - (gap/2)
        win:setFrame(f)
end)
        -- * bottom-left under 1/4 size
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Y", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + gap
	f.y = max.y + gap
	f.w = max.w / 2 - gap - (gap/2)
	f.h = max.h - (max.h / 4) + (max.h / 12) - gap - (gap)
	win:setFrame(f)
end)

--- A function to open apps.
function open(name)
    return function()
        hs.application.launchOrFocus(name)
        if name == 'Finder' then
            hs.appfinder.appFromName(name):activate()
        end
    end
end

hs.hotkey.bind({"cmd"}, "return", open("iTerm"))
hs.hotkey.bind({"cmd", "shift"}, "H", open("Finder"))
hs.hotkey.bind({"cmd", "shift"}, "D", open("Discord"))
hs.hotkey.bind({"cmd", "shift"}, "F", open("Firefox"))
hs.hotkey.bind({"cmd", "shift"}, "S", open("Spotify"))


--- Window switching
switcher = hs.window.switcher.new()

hs.hotkey.bind('cmd','tab',hs.window.switcher.nextWindow)


--- Reload config
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
	hs.reload()
end)
hs.alert.show("Tiling WM enabled!")

