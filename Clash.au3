#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
WinActivate("BlueStacks App Player")
Opt("MouseCoordMode", 0)
Global $wait = 1000
Global $paused = False
Opt("SendKeyDelay",200)
Opt("SendKeyDownDelay",200)
HotKeySet("{PAUSE}", "TogglePause")
HotKeySet("{END}", "Terminate")

While 1
   sleep($wait)
   For $i = 0 to 60 step +1
	  zoom()
	  train()
	  Sleep(1000)
   Next
   attack()
   barbs()
   deploy()
   archers()
   deploy()
   Sleep(180000)
   MouseClick("left",440,570,1,2);Return home
 wend

 Func zoom()
    MouseClick("left",400,400,1,2)
	For $i = 0 to 6 step +1
	Send("{down}")
	Sleep($wait)
    Next
Endfunc

Func train()
    Sleep($wait)
	MouseClick("left",539, 429,1,2);barracks <<<----- EDIT THIS !
	;                           Make a Screenshot with ALT + Print and paste in Paint
	;                           Find Coordinates of your Barracks in paint and write them
	;                           Replace Above 539, 429, with your x, y, coordinates
	Sleep($wait)
	MouseClick("left",579, 628,1,2) ;train
	Sleep($wait)

	MouseClick("left",257, 581,1,2); First barrack
	Sleep($wait)
	Mouseclick("left",235, 350,100,2);Barbarians
	Sleep($wait)

	Mouseclick("left",321, 581,1,2);Second Barracks
	Sleep($wait)
	Mouseclick("left",235, 350,100,2);Barbarians
	Sleep($wait)

    MouseClick("left",381, 581,1,2); 3 barrack
	Sleep($wait)
	Mouseclick("left",335, 350,100,2);Archers
	Sleep($wait)

	Mouseclick("left",441, 581,1,2);4 Barracks
	Sleep($wait)
	Mouseclick("left",335, 350,100,2);Archers
	Sleep($wait)
	MouseClick("left",755,160,1,2)
Endfunc

Func attack()
   MouseClick("left",75,635,1,2); Attack
   Sleep($wait)
   MouseClick("left",229,539,1,2);Find
   Sleep($wait)
   Sleep(2000)
   MouseClick("left",767,544,1,2);Attack
   Sleep($wait)
Endfunc

Func barbs()
   MouseClick("left",83,649,1,2);barbs
   Sleep($wait)
EndFunc

Func archers()
   MouseClick("left",153,649,1,2);archers
   Sleep($wait)
Endfunc

Func deploy()
   MouseClick("left",380,590,20,1);Unten links 1
   Sleep($wait)
   MouseClick("left",236,482,20,1);Unten Links mitte
   Sleep($wait)
   MouseClick("left",552,546,20,1);Unten Rechts 1
   Sleep($wait)
   MouseClick("left",668,463,20,1);unten Rechts mitte
EndFunc

Func TogglePause()
	$paused = Not $paused
	While $paused
		Sleep(100)
		ToolTip('Script is "Paused"', 0, 0)
	WEnd
	ToolTip("")
EndFunc   ;==>TogglePause

Func Terminate()
	Exit 0
EndFunc   ;==>Terminate








