# 💻 🔨🥄💾 맥북 hammerspoon setting
> 새 맥북 구매나 초기화등의 이유로 세팅이 필요할 경우 대비  
> karabiner elements로 escape -> f13 바인딩 설정 필요함.
> (escape에 function 설 정 후 hs.eventtap.keyStroke({}, 'escape') 정상 작동 안함.)
> hammerspoon 설정값을 repository에 저장  

<br />

## TodoList
> ✅ vim 사용 편의를 위해 `ESC` / `C-[` 입력시 입력소스 영문으로 변경 후 `ESC`.  
> ✅ 입력소스 변경시 hammerspoon alert 창에 언어 표시.  
>  ```lua
>  hs.alert.show('🇰🇷한글'|'🇺🇸English')  
>  ```
