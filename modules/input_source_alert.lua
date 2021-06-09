--[[ 
  입력소스 전환시
  전환된 언어가 한글/영어인지 여부에 따라
  '🇰🇷한글'/'🇺🇸English' alert
--]]
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
