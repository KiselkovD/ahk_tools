#NoEnv ; #Warn ;SetWorkingDir %A_ScriptDir%
#SingleInstance
SendMode Input

~end::
	Gui, Destroy
	ExitApp

^1:: ; Control+1
	Gui, Destroy
  Gui, Add, Text, gOpenLink, coub.com/stories
	Gui, Add, Edit, H400 W300 vInputText Multi, список ссылок ...
	Gui, Add, Button, W300 gProcessInput Default, ok
	Gui, Show,, Многострочный ввод
return

OpenLink:
	Run, https://coub.com/stories/new
return

ProcessInput:
	Gui, Submit
	StringSplit, lines, InputText, `n

	Send {End}
	Sleep, 1500
	Click 543, 290, 1
	Sleep, 100
	Send, % lines1
	

	Loop % lines0 {
		if (A_Index > 1) {
			Send {Enter}
			Sleep, 1500
			Send {End}
			Sleep, 1500
			Click 543, 290, 1
			Sleep, 100
			Send, % lines%A_Index%
		}
	}
	Send, {Enter}
	MsgBox, done
return
