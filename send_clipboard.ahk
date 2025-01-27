;#NoEnv ; #Warn ;SetWorkingDir %A_ScriptDir%
#SingleInstance
SendMode Input

~end::ExitApp

^1:: ; Control+1
	ClipSaved := ClipboardAll
	text = %clipboard%
	Loop, Parse, text  ; Разбить текст на символы
	{
		Send, %A_LoopField%  ; Отправить текущий символ
		Random, delay, 50, 200
		Sleep, %delay%
	}
	Clipboard := ClipSaved
return

^2:: ; Control+2
	Send %clipboard%
return
