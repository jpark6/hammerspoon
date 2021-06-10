--[[ 
키보드 조합 입력시 마우스 커서 이동
--]]
local scale = 5 -- 기본 이동거리
function move_mouse_left_up()
    pos = hs.mouse.getRelativePosition()
    pos["x"] = pos["x"] - math.sqrt(scale*scale/2)
    pos["y"] = pos["y"] - math.sqrt(scale*scale/2) 
    hs.mouse.setRelativePosition(pos)
end
function move_mouse_left()
    pos = hs.mouse.getRelativePosition()
    pos["x"] = pos["x"] - scale
    hs.mouse.setRelativePosition(pos)
end
function move_mouse_left_down()
    pos = hs.mouse.getRelativePosition()
    pos["x"] = pos["x"] - math.sqrt(scale*scale/2)
    pos["y"] = pos["y"] + math.sqrt(scale*scale/2)
    hs.mouse.setRelativePosition(pos)
end
function move_mouse_up()
    pos = hs.mouse.getRelativePosition()
    pos["y"] = pos["y"] - scale
    hs.mouse.setRelativePosition(pos)
end
function move_mouse_right_up()
    pos = hs.mouse.getRelativePosition()
    pos["x"] = pos["x"] + math.sqrt(scale*scale/2) 
    pos["y"] = pos["y"] - math.sqrt(scale*scale/2) 
    hs.mouse.setRelativePosition(pos)
end
function move_mouse_right()
    pos = hs.mouse.getRelativePosition()
    pos["x"] = pos["x"] + scale
    hs.mouse.setRelativePosition(pos)
end
function move_mouse_right_down()
    pos = hs.mouse.getRelativePosition()
    pos["x"] = pos["x"] + math.sqrt(scale*scale/2)
    pos["y"] = pos["y"] + math.sqrt(scale*scale/2)
    hs.mouse.setRelativePosition(pos)
end
function move_mouse_down()
    pos = hs.mouse.getRelativePosition()
    pos["y"] = pos["y"] + scale
    hs.mouse.setRelativePosition(pos)
end
function mouse_left_click()
    hs.eventtap.leftClick(hs.mouse.absolutePosition())
end
function mouse_right_click()
    hs.eventtap.rightClick(hs.mouse.absolutePosition())
end
--[[
 방향이동 단축키 눌렀을때 이동하는 거리 토글 5 <-> 100
--]]
function toggle_mouse_scale()
    print(scale)
    if scale == 5 then
        scale = 100
    else
        scale = 5 
    end
end
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'u', move_mouse_left_up, nil, move_mouse_left_up)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'j', move_mouse_left, nil, move_mouse_left)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'm', move_mouse_left_down, nil, move_mouse_left_down)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'i', move_mouse_up, nil, move_mouse_up)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, ',', move_mouse_down, nil, move_mouse_down)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'o', move_mouse_right_up, nil, move_mouse_right_up)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'l', move_mouse_right, nil, move_mouse_right)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, '.', move_mouse_right_down, nil, move_mouse_right_down)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'k', mouse_left_click, nil, mouse_left_click)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, ';', mouse_right_click, nil, mouse_right_click)
hs.hotkey.bind({'⌃', '⇧', '⌘'}, '/', toggle_mouse_scale, nil, toggle_mouse_scale())
