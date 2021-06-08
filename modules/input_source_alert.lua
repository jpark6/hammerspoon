function input_source_alert()
    local input_source = {
      english = "com.apple.keylayout.ABC",
      korean = "com.apple.inputmethod.Korean.2SetKorean",
    }

    local current = hs.keycodes.currentSourceID()
    local language = nil

    if current == input_source.korean then
      language = '🇰🇷한글'
    elseif current == input_source.english then
      language = '🇺🇸English'
    else
      language = current
    end

    hs.alert.closeAll()
    hs.alert.show(language)

end

hs.keycodes.inputSourceChanged(input_source_alert)
