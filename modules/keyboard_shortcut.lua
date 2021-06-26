--[[
  Application 열기
--]]
function openApp(appName)
    hs.application.launchOrFocus(appName)
end

hs.hotkey.bind({'⌥','⌘'}, 'r', hs.reload)
-- OpenApps Start
hs.hotkey.bind({'⌃', '⌘'}, 'c', function() openApp('Google Chrome') end )
hs.hotkey.bind({'⌃', '⌘'}, 'd', function() openApp('DataGrip') end )
hs.hotkey.bind({'⌃', '⌘'}, 'f', function() openApp('Firefox') end )
hs.hotkey.bind({'⌃', '⌘'}, 'g', function() openApp('GitKraken') end )
hs.hotkey.bind({'⌃', '⌘'}, 'j', function() openApp('IntelliJ IDEA Ultimate') end )
hs.hotkey.bind({'⌃', '⌘'}, 'k', function() openApp('KakaoTalk') end )
hs.hotkey.bind({'⌃', '⌘'}, 'm', function() openApp('Messages') end )
hs.hotkey.bind({'⌃', '⌘'}, 'n', function() openApp('Notion') end )
hs.hotkey.bind({'⌃', '⌘'}, 'p', function() openApp('PyCharm Professional') end )
hs.hotkey.bind({'⌃', '⌘'}, 's', function() openApp('Safari') end )
hs.hotkey.bind({'⌃', '⌘'}, 't', function() openApp('iTerm') end )
hs.hotkey.bind({'⌃', '⌘'}, 'v', function() openApp('Visual Studio Code') end )
hs.hotkey.bind({'⌃', '⌘'}, 'w', function() openApp('WebStorm') end )
hs.hotkey.bind({'⌃', '⌘'}, 'x', function() openApp('Xcode') end )
hs.hotkey.bind({'⌃', '⌘'}, 'y', function() openApp('YT Music') end )

hs.hotkey.bind({'⌃', '⌥'}, 'z', function() openApp('System Preferences') end )
hs.hotkey.bind({'⌃', '⌘'}, '[', function() openApp('Trello') end )
hs.hotkey.bind({'⌃', '⌘'}, ']', function() openApp('Millie') end )
-- OpenApps End
