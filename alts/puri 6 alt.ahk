#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; move windows for niceness
WinMove, [Ch7] [removed],,0,0,861, 538
WinMove, [Ch7] [removed],,0,0,861, 538
WinMove, [Ch7] [removed],,0,0,861, 538

WinMove, [Ch7] [removed],,0,0,861, 538
WinMove, [Ch7] [removed],,0,0,861, 538
WinMove, [Ch7] [removed],,0,0,861, 538
;name of all alts windows
alt1 = [Ch7] [removed]

alt2 = [Ch7] [removed]

alt3 = [Ch7] [removed]

alt4 = [Ch7] [removed]

alt5 = [Ch7] [removed]

alt6 = [Ch7] [removed]
; exit mission by clicking on exit button, not the best thing, breaks half the time	
exit(x) {
	WinActivate, %x%
	Sleep, 100
	Click, 799 91 0
	Sleep, 100
	Click, 799 91
	Sleep, 100
	Click, 477 350 0
	Sleep, 100
	Click, 477 350
	Sleep, 100
}
-::
	exit(alt1)
	exit(alt2)
	exit(alt3)
	exit(alt4)
	exit(alt5)
	;exit(alt6)
	
	
	
	
return