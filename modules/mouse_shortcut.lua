--[[ 
마우스 커서 이동
--]]
local scale = 7 -- 기본 이동거리
function move_mouse(right, down)
    local pos = hs.mouse.getRelativePosition()
    pos["x"] = pos["x"] + right * scale
    pos["y"] = pos["y"] + down * scale
    hs.mouse.setRelativePosition(pos)
end

--[[ 
마우스 커서 현재 모니터의 센터로 이동
--]]
function move_mouse_center()
    local screen = hs.mouse.getCurrentScreen()
    local rect = screen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
    hs.mouse.absolutePosition(center)
end

--[[ 
마우스 커서 다음 모니터의 센터로 이동
--]]
function move_mouse_next_monitor_center()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
    hs.mouse.absolutePosition(center)

--[[ 
마우스 왼쪽 버튼 클릭
--]]
function mouse_left_click()
    hs.eventtap.leftClick(hs.mouse.absolutePosition())
end
--
--[[ 
마우스 오른쪽 버튼 클릭
--]]
function mouse_right_click()
    hs.eventtap.rightClick(hs.mouse.absolutePosition())
end

--[[
 방향이동 단축키 눌렀을때 이동하는 거리 토글 7 <-> 100
--]]
function toggle_mouse_scale()
    if scale == 7 then
        scale = 100
    else
        scale = 7
    end
end

-- 마우스 방향이동 Start
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'u', function() move_mouse(-1, -1) end , nil, function() move_mouse(-1, -1) end )
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'j', function() move_mouse(-1,  0) end , nil, function() move_mouse(-1,  0) end )
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'm', function() move_mouse(-1,  1) end , nil, function() move_mouse(-1,  1) end )
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'i', function() move_mouse( 0, -1) end , nil, function() move_mouse( 0, -1) end )
hs.hotkey.bind({'⌃', '⇧', '⌘'}, ',', function() move_mouse( 0,  1) end , nil, function() move_mouse( 0,  1) end )
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'o', function() move_mouse( 1, -1) end , nil, function() move_mouse( 1, -1) end )
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'l', function() move_mouse( 1,  0) end , nil, function() move_mouse( 1,  0) end )
hs.hotkey.bind({'⌃', '⇧', '⌘'}, '.', function() move_mouse( 1,  1) end , nil, function() move_mouse( 1,  1) end )
-- 마우스 방향이동 End


hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'k', mouse_left_click, nil, mouse_left_click)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, ';', mouse_right_click, nil, mouse_right_click)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, '/', toggle_mouse_scale, nil, toggle_mouse_scale)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'h', move_mouse_center, nil, move_mouse_center)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'g', move_mouse_next_monitor_center, nil, move_mouse_next_monitor_center)
