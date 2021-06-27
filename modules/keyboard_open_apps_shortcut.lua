--[[
  Application 열기
--]]
function openApp(appName)
    return function()
        hs.application.launchOrFocus(appName)
    end
end

-- OpenApps Start
hs.hotkey.bind({'⌃', '⌘'}, 'C', openApp('Google Chrome'))
hs.hotkey.bind({'⌃', '⌘'}, 'D', openApp('DataGrip'))
hs.hotkey.bind({'⌃', '⌘'}, 'F', openApp('Firefox'))
hs.hotkey.bind({'⌃', '⌘'}, 'G', openApp('GitKraken'))
hs.hotkey.bind({'⌃', '⌘'}, 'J', openApp('IntelliJ IDEA Ultimate'))
hs.hotkey.bind({'⌃', '⌘'}, 'K', openApp('KakaoTalk'))
hs.hotkey.bind({'⌃', '⌘'}, 'M', openApp('Messages'))
hs.hotkey.bind({'⌃', '⌘'}, 'N', openApp('Notion'))
hs.hotkey.bind({'⌃', '⌘'}, 'P', openApp('PyCharm Professional'))
hs.hotkey.bind({'⌃', '⌘'}, 'S', openApp('Safari'))
hs.hotkey.bind({'⌃', '⌘'}, 'T', openApp('iTerm'))
hs.hotkey.bind({'⌃', '⌘'}, 'V', openApp('Visual Studio Code'))
hs.hotkey.bind({'⌃', '⌘'}, 'W', openApp('WebStorm'))
hs.hotkey.bind({'⌃', '⌘'}, 'X', openApp('Xcode'))
hs.hotkey.bind({'⌃', '⌘'}, 'Y', openApp('YT Music'))
hs.hotkey.bind({'⌃', '⌘'}, 'Z', openApp('System Preferences'))
hs.hotkey.bind({'⌃', '⌘'}, '[', openApp('Trello'))
hs.hotkey.bind({'⌃', '⌘'}, ']', openApp('Millie'))

hs.hotkey.bind({'⌃', '⇧'}, 'F13', openApp('Activity Monitor'))
-- OpenApps End

