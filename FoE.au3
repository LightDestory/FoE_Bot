;OLD CODE, NEED TO BE REVISIONED
#include <Constants.au3>
#include <AutoItConstants.au3>
#include <Misc.au3>
HotKeySet("{ESC}", "Terminate")
Global $dll = DllOpen("user32.dll")
Global $press = False
Func GetData()
	MsgBox($MB_TOPMOST+$MB_ICONWARNING,"WARNING","TO TERMINATE THE BOT PRESS 'ESC'")
   Global $b = InputBox("Getting Data", "Please enter the number of farming build")
   If @error = 1 Then
		MsgBox($MB_SYSTEMMODAL, "Error", "You pressed 'Cancel'")
		Terminate()
   EndIf
   MsgBox ($MB_TOPMOST, "INFO", "You have entered " & $b & " builds", 3)
   Global $arrX[$b]
   Global $arrY[$b]
   Global $farmitem[1][2]
   GetCoordinates()
   TestCoordinates()
	Farm()
EndFunc
Func TestCoordinates()
   For $iCount = 0 To ($b-1)
	  MsgBox($MB_TOPMOST,"Coordinates", "Coordinate Number: " & ($iCount+1) &@CRLF &"X:" & $arrX[$iCount] & @CRLF & "Y:" & $arrY[$iCount])
   Next
   MsgBox($MB_TOPMOST,"Coordinates", "Coordinate Farm Item " &@CRLF &"X:" & $farmitem[0][0] & @CRLF & "Y:" & $farmitem[0][1])
EndFunc
Func GetCoordinates()
   For $iCount = 0 To ($b-1)
	  if($iCount < $b) Then
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
   for $c = 0 to ($b-1)
	  Sleep(3000)
	  MouseClick($MOUSE_CLICK_LEFT, $arrX[$c], $arrY[$c])
	  sleep(3000)
	  MouseClick($MOUSE_CLICK_LEFT, $farmitem[0][0], $farmitem[0][1])
   Next
   Sleep(305000)
   PickUP()
EndFunc
Func PickUP()
   for $c = 0 to ($b-1)
	  MouseClick($MOUSE_CLICK_LEFT, $arrX[$c], $arrY[$c])
	  sleep(2500)
   Next
   Farm()
EndFunc
