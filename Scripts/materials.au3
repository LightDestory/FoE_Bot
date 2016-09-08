;OLD CODE, NEED TO BE REVISIONED
HotKeySet("{F1}", "Terminate")
Global $dll = DllOpen("user32.dll")
Global $press = False
Func GetData()
	MsgBox($MB_TOPMOST+$MB_ICONWARNING,$TITLE_MSGS[$CurrentLang][$WARNINGTITLE],"TO TERMINATE THE BOT PRESS 'ESC'")
	Global $GettingDataInput = _InputBox($TITLE_MSGS[$CurrentLang][$MATERIALS_GETDATATITLE], "Please enter the number of farming build" & @LF & "[Only Numbers are allowed]", "", "", 0, 1, "", 300, 200, -1, -1, $WS_SIZEBOX, $WS_EX_TOPMOST)
	If(@error Or $GettingDataInput == "" Or $GettingDataInput == 0) Then
		If @error Then
			MsgBox($MB_TOPMOST+$MB_ICONERROR, $TITLE_MSGS[$CurrentLang][$ERRORTITLE], "You pressed 'Cancel'")
		ElseIf($GettingDataInput == "" Or $GettingDataInput == 0) Then
			MsgBox($MB_TOPMOST+$MB_ICONERROR, $TITLE_MSGS[$CurrentLang][$ERRORTITLE], "Invalid Input'")
			Terminate()
		EndIf
		Terminate()
	EndIf
	MsgBox ($MB_TOPMOST+$MB_ICONINFORMATION, $TITLE_MSGS[$CurrentLang][$INFOTITLE], "You have entered " & $GettingDataInput & " builds", 3)
	Global $arrX[$GettingDataInput]
	Global $arrY[$GettingDataInput]
	Global $farmitem[1][2]
	GetCoordinates()
	TestCoordinates()
	Farm()
EndFunc
Func TestCoordinates()
   For $iCount = 0 To ($GettingDataInput-1)
	  MsgBox($MB_TOPMOST,"Coordinates", "Coordinate Number: " & ($iCount+1) &@CRLF &"X:" & $arrX[$iCount] & @CRLF & "Y:" & $arrY[$iCount])
   Next
   MsgBox($MB_TOPMOST,"Coordinates", "Coordinate Farm Item " &@CRLF &"X:" & $farmitem[0][0] & @CRLF & "Y:" & $farmitem[0][1])
EndFunc
Func GetCoordinates()
   For $iCount = 0 To ($GettingDataInput-1)
	  if($iCount < $GettingDataInput) Then
		 $press = False
	  EndIf
		 MsgBox($MB_TOPMOST,"Getting Data", "Please Click OK and click on Build Number: " & ($iCount+1))
		 While $press == False
			Sleep(10)
			If _IsPressed("01", $dll) Then
			   $MousePos = MouseGetPos()
			   ConsoleWrite("Mouse Button Pressed Coordinate Build" & @CRLF & "X=" & $MousePos[0] & @CRLF & "Y=" & $MousePos[1] & @CRLF)
			   $arrX[$iCount] =$MousePos[0]
			   $arrY[$iCount] =$MousePos[1]
			   $press = True
			EndIf
		 WEnd
	  Next
   $press = false
   MsgBox($MB_TOPMOST, "Getting Data", "Press OK when you are ready to click the FARM ITEM AND THEN CLICK ON BUTTON")
	  While $press == False
			Sleep(10)
			If _IsPressed("01", $dll) Then
			   $MousePos = MouseGetPos()
			   ConsoleWrite("Mouse Button Pressed Coordinate Farm Item" & @CRLF & "X=" & $MousePos[0] & @CRLF & "Y=" & $MousePos[1] & @CRLF)
			   $farmitem[0][0] =$MousePos[0]
			   $farmitem[0][1] =$MousePos[1]
			   $press = True
			EndIf
		 WEnd
EndFunc
Func Terminate()
	MsgBox($MB_TOPMOST, "EXIT", "STOPPING...", 1)
	Exit 0
EndFunc
Func Farm()
   Set()
EndFunc
Func Set()
   Sleep(1500)
   for $c = 0 to ($GettingDataInput-1)
	  Sleep(3000)
	  MouseClick($MOUSE_CLICK_LEFT, $arrX[$c], $arrY[$c])
	  sleep(3000)
	  MouseClick($MOUSE_CLICK_LEFT, $farmitem[0][0], $farmitem[0][1])
   Next
   Sleep(305000)
   PickUP()
EndFunc
Func PickUP()
   for $c = 0 to ($GettingDataInput-1)
	  MouseClick($MOUSE_CLICK_LEFT, $arrX[$c], $arrY[$c])
	  sleep(2500)
   Next
   Farm()
EndFunc
