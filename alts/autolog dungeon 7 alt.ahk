#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;window name of alts being used
alt1 = [Ch7] [removed]
alt2 = [Ch7] [removed]
alt3 = [Ch7] [removed]
alt4 = [Ch7] [removed]
alt5 = [Ch7] [removed]
alt6 = [Ch7] [removed]
alt7 = [Ch7] [removed]



;resize all windows to correct size
WinMove, %alt1%,,0,0,861, 538
WinMove, %alt2%,,0,0,861, 538
WinMove, %alt3%,,0,0,861, 538
WinMove, %alt4%,,0,0,861, 538
WinMove, %alt5%,,0,0,861, 538
WinMove, %alt6%,,0,0,861, 538	
WinMove, %alt7%,,0,0,861, 538



;log out script, change sleeps as needed depending on lag
logout(x) {
		WinActivate, %x%
		Send, {enter}
		Sleep, 30
		SendInput, /logout
		Send, {enter}
		Sleep, 30
}
;log in script, change sleeps as needed depending on lag
login(x) {
		WinActivate, %x%
		Sleep, 600
		Send, {enter}
		Sleep, 50
		Send, {enter}
		Sleep, 300
}
;enter dungeon, change sleeps as needed depending on lag
enterdungeon(x) {
		WinActivate, %x%
		Sleep, 600
		Click, 460 358
		Sleep, 50
		Click, 460 358
		Sleep, 300
}

;cc to ch7
cc7(x) {


	WinActivate, %x%
	sleep 400
	send {LWin}
	sleep 500
	Click, 90 258 0
	Click, 90 258 0
	sleep 200
	Click, Down
	sleep 600
	Click, Up
	sleep 100
	Click, 409 335 0
	Click, 409 335 0
	sleep 200
	Click, Down
	sleep 600
	Click, Up
	sleep 100
	Click, 403 434 0
	Click, 403 434 0
	sleep 200
	Click, Down
	sleep 600
	Click, Up
	sleep, 200
	

}
; move the alt forward, might not be 100% as dungeons are fucking annoying
movetoaltar(x) {
		WinActivate, %x%
		Sleep, 600
		Send, {w down}
		Sleep, 1200
		Send {w up}
		Sleep, 100
}

=::
		cc7(alt1)
		cc7(alt2)
		cc7(alt3)
		cc7(alt4)
		cc7(alt5)
		cc7(alt6)
		cc7(alt7)
		Sleep, 12000
		movetoaltar(alt1)
		movetoaltar(alt2)
		movetoaltar(alt3)
		movetoaltar(alt4)
		movetoaltar(alt5)
		movetoaltar(alt6)
		movetoaltar(alt7)



return

-::
		; log out all alts
		logout(alt1)
		logout(alt2)
		logout(alt3)
		logout(alt4)
		logout(alt5)
		logout(alt6)
		logout(alt7)
		
		;wait 12 seconds
		Sleep, 12000
		;log in all alts
		login(alt1)
		login(alt2)
		login(alt3)
		login(alt4)
		login(alt5)
		login(alt6)
		login(alt7)
		;wait 12 seconds
		Sleep, 12000
		;enter dungeon on all alts
		enterdungeon(alt1)
		enterdungeon(alt2)
		enterdungeon(alt3)
		enterdungeon(alt4)
		enterdungeon(alt5)
		enterdungeon(alt6)
		enterdungeon(alt7)
		
return
