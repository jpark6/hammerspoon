--[[
 `C-[`, ESC 입력시 입력소스 영어로 전환(이미 영어일겅우 제외)
--]]
function input_eng_and_esc()
  local input_english = "com.apple.keylayout.ABC"
  local input_source = hs.keycodes.currentSourceID()
  if not (input_source == input_english) then
    hs.keycodes.currentSourceID(input_english)
  end
  hs.eventtap.keyStroke({}, 'escape')
end

hs.hotkey.bind({'⌃'}, 33, input_eng_and_esc)
hs.hotkey.bind({}, 'F13', input_eng_and_esc)
