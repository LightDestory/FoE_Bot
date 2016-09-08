#Region Common-Func
;---------Common Functions
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
		if($OnlineV<>$Version) Then
			$Update = True
		EndIf
		Switch($Update)
			Case True
				$UpdateMSG = MsgBox($MB_TOPMOST+$MB_ICONINFORMATION+$MB_YESNO,$TITLE_MSGS[$CurrentLang][$UPDATETITLE],$DIALOG_MSGS[$CurrentLang][$UPDATEDIALOG])
				Switch $UpdateMSG
					Case 6 ;YES
						_OpenGithub()
					Case 7 ;NO
						;Nothing
				EndSwitch 
			Case False
				if($mode == 1) Then
					MsgBox($MB_TOPMOST+$MB_ICONINFORMATION,$TITLE_MSGS[$CurrentLang][$UPDATETITLE],$DIALOG_MSGS[$CurrentLang][$NOUPDATEDIALOG])
				EndIf
		EndSwitch
	Else
		if($mode == 1) Then
			MsgBox($MB_TOPMOST+$MB_ICONINFORMATION,$TITLE_MSGS[$CurrentLang][$UPDATETITLE],$DIALOG_MSGS[$CurrentLang][$NONETDIALOG])
		EndIf
	EndIf
EndFunc
Func _OpenWebsite()
	ShellExecute($WebsiteURL)
EndFunc
Func _OpenGithub()
	ShellExecute($GitHubURL)
EndFunc
#EndRegion