;Languages
Global Const $LANG_EN = 0
Global Const $LANG_IT = 1
;Generals
Global $CurrentLang
;Arrays
DIM $ERROR_MSGS[2][20]
DIM $TITLE_MSGS[2][20]
DIM $DIALOG_MSGS[2][20]
DIM $Texts[2][20]
;--------------Texts ID;--------------
;Titles
Const $STARTUPTITLE =0
Const $ABOUT_TAB_TITLE = 1
Const $UPDATETITLE = 2
Const $ABOUT_GROUP_TITLE = 3
Const $SETTING_TAB_TITLE = 4
;Dialogs
Const $STARTUPDIALOG = 0
Const $UPDATEDIALOG = 1
Const $NOUPDATEDIALOG = 2
Const $NONETDIALOG = 3
;Texts
Const $FarmButton = 0
Const $DevInfo = 1
Const $DevName = 2
Const $VersionText = 3
Const $CheckForUpdateBtn = 4
Const $VisitGitHub_btn = 5
Const $VisitWebsitebtn = 6

;--------------Text Translated;--------------
;***EN***
;Titles
$TITLE_MSGS[$LANG_EN][$STARTUPTITLE] = "Welcome"
$TITLE_MSGS[$LANG_EN][$ABOUT_TAB_TITLE] = "About..."
$TITLE_MSGS[$LANG_EN][$UPDATETITLE] = "Notice"
$TITLE_MSGS[$LANG_EN][$ABOUT_GROUP_TITLE] = "About of Bot"
$TITLE_MSGS[$LANG_EN][$SETTING_TAB_TITLE] = "Settings"
;Dialogs
$DIALOG_MSGS[$LANG_EN][$STARTUPDIALOG] = "Bot for FORGE OF EMPIRE (FoE)"&@CRLF &"By: LightDestory" & @CRLF & "Version: " & $BuildType & " " & $Version & @CRLF & "Work in Progress..."
$DIALOG_MSGS[$LANG_EN][$UPDATEDIALOG] = "New Update avaible!" & @CRLF & "Visit project's github repo now!"
$DIALOG_MSGS[$LANG_EN][$NOUPDATEDIALOG] = "You are using the latest version." & @CRLF &"Enjoy :')!"
$DIALOG_MSGS[$LANG_EN][$NONETDIALOG] = "No Internet Connection avaible."
;Texts
$Texts[$LANG_EN][$FarmButton] = "Farm of Materials"
$Texts[$LANG_EN][$DevInfo] = "Developer:"
$Texts[$LANG_EN][$DevName] = $Dev
$Texts[$LANG_EN][$VersionText] = "Version:"
$Texts[$LANG_EN][$CheckForUpdateBtn] = "Check for Updates"
$Texts[$LANG_EN][$VisitGitHub_btn] = "Visit Github"
$Texts[$LANG_EN][$VisitWebsitebtn] = "Visit Dev Website"
;***IT***
;Titles
$TITLE_MSGS[$LANG_IT][$STARTUPTITLE] = "Benvenuto"
$TITLE_MSGS[$LANG_IT][$ABOUT_TAB_TITLE] = "Informazioni..."
$TITLE_MSGS[$LANG_IT][$UPDATETITLE] = "Notifica"
$TITLE_MSGS[$LANG_IT][$ABOUT_GROUP_TITLE] = "Informazioni sul Bot"
$TITLE_MSGS[$LANG_IT][$SETTING_TAB_TITLE] = "Impostazioni"
;Dialogs
$DIALOG_MSGS[$LANG_IT][$STARTUPDIALOG] = "Bot per FORGE OF EMPIRE (FoE)"&@CRLF &"By: LightDestory" & @CRLF & "Version: " & $BuildType & " " & $Version & @CRLF & "Lavoro in corso..."
$DIALOG_MSGS[$LANG_IT][$UPDATEDIALOG] = "Nuovo Aggioramento disponibile!" & @CRLF & "Visita il repo del progetto ora!"
$DIALOG_MSGS[$LANG_IT][$NOUPDATEDIALOG] = "Stai utilizzando l'ultima versione." & @CRLF & "Divertiti :')!"
$DIALOG_MSGS[$LANG_IT][$NONETDIALOG] = "Connessione a Internet non disponibile."
;Texts
$Texts[$LANG_IT][$FarmButton] = "Farm dei Materiali"
$Texts[$LANG_IT][$DevInfo] = "Sviluppatore:"
$Texts[$LANG_IT][$DevName] = $Dev
$Texts[$LANG_IT][$VersionText] = "Versione:"
$Texts[$LANG_IT][$CheckForUpdateBtn] = "Controlla Aggiornamenti"
$Texts[$LANG_IT][$VisitGitHub_btn] = "Visita Github"
$Texts[$LANG_IT][$VisitWebsitebtn] = "Visita il sito del Dev"