-- https://www.hammerspoon.org/go/#helloworld
hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()
hs.loadSpoon("FnMate")
-- hs.loadSpoon("Calendar")

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "R", function()
	hs.reload()
end)
