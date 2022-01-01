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

; these are just the loop counters so dont worry about this
petcounter1 = 0
petcounter2 = 0
petcounter3 = 0
petcounter4 = 0
petcounter5 = 0
petcounter6 = 0
petcounter7 = 0
petcounter8 = 0



;you will need you go thought the functions and set your keybinds

summonpet(hotbarchange ,  pettosummon, summonfyn){
    sleep 100
    ;switch hotbars
    Send, ``
    sleep 100
    ;your modifyer to change skill row in hotbar
    Send, {Control down}
    sleep 100
    ;the skill row its changing to
    Send, %hotbarchange%
    sleep 100
    ;release the modifyer
    Send, {Control up}
    sleep 100
    ;the pet that is being summoned
    send, {%pettosummon%}
    
    if (summonfyn = 1){
        Sleep 600
        ;summon first fynn pet
        send, {n}  
    }
    sleep 100
    ;your modifyer to change skill row in hotbar
    Send, {Control down}
    sleep 100
    ;the skill row its changing to
    Send, 1
    sleep 100
    ;release the modifyer
    Send, {Control up}
    sleep 100
    ;change back to main bar
    Send, ``
    sleep 100
    ;desummon your pet
    send, {=}
    sleep 100

}


; summonpet(petbar ,  1, 1)
; first var just sets the bar being used, second var is what pet to summon, third var is wether or not we summoning fynpet too (1= true 0 = false)
; you will need to check this on EVERY numpad key. 

numpad1::
    WinActivate, %Windowname%
    petbar = 1
    summonfynny = 1
    if (petcounter1 = 0){
        petcounter1++
        summonpet(petbar, 1, summonfynny)
    }
    else if(petcounter1 = 1){
        petcounter1++   
        summonpet(petbar, 2, summonfynny)
    }
    else if(petcounter1 = 2){
        petcounter1++
        summonpet(petbar, 3, summonfynny)
    }
    else if(petcounter1 = 3){
        petcounter1++
        summonpet(petbar, 4, summonfynny)
    }
    else if(petcounter1 = 4){
        petcounter1++
        summonpet(petbar, 5, summonfynny)
    }
    else if(petcounter1 = 5){
        petcounter1++
        summonpet(petbar, 6, summonfynny)
    }
    else if(petcounter1 = 6){
        petcounter1++
        summonpet(petbar, 7, summonfynny)
    }
    else if(petcounter1 = 7){
        petcounter1++
        summonpet(petbar, 8, summonfynny)
    }
    else if(petcounter1 = 8){
        petcounter1++
        summonpet(petbar, 9, summonfynny)
    }
    else if(petcounter1 = 9){
        petcounter1 = 0
        summonpet(petbar, 0, summonfynny)
    }
return

numpad2::
    WinActivate, %Windowname%
    petbar = 2
    summonfynny = 0
    if (petcounter2 = 0){
        petcounter2++
        summonpet(petbar, 1, summonfynny)
    }
    else if(petcounter2 = 1){
        petcounter2++   
        summonpet(petbar, 2, summonfynny)
    }
    else if(petcounter2 = 2){
        petcounter2++
        summonpet(petbar, 3, summonfynny)
    }
    else if(petcounter2 = 3){
        petcounter2++
        summonpet(petbar, 4, summonfynny)
    }
    else if(petcounter2 = 4){
        petcounter2++
        summonpet(petbar, 5, summonfynny)
    }
    else if(petcounter2 = 5){
        petcounter2++
        summonpet(petbar, 6, summonfynny)
    }
    else if(petcounter2 = 6){
        petcounter2++
        summonpet(petbar, 7, summonfynny)
    }
    else if(petcounter2 = 7){
        petcounter2++
        summonpet(petbar, 8, summonfynny)
    }
    else if(petcounter2 = 8){
        petcounter2++
        summonpet(petbar, 9, summonfynny)
    }
    else if(petcounter2 = 9){
        petcounter2 = 0
        summonpet(petbar, 0, summonfynny)
    }
return
    
numpad3::
    WinActivate, %Windowname%
    petbar = 3
    summonfynny = 1
    if (petcounter3 = 0){
        petcounter3++
        summonpet(petbar, 1, summonfynny)
    }
    else if(petcounter3 = 1){
        petcounter3++   
        summonpet(petbar, 2, summonfynny)
    }
    else if(petcounter3 = 2){
        petcounter3++
        summonpet(petbar, 3, summonfynny)
    }
    else if(petcounter3 = 3){
        petcounter3++
        summonpet(petbar, 4, summonfynny)
    }
    else if(petcounter3 = 4){
        petcounter3++
        summonpet(petbar, 5, summonfynny)
    }
    else if(petcounter3 = 5){
        petcounter3++
        summonpet(petbar, 6, summonfynny)
    }
    else if(petcounter3 = 6){
        petcounter3++
        summonpet(petbar, 7, summonfynny)
    }
    else if(petcounter3 = 7){
        petcounter3++
        summonpet(petbar, 8, summonfynny)
    }
    else if(petcounter3 = 8){
        petcounter3++
        summonpet(petbar, 9, summonfynny)
    }
    else if(petcounter3 = 9){
        petcounter3 = 0
        summonpet(petbar, 0, summonfynny)
    }
return

numpad4::
    WinActivate, %Windowname%
    petbar = 4
    summonfynny = 1
    if (petcounter4 = 0){
        petcounter4++
        summonpet(petbar, 1, summonfynny)
    }
    else if(petcounter4 = 1){
        petcounter4++   
        summonpet(petbar, 2, summonfynny)
    }
    else if(petcounter4 = 2){
        petcounter4++
        summonpet(petbar, 3, summonfynny)
    }
    else if(petcounter4 = 3){
        petcounter4++
        summonpet(petbar, 4, summonfynny)
    }
    else if(petcounter4 = 4){
        petcounter4++
        summonpet(petbar, 5, summonfynny)
    }
    else if(petcounter4 = 5){
        petcounter4++
        summonpet(petbar, 6, summonfynny)
    }
    else if(petcounter4 = 6){
        petcounter4++
        summonpet(petbar, 7, summonfynny)
    }
    else if(petcounter4 = 7){
        petcounter4++
        summonpet(petbar, 8, summonfynny)
    }
    else if(petcounter4 = 8){
        petcounter4++
        summonpet(petbar, 9, summonfynny)
    }
    else if(petcounter4 = 9){
        petcounter4 = 0
        summonpet(petbar, 0, summonfynny)
    }
return

numpad5::
    WinActivate, %Windowname%
    petbar = 5
    summonfynny = 1
    if (petcounter5 = 0){
        petcounter5++
        summonpet(petbar, 1, summonfynny)
    }
    else if(petcounter5 = 1){
        petcounter5++   
        summonpet(petbar, 2, summonfynny)
    }
    else if(petcounter5 = 2){
        petcounter5++
        summonpet(petbar, 3, summonfynny)
    }
    else if(petcounter5 = 3){
        petcounter5++
        summonpet(petbar, 4, summonfynny)
    }
    else if(petcounter5 = 4){
        petcounter5++
        summonpet(petbar, 5, summonfynny)
    }
    else if(petcounter5 = 5){
        petcounter5++
        summonpet(petbar, 6, summonfynny)
    }
    else if(petcounter5 = 6){
        petcounter5++
        summonpet(petbar, 7, summonfynny)
    }
    else if(petcounter5 = 7){
        petcounter5++
        summonpet(petbar, 8, summonfynny)
    }
    else if(petcounter5 = 8){
        petcounter5++
        summonpet(petbar, 9, summonfynny)
    }
    else if(petcounter5 = 9){
        petcounter5 = 0
        summonpet(petbar, 0, summonfynny)
    }
return

numpad6::
    WinActivate, %Windowname%
    petbar = 6
    summonfynny = 1
    if (petcounter6 = 0){
        petcounter6++
        summonpet(petbar, 1, summonfynny)
    }
    else if(petcounter6 = 1){
        petcounter6++   
        summonpet(petbar, 2, summonfynny)
    }
    else if(petcounter6 = 2){
        petcounter6++
        summonpet(petbar, 3, summonfynny)
    }
    else if(petcounter6 = 3){
        petcounter6++
        summonpet(petbar, 4, summonfynny)
    }
    else if(petcounter6 = 4){
        petcounter6++
        summonpet(petbar, 5, summonfynny)
    }
    else if(petcounter6 = 5){
        petcounter6++
        summonpet(petbar, 6, summonfynny)
    }
    else if(petcounter6 = 6){
        petcounter6++
        summonpet(petbar, 7, summonfynny)
    }
    else if(petcounter6 = 7){
        petcounter6++
        summonpet(petbar, 8, summonfynny)
    }
    else if(petcounter6 = 8){
        petcounter6++
        summonpet(petbar, 9, summonfynny)
    }
    else if(petcounter6 = 9){
        petcounter6 = 0
        summonpet(petbar, 0, summonfynny)
    }
return

numpad7::
    WinActivate, %Windowname%
    petbar = 7
    summonfynny = 1
    if (petcounter7 = 0){
        petcounter7++
        summonpet(petbar, 1, summonfynny)
    }
    else if(petcounter7 = 1){
        petcounter7++   
        summonpet(petbar, 2, summonfynny)
    }
    else if(petcounter7 = 2){
        petcounter7++
        summonpet(petbar, 3, summonfynny)
    }
    else if(petcounter7 = 3){
        petcounter7++
        summonpet(petbar, 4, summonfynny)
    }
    else if(petcounter7 = 4){
        petcounter7++
        summonpet(petbar, 5, summonfynny)
    }
    else if(petcounter7 = 5){
        petcounter7++
        summonpet(petbar, 6, summonfynny)
    }
    else if(petcounter7 = 6){
        petcounter7++
        summonpet(petbar, 7, summonfynny)
    }
    else if(petcounter7 = 7){
        petcounter7++
        summonpet(petbar, 8, summonfynny)
    }
    else if(petcounter7 = 8){
        petcounter7++
        summonpet(petbar, 9, summonfynny)
    }
    else if(petcounter7 = 9){
        petcounter7 = 0
        summonpet(petbar, 0, summonfynny)
    }
return

numpad8::
    WinActivate, %Windowname%
    petbar = 8
    summonfynny = 1
    if (petcounter8 = 0){
        petcounter8++
        summonpet(petbar, 1, summonfynny)
    }
    else if(petcounter8 = 1){
        petcounter8++   
        summonpet(petbar, 2, summonfynny)
    }
    else if(petcounter8 = 2){
        petcounter8++
        summonpet(petbar, 3, summonfynny)
    }
    else if(petcounter8 = 3){
        petcounter8++
        summonpet(petbar, 4, summonfynny)
    }
    else if(petcounter8 = 4){
        petcounter8++
        summonpet(petbar, 5, summonfynny)
    }
    else if(petcounter8 = 5){
        petcounter8++
        summonpet(petbar, 6, summonfynny)
    }
    else if(petcounter8 = 6){
        petcounter8++
        summonpet(petbar, 7, summonfynny)
    }
    else if(petcounter8 = 7){
        petcounter8++
        summonpet(petbar, 8, summonfynny)
    }
    else if(petcounter8 = 8){
        petcounter8++
        summonpet(petbar, 9, summonfynny)
    }
    else if(petcounter8 = 9){
        petcounter8 = 0
        summonpet(petbar, 0, summonfynny)
    }
return