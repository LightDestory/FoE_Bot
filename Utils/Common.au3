#Region Common-Func
;---------Common Functions
Func _Exit()
	Exit 0
EndFunc
Func Terminate()
	MsgBox($MB_TOPMOST+$MB_ICONWARNING,$TITLE_MSGS[$CurrentLang][$WARNINGTITLE], $TITLE_MSGS[$CurrentLang][$TERMINATE_TITLE], 2)
	_Exit()
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
Func _DrawRect($x, $y, $w, $h, $name, $mark)
    Local $hBitmap, $hGui, $hGraphic, $GuiSizeX = @DesktopWidth, $GuiSizeY = @DesktopHeight
    Local $hWnd, $hDC, $pSize, $tSize, $pSource, $tSource, $pBlend, $tBlend, $hPen
    Local $iOpacity = 255

    $hGui = GUICreate($name & "_pos", $GuiSizeX, $GuiSizeY, -1, -1, $WS_POPUP, BitOR($WS_EX_LAYERED, $WS_EX_TOPMOST))
    GUISetState()

    _GDIPlus_Startup()
    $hWnd = _WinAPI_GetDC(0)
    $hDC = _WinAPI_CreateCompatibleDC($hWnd)
    $hBitmap = _WinAPI_CreateCompatibleBitmap($hWnd, $GuiSizeX, $GuiSizeY)
    _WinAPI_SelectObject($hDC, $hBitmap)
    $hGraphic = _GDIPlus_GraphicsCreateFromHDC($hDC)

    $hPen = _GDIPlus_PenCreate($mark, 3)

    $tSize = DllStructCreate($tagSIZE)
    $pSize = DllStructGetPtr($tSize)
    DllStructSetData($tSize, "X", $GuiSizeX)
    DllStructSetData($tSize, "Y", $GuiSizeY)
    $tSource = DllStructCreate($tagPOINT)
    $pSource = DllStructGetPtr($tSource)
    $tBlend = DllStructCreate($tagBLENDFUNCTION)
    $pBlend = DllStructGetPtr($tBlend)
    DllStructSetData($tBlend, "Alpha", $iOpacity)
    DllStructSetData($tBlend, "Format", 1)

    _GDIPlus_GraphicsDrawRect($hGraphic, $x, $y, $w, $h, $hPen)
    _WinAPI_UpdateLayeredWindow($hGui, $hWnd, 0, $pSize, $hDC, $pSource, 0, $pBlend, $ULW_ALPHA)

    _GDIPlus_PenDispose($hPen)
    _GDIPlus_GraphicsDispose($hGraphic)
    _WinAPI_ReleaseDC(0, $hWnd)
    _WinAPI_DeleteObject($hBitmap)
    _WinAPI_DeleteDC($hDC)
    _GDIPlus_Shutdown()
EndFunc
Func _SetColorMark($markcolorID)
	$ColorMark = $ColorsArray[$markcolorID][1]
EndFunc
Func _SetHotKeyStop($hotkeystopID)
	$HotKeyStopKey = $HotKeysArray[$hotkeystopID][1]
EndFunc
Func _SetHotKeys()
	HotKeySet($HotKeyStopKey, "Terminate")
EndFunc
#EndRegion