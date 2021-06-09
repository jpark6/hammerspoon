--[[ 
키보드 조합 입력시 마우스 커서 이동
작성중
--]]
function move_mouse()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
    hs.alert.show(center)
end
hs.hotkey.bind({'⌃', '⇧', '⌘'}, 'u', move_mouse, nil, move_mouse)
