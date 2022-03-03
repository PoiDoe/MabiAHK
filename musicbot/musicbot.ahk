#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#UseHook ; use a hook for mabi
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Event  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;just some shit to get it to work with mabi
full_command_line := DllCall("GetCommandLine", "str")

if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try
    {
        if A_IsCompiled
            Run *RunAs "%A_ScriptFullPath%" /restart
        else
            Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
    }
    ExitApp
}



;script to summon pets based off numpad key presses.
; your gonna have to go though and change all the keys in summon pet func to match your keybinds



;window name account this script has to run for
Windowname = Mabinogi
isplaying = 0


;play music
playBFO(){
    loop{
        WinActivate, %Windowname%
        Send, 1
        Sleep 4000
        Send, {Esc}
        Sleep 9000
    }
}

playallsongs(){

}

numpad1::
    playBFO()
    
return