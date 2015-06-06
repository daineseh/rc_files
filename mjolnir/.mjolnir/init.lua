local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"

-- mjolnir.alert.show("mjolnir config loaded", 1.5)
local mash = {"ctrl", 'alt'}
local mashshift = {"cmd", "alt", "shift"}
local kb = {"cmd", "alt"}

-- move the window to the right half of the screen
hotkey.bind({"cmd"}, "Right", function()
    local win = window.focusedwindow()
    local newframe = win:screen():frame()
    newframe.w = newframe.w/2
    newframe.x = newframe.w -- comment this line to push it to left of screen
    win:setframe(newframe)
end)

-- move the window to the left half of the screen
hotkey.bind({"cmd"}, "Left", function()
    local win = window.focusedwindow()
    local newframe = win:screen():frame()
    newframe.w = newframe.w/2
    -- newframe.x = newframe.w -- comment this line to push it to left of screen
    win:setframe(newframe)
end)

-- window maximize()
-- Make this window fill the whole screen its on, without covering the dock or menu.
hotkey.bind({"cmd"}, "Up", function()
    local win = window.focusedwindow()
    local newframe = win:screen():frame()
    win:setframe(newframe)
end)

-- move the window to the quadrant 1 of the screen
hotkey.bind(kb, "P", function()
    local win = window.focusedwindow()
    local newframe = win:screen():frame()
    newframe.w = newframe.w/2
    newframe.x = newframe.w -- comment this line to push it to left of screen
    newframe.h = newframe.h/2
    newframe.y = newframe.y
    win:setframe(newframe)
end)

-- move the window to the quadrant 2 of the screen
hotkey.bind(kb, "Q", function()
    local win = window.focusedwindow()
    local newframe = win:screen():frame()
    newframe.w = newframe.w/2
    newframe.h = newframe.h/2
    win:setframe(newframe)
end)

-- move the window to the quadrant 3 of the screen
hotkey.bind(kb, "/", function()
    local win = window.focusedwindow()
    local newframe = win:screen():frame()
    newframe.w = newframe.w/2
    newframe.x = newframe.w
    newframe.h = newframe.h/2
    newframe.y = newframe.h
    win:setframe(newframe)
end)

-- move the window to the quadrant 4 of the screen
hotkey.bind(kb, "Z", function()
    local win = window.focusedwindow()
    local newframe = win:screen():frame()
    newframe.w = newframe.w/2
    newframe.h = newframe.h/2
    newframe.y = newframe.h
    win:setframe(newframe)
end)
