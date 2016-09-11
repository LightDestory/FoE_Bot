#Region Embedding
;EXE version
#AutoIt3Wrapper_Res_Fileversion=0.0.5.0
;Compire the project with the files embed
#AutoIt3Wrapper_Res_File_Add=%SCRIPTDIR%\Files\images\DevIco.jpg, RT_RCDATA, dev, 0
#AutoIt3Wrapper_Res_File_Add=%SCRIPTDIR%\Files\images\flags\en_flag.jpg, RT_RCDATA, en, 0
#AutoIt3Wrapper_Res_File_Add=%SCRIPTDIR%\Files\images\flags\it_flag.jpg, RT_RCDATA, it, 0
#EndRegion
#Region Formal Information
;General Vars
Global $Dev = "LightDestory"
Global $Version = 0.5
Global $BuildType = "Alpha"
Global $UpdateURL = "https://raw.githubusercontent.com/LightDestory/FoE_Bot/master/version.txt"
Global $GitHubURL = "https://github.com/LightDestory/FoE_Bot"
Global $WebsiteURL = "http://www.lightdestoryweb.altervista.org/"
#EndRegion
#Region Includes
;All includes go here **BE CAREFUL WITH THE ORDER HOW THEY ARE INCLUDED**
#include <GDIPlus.au3>
#include <GuiComboBox.au3>
#include <WindowsConstants.au3>
#include <GuiConstants.au3>
#include <Inet.au3>
#include <Constants.au3>
#include <AutoItConstants.au3>
#include <Misc.au3>
#include "Utils\vkConstants.au3"
#include "Imported Functions\HotKey_21b.au3"
#include "Imported Functions\_InputBox.au3"
#include "Imported Functions\ResourcesEx.au3"
#include "Languages\Languages.au3"
#include "Utils\Common.au3"
#include "GUIs\LangSelector.isf"
#EndRegion
#Region Start
;Start of the program
Opt("GUIOnEventMode", 1)
GUISetState(@SW_SHOW, $LangSelector)
WinWaitClose ("Select a Language")
#Region INCLUDE2
;Some Includes are here due to some "used a undeclared variable" issue
#include "GUIs\FoE_GUI.isf"
#include "Scripts\materials.au3"
#EndRegion
MsgBox($MB_TOPMOST+$MB_ICONINFORMATION, $TITLE_MSGS[$CurrentLang][$STARTUPTITLE], $DIALOG_MSGS[$CurrentLang][$STARTUPDIALOG])
_CheckUpdate(0)
GUISetState(@SW_SHOW, $FoE_GUI)
While 1
	Sleep(20)
WEnd
#EndRegion
