#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseX64=n
#AutoIt3Wrapper_Res_Comment=FoE bot By LightDestory
#AutoIt3Wrapper_Res_Description=A simple Bot for FoE written with AutoIT
#AutoIt3Wrapper_Res_Fileversion=0.0.7.0
#AutoIt3Wrapper_Res_LegalCopyright=(C) Copyright LightDestory 2016-2017
#AutoIt3Wrapper_Res_File_Add=Files\images\DevIco.jpg, RT_RCDATA, dev, 0
#AutoIt3Wrapper_Res_File_Add=Files\images\flags\en_flag.jpg, RT_RCDATA, en, 0
#AutoIt3Wrapper_Res_File_Add=Files\images\flags\it_flag.jpg, RT_RCDATA, it, 0
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#Region Formal Information
;General Vars
Global $Dev = "LightDestory"
Global $Version = 0.7
Global $BuildType = "Alpha"
Global $UpdateURL = "https://raw.githubusercontent.com/LightDestory/FoE_Bot/master/version.txt"
Global $GitHubURL = "https://github.com/LightDestory/FoE_Bot"
Global $WebsiteURL = "http://www.lightdestoryweb.altervista.org/"
#EndRegion Formal Information
#Region Includes
;All includes go here **BE CAREFUL WITH THE ORDER HOW THEY ARE INCLUDED**
#include <GDIPlus.au3>
#include <GuiComboBox.au3>
#include <GUIConstantsEx.au3>
#include <ComboConstants.au3>
#include <WindowsConstants.au3>
#include <GuiConstants.au3>
#include <Inet.au3>
#include <Constants.au3>
#include <AutoItConstants.au3>
#include <Misc.au3>
#include "Imported Functions\_InputBox.au3"
#include "Imported Functions\ResourcesEx.au3"
#include "Languages\Languages.au3"
#include "Utils\Color.au3"
#include "Utils\HotKeyConstants.au3"
#include "Utils\Common.au3"
#include "GUIs\LangSelector.isf"
#EndRegion Includes
#Region Start
;Start of the program
Opt("GUIOnEventMode", 1)
GUISetState(@SW_SHOW, $LangSelector)
WinWaitClose("Select a Language")
#Region INCLUDE2
;Some Includes are here due to some "used a undeclared variable" issue
#include "GUIs\FoE_GUI.isf"
#include "Scripts\materials.au3"
#include "Scripts\money.au3"
#EndRegion INCLUDE2
MsgBox($MB_TOPMOST + $MB_ICONINFORMATION, $TITLE_MSGS[$CurrentLang][$STARTUPTITLE], $DIALOG_MSGS[$CurrentLang][$STARTUPDIALOG])
_CheckUpdate(0)
GUISetState(@SW_SHOW, $FoE_GUI)
While 1
	Sleep(20)
WEnd
#EndRegion Start