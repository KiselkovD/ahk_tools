#NoEnv ; #Warn ;SetWorkingDir %A_ScriptDir% ;#SingleInstance
SendMode Input
~end::ExitApp

;XButton1 ;mouse side button
;While GetKeyState("XButton1")
~t::
   While GetKeyState("t")
   {
      click, left
      ;click, right
      ;Send {Space}
      ;Sleep, 10 ;delay
   }
return
