--[[
    윈도우 모니터 이동
--]]
function moveWindowToMonitor(n)
    return function()
        local window = hs.window.focusedWindow()
        local monitors = hs.screen.allScreens()
        -- 맥북의 이동 또는 다른 이유로 모니터 개수 가변 여부에 따라
        -- n%(모니터 개수) 번째 모니터로 이동
        window:moveToScreen(monitors[(n-1) % #monitors + 1])
    end
end

--[[
    윈도우 창 크기 조절
--]]
function resize_window(left, top, width, height)
    return function()
        local window = hs.window.focusedWindow()
        local frame = window:frame()
        local screen = window:screen():frame()

        frame.x = screen.x + screen.w * left
        frame.y = screen.y + screen.h * top
        frame.w = screen.w * width
        frame.h = screen.h * height

        window:setFrame(frame)
    end
end

--[[
    전체화면 토글
--]]
function toggleFullScreen()
    local window = hs.window.focusedWindow()
    if window ~= nil then
        window:setFullScreen(not window:isFullScreen())
    end
end

-- 현재 윈도우 n번째 모니터로 이동Start
hs.hotkey.bind({'⌥','⇧'}, '1',moveWindowToMonitor(1))
hs.hotkey.bind({'⌥','⇧'}, '2',moveWindowToMonitor(2))
hs.hotkey.bind({'⌥','⇧'}, '3',moveWindowToMonitor(3))
hs.hotkey.bind({'⌥','⇧'}, '4',moveWindowToMonitor(4))
hs.hotkey.bind({'⌥','⇧'}, '5',moveWindowToMonitor(5))
-- 현재 윈도우 모니터 이동End
-- 현재 윈도우 창 크기 조절 단축키 Start
hs.hotkey.bind({'⌥','⇧'}, '7',resize_window(0,0,2/3,1))
hs.hotkey.bind({'⌥','⇧'}, '8',resize_window(0,0,1/3,1))
hs.hotkey.bind({'⌥','⇧'}, '9',resize_window(1/3,0,1/3,1))
hs.hotkey.bind({'⌥','⇧'}, '0',resize_window(2/3,0,1/3,1))
hs.hotkey.bind({'⌥','⇧'}, '-',resize_window(1/3,0,2/3,1))
hs.hotkey.bind({'⌥','⇧'}, 'U', resize_window( 0, 0,.5,.5))
hs.hotkey.bind({'⌥','⇧'}, 'J', resize_window( 0, 0,.5, 1))
hs.hotkey.bind({'⌥','⇧'}, 'M', resize_window( 0,.5,.5,.5))
hs.hotkey.bind({'⌥','⇧'}, 'I', resize_window( 0, 0, 1,.5))
hs.hotkey.bind({'⌥','⇧'}, 'K', resize_window( 0, 0, 1, 1))
hs.hotkey.bind({'⌥','⇧'}, ',', resize_window( 0,.5, 1,.5))
hs.hotkey.bind({'⌥','⇧'}, 'O', resize_window(.5, 0,.5,.5))
hs.hotkey.bind({'⌥','⇧'}, 'L', resize_window(.5, 0,.5, 1))
hs.hotkey.bind({'⌥','⇧'}, '.', resize_window(.5,.5,.5,.5))
hs.hotkey.bind({'⌥','⇧'}, ';', toggleFullScreen)
-- 현재 윈도우 창 크기 조절 단축키 End
