;#NoEnv ; #Warn ;SetWorkingDir %A_ScriptDir%
#SingleInstance
SendMode Input

~End::ExitApp

^1::
    ; Сохраняем текущее содержимое буфера обмена
    Sleep, 30
    Clip := Clipboard
    StringLen, Length, Clip  ; Получаем длину текста в буфере обмена
    ; Если длина больше 39000 символов, сохраняем только оставшуюся часть
    If (Length > 39000) {
        OriginalClip := SubStr(Clip, 39001) 
        Length := 39000
    } else {
        OriginalClip := ClipboardAll
    }

    Offset := 0  ; Начальная позиция для вставки

    while (Offset < Length) {
        ; Вычисляем количество символов для вставки (максимум 3000)
        Part := SubStr(Clip, Offset + 1, 3000)
        Clipboard := Part  
        Sleep, 100  
        Send, ^v
        Offset += 3000  ; Увеличиваем смещение
        Sleep, 100
    }
    ; Восстанавливаем оригинальный текст в буфере обмена (оставшаяся часть)
    Clipboard := OriginalClip  
return
