-- Hammerspoon Reload Start
hs.hotkey.bind({'⌥','⌘'}, 'r', hs.reload)
-- Hammerspoon Reload End

-- Hammerspoon windowHints Start
hs.hints.hintChars = {'1','2','3','4','Q','W','E','R','T','A','S','D','F'}
hs.hotkey.bind({'⌥','⇧'}, 'w', hs.hints.windowHints)
-- Hammerspoon windowHints End

--[[
    ⌃ ⌘ ⌥ + [HJKL] 방향키
--]]
function bindArrowKey(key)
    local arrow_key = {
        h = 'left',
        j = 'down',
        k = 'up',
        l = 'right',
    }
    return function()
        hs.eventtap.keyStroke({}, arrow_key[key])
    end
end

-- 방향키 단축키 Start
hs.hotkey.bind({'⌃', '⌘', '⌥'} ,'H', bindArrowKey('h'), nil, bindArrowKey('h'))
hs.hotkey.bind({'⌃', '⌘', '⌥'} ,'J', bindArrowKey('j'), nil, bindArrowKey('j'))
hs.hotkey.bind({'⌃', '⌘', '⌥'} ,'K', bindArrowKey('k'), nil, bindArrowKey('k'))
hs.hotkey.bind({'⌃', '⌘', '⌥'} ,'L', bindArrowKey('l'), nil, bindArrowKey('l'))
-- 방향키 단축키 End
