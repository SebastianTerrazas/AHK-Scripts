#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#NoTrayIcon

; ==Mouse Media Control==
;
; Control your media with your mouse with the help of the F13 key,
; which I remapped to the G-shift button of my g502 through the
; Logitech G Hub

; Volume controls with mouse wheel
;    Increase volume: F13 + scroll up
;    Decrease volume: F13 + scroll down
;    Mute volume: F13 + push scroll wheel
F13 & WheelUp:: Send, {Volume_Up}
F13 & WheelDown:: Send, {Volume_Down}
F13 & MButton:: Send, {Volume_Mute}

; Media controls with mouse wheel
;   Next track: F13 + scroll wheel right  
;   Next track: F13 + scroll wheel left
F13 & WheelRight:: Send, {Media_Next}
F13 & WheelLeft:: Send, {Media_Prev}

; Play/pause media: F13 + mouse right click
F13 & RButton:: Send, {Media_Play_Pause}

; Open/focus spotify: F13 + mouse left click
;   replace the text on the Run command to the location of
;   your Spotify.exe file
F13 & LButton::
	if WinActive("ahk_exe Spotify.exe")
		Send, !{Esc}
	else
	if WinExist("ahk_exe Spotify.exe")
		WinActivate
	else
		Run, "Drive:\[your-spotify-location]\Spotify.exe"
return

; If nothing else is pressed, send the regular F13 keystroke
F13::Send, {F13}