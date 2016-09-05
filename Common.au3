;Common Functions

Func _Exit()
	Exit 0
EndFunc
Func _CheckConnection()
    Local $Status = DllCall('connect.dll', 'long', 'IsInternetConnected')
    If @error Then
        Return SetError(1, 0, False)
    EndIf
    Return $Status[0] = 0
EndFunc
Func _CheckUpdate($mode)
	if(_CheckConnection()) Then
		Local $Update = False
		$OnlineV = _INetGetSource($UpdateURL, True)
		;MsgBox(0, "Compare Versions", "Program Version: " & $Version & @CRLF & "Online Version: " & $OnlineV)
		if($OnlineV<>$Version) Then
			$Update = True
		EndIf
		;MsgBox(0, "Compare Versions", $Update)
		Switch($Update)
			Case True
				$UpdateMSG = MsgBox($MB_TOPMOST+$MB_ICONINFORMATION+$MB_YESNO,$TITLE_MSGS[$CurrentLang][$UPDATETITLE],$DIALOG_MSGS[$CurrentLang][$UPDATEDIALOG])
				Switch $UpdateMSG
					Case 6 ;YES
						OpenGithub()
					Case 7 ;NO
						;Nothing
				EndSwitch 
			Case False
				Switch($mode)
					Case 0
						;nothing
					Case 1
						MsgBox($MB_TOPMOST+$MB_ICONINFORMATION,$TITLE_MSGS[$CurrentLang][$UPDATETITLE],$DIALOG_MSGS[$CurrentLang][$NOUPDATEDIALOG])
				EndSwitch
		EndSwitch
	Else
		Switch($mode)
			Case 0
				;nothing
			Case 1
				MsgBox($MB_TOPMOST+$MB_ICONINFORMATION,$TITLE_MSGS[$CurrentLang][$UPDATETITLE],$DIALOG_MSGS[$CurrentLang][$NONETDIALOG])
		EndSwitch
	EndIf
EndFunc
Func OpenWebsite()
	ShellExecute($WebsiteURL)
EndFunc
Func OpenGithub()
	ShellExecute($GitHubURL)
EndFunc