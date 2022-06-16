#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#NoTrayIcon

;EN
; ==Spanish keyboard characters==

; Add posibility to tick vocals and insert other special characters with a 
; keyboard with english distribution.
; The magic key is '[', which is where the ticking key is in the spanish
; distribution.

;ES
; ==Caracteres teclado en español==

; Añade posibilidad de tildar vocales e insertar otros caracteres especiales 
; con un teclado con distribución en inglés.
; La tecla clave es '[', que es donde se encuentra la tecla para tildar en la 
; distribución en español.

; Insertar vocales tildadas y ñ minúsculas
;   Vocales: [ + vocal
;   Eñe: [ + ;
[ & a::Send á
[ & e::Send é
[ & i::Send í
[ & o::Send ó
[ & u::Send ú
[ & `;::Send ñ
[ & n::Send ñ

; Insertar símbolos especiales
;   Signo de exclamación inicial: [ + 1
;   Signo de interrogación inicial: [ + /
;   Barra vertical (|) alternativa: [ + `
[ & 1::Send ¡
[ & /::Send ¿
[ & `::Send |

[::Send {[}

; Insertar vocales tildadas y ñ mayúsculas
;   Vocales: shift + [ + vocal
;   Eñe: shift + [ + ;
#If GetKeyState("Shift", "P")
[ & a::Send Á
[ & e::Send É
[ & i::Send Í
[ & o::Send Ó
[ & u::Send Ú
[ & `;::Send Ñ
[ & n::Send Ñ

; Para insertar la apertura de llaves: shift + [ + ]
;   (puede o no ser arreglado en un fututo)
[ & ]::Send {{}
#If

; Insertar u con diéresis
;   ü: CapsLock + u
;   Ü: shift + CapsLock + u
CapsLock & u::
If GetKeyState("Shift", "P")
    Send Ü
Else
    Send ü
Return