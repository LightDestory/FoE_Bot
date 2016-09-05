#AutoIt3Wrapper_Res_File_Add=%SCRIPTDIR%\Files\images\DevIco.jpg, RT_RCDATA, dev, 0
#AutoIt3Wrapper_Res_File_Add=%SCRIPTDIR%\Files\images\flags\en_flag.jpg, RT_RCDATA, en, 0
#AutoIt3Wrapper_Res_File_Add=%SCRIPTDIR%\Files\images\flags\it_flag.jpg, RT_RCDATA, it, 0
Global $Dev = "LightDestory"
Global $Version = 0.4
Global $BuildType = "Alpha"
Global $UpdateURL = "https://raw.githubusercontent.com/LightDestory/FoE_Bot/master/version.txt"
Global $GitHubURL = "https://github.com/LightDestory/FoE_Bot"
Global $WebsiteURL = "http://www.lightdestoryweb.altervista.org/"
#include <ResourcesEx.au3>
#include <Language\Languages.au3>
#include <FoE.au3>
#include <Common.au3>
#include <Inet.au3>
#include <GUI\LangSelector.isf>
Opt("GUIOnEventMode", 1)
GUISetState(@SW_SHOW, $LangSelector)
WinWaitClose ("Select a Language")
MsgBox($MB_TOPMOST+$MB_ICONINFORMATION, $TITLE_MSGS[$CurrentLang][$STARTUPTITLE], $DIALOG_MSGS[$CurrentLang][$STARTUPDIALOG])
_CheckUpdate(0)
#include <GUI\FoE_GUI.isf> ;It is here because I set the language after $LangSelector... So I can't include it without a selected language.
	GUISetState(@SW_SHOW, $FoE_GUI)
While 1
	Sleep(20)
WEnd
