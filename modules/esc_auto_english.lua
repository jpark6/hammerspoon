local input_english = "com.apple.keylayout.ABC"

function input_eng_and_esc()
  local input_source = hs.keycodes.currentSourceID()
  if not (input_source == input_english) then
    hs.keycodes.currentSourceID(input_english)
  end
  hs.eventtap.keyStroke({}, 'escape')
end

hs.hotkey.bind({'control'}, 33, input_eng_and_esc)
hs.hotkey.bind({}, 'F13', input_eng_and_esc)
