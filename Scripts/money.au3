Global $dll = DllOpen("user32.dll")
Global $press = False
Func GetDataMoney()
	$DataConfirm = False
	While ($DataConfirm == False)
		Global $GettingDataInput = _InputBox($TITLE_MSGS[$CurrentLang][$MATERIALS_GETDATATITLE], $DIALOG_MSGS[$CurrentLang][$MATERIALS_GETDATADIALOG], "", "", 0, 1, "", 300, 200, -1, -1, $WS_SIZEBOX, $WS_EX_TOPMOST)
		If @error Then
			MsgBox($MB_TOPMOST+$MB_ICONERROR, $TITLE_MSGS[$CurrentLang][$ERRORTITLE], $DIALOG_MSGS[$CurrentLang][$CANCELDIALOG])
			Terminate()
		ElseIf($GettingDataInput == "" Or $GettingDataInput == 0) Then
			MsgBox($MB_TOPMOST+$MB_ICONERROR, $TITLE_MSGS[$CurrentLang][$ERRORTITLE], $DIALOG_MSGS[$CurrentLang][$INVALIDINPUTDIALOG])
			Terminate()
		EndIf
		$DataConfirmQuestion = MsgBox($MB_TOPMOST+$MB_ICONQUESTION+$MB_YESNO,$TITLE_MSGS[$CurrentLang][$INFOTITLE], $DIALOG_MSGS[$CurrentLang][$CONFIRMINPUTDIALOG] & " [" & $GettingDataInput & "]",0)
			Switch $DataConfirmQuestion
				Case 6 ;YES
					$DataConfirm = True
				Case 7 ;NO
					;Nothing
			Endswitch
	WEnd
	Global $arrX[$GettingDataInput]
	Global $arrY[$GettingDataInput]
	GetCoordinatesMoney()
	ConfirmCoordinatesMoney()
	FarmSetMoney()
EndFunc
Func ConfirmCoordinatesMoney()
   For $iCount = 0 To ($GettingDataInput-1)
	  MsgBox($MB_TOPMOST,"Coordinates", "Coordinate Number: " & ($iCount+1) &@CRLF &"X:" & $arrX[$iCount] & @CRLF & "Y:" & $arrY[$iCount])
   Next
EndFunc
Func GetCoordinatesMoney()
	For $iCount = 0 To ($GettingDataInput-1)
		$press = False
		MsgBox($MB_TOPMOST,"Getting Data", "Please Click OK and click on Build Number: " & ($iCount+1))
		While $press == False
			Sleep(10)
			If _IsPressed("01", $dll) Then
			   $MousePos = MouseGetPos()
			   ;ConsoleWrite("Mouse Button Pressed Coordinate Build" & @CRLF & "X=" & $MousePos[0] & @CRLF & "Y=" & $MousePos[1] & @CRLF)
			   $arrX[$iCount] =$MousePos[0]
			   $arrY[$iCount] =$MousePos[1]
				_DrawRect($MousePos[0], $MousePos[1], 10, 10, "Build" & ($iCount+1), $ColorMark)
			   $press = True
			EndIf
		WEnd
	Next
	DllClose($dll)
EndFunc
Func FarmSetMoney()
	Sleep(1500)
	For $c = 0 to ($GettingDataInput-1)
		Sleep(3000)
		MouseClick($MOUSE_CLICK_LEFT, $arrX[$c], $arrY[$c])
	Next
	Sleep($Delay+5000)
	FarmPickUPMoney()
EndFunc
Func FarmPickUPMoney()
	For $c = 0 to ($GettingDataInput-1)
		MouseClick($MOUSE_CLICK_LEFT, $arrX[$c], $arrY[$c])
		Sleep(2500)
	Next
	FarmSetMoney()
EndFunc