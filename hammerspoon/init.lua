gap = 3

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Q", function()
	hs.alert.show("Made with love by: Brian Sukhnandan ツ!!")
end)

-- * Left
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "J", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + gap - 1
	f.y = max.y + gap
	f.w = max.w / 2 - (gap) - 1
	f.h = max.h - (gap)
	win:setFrame(f)
end)

-- * Right
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
	local win = hs.window.focusedWindow()
 	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w / 2) + gap - 1
	f.y = max.y + gap
	f.w = max.w / 2 - (gap) - 1
	f.h = max.h - (gap)
	win:setFrame(f)
end)

-- * Top-Left
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "U", function()
	local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + gap - 1
        f.y = max.y + gap
        f.w = max.w / 2 - gap - 1
        f.h = max.h / 2 - gap
        win:setFrame(f)
end)

-- * Bottom-Left
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "M", function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + gap - 1
        f.y = max.y + (max.h / 2) + gap
        f.w = max.w / 2 - gap - 1
        f.h = max.h / 2 - gap
        win:setFrame(f)
end)

-- * Top-Right
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "O", function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + (max.w / 2) + gap - 1
        f.y = max.y + gap
        f.w = max.w / 2 - gap - 1
        f.h = max.h / 2 - gap
        win:setFrame(f)
end)

-- * Bottom-Right
hs.hotkey.bind({"cmd", "alt", "ctrl"}, ".", function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + (max.w / 2) + gap - 1
        f.y = max.y + (max.h / 2) + gap
        f.w = max.w / 2 - gap - 1
        f.h = max.h / 2 - gap
        win:setFrame(f)
end)

--* Top-Half
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "I", function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x
        f.y = max.y
        f.w = max.w
        f.h = max.h / 2
        win:setFrame(f)
end)

--* Bottom-Half
hs.hotkey.bind({"cmd", "alt", "ctrl"}, ",", function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x
        f.y = max.y + (max.h / 2)
        f.w = max.w
        f.h = max.h / 2
        win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
	hs.reload()
end)
hs.alert.show("Reloaded Hammerspoon Config.")

