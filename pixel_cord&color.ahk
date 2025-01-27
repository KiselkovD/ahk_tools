;#NoEnv ; #Warn ;SetWorkingDir %A_ScriptDir%
#SingleInstance
SendMode Input

~end::ExitApp

^1:: ; Control+1
    Gui, Destroy
    MouseGetPos, MouseX, MouseY ; Определяем координаты мыши 
    PixelGetColor, color, %MouseX%, %MouseY% ; Получаем цвет пикселя

    ; Создаем графический интерфейс
    Gui, Add, Text, , Цвет:
    Gui, Add, Text, , Корды:

    Gui, Add, Edit, vColorEdit ym, %color%
    Gui, Add, Edit, vCoordEdit , %MouseX%, %MouseY%

    Gui, Add, Button, gColorToClipboard ym, Копировать color
    Gui, Add, Button, gCoordToClipboard , Копировать Coord

    Gui, Show,, Ввод данных

    ; Таймер для автоматического закрытия окна через 10 секунд
    SetTimer, CloseGui, 10000
return

CoordToClipboard:
    Gui, Submit
    ClipBoard = %CoordEdit%
return

ColorToClipboard:
    Gui, Submit
    ClipBoard = %ColorEdit%
return

CloseGui:
    Gui, Destroy
return
