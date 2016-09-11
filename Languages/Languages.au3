#Region Language-Register
;Languages
Global Const $LANG_EN = 0
Global Const $LANG_IT = 1
#EndRegion
;Generals
Global $CurrentLang
#Region Arrays
;Arrays
DIM $ERROR_MSGS[2][20]
DIM $TITLE_MSGS[2][20]
DIM $DIALOG_MSGS[2][20]
DIM $Texts[2][20]
#EndRegion
#Region REGISTER OF ID
;--------------Texts ID;--------------
;Titles
Const $STARTUPTITLE =0
Const $ABOUT_TAB_TITLE = 1
Const $UPDATETITLE = 2
Const $ABOUT_GROUP_TITLE = 3
Const $SETTING_TAB_TITLE = 4
Const $WARNINGTITLE = 5
Const $ERRORTITLE = 6
Const $INFOTITLE = 7
Const $MATERIALS_GETDATATITLE = 8
Const $BOT_TAB_TITLE = 9
Const $SCRIPT_OPTIONS_GROUP_TITLE = 10
Const $DELAY_TITLE = 11
;Dialogs
Const $STARTUPDIALOG = 0
Const $UPDATEDIALOG = 1
Const $NOUPDATEDIALOG = 2
Const $NONETDIALOG = 3
Const $CANCELDIALOG = 4
Const $INVALIDINPUTDIALOG = 5
Const $MATERIALS_GETDATADIALOG = 6
Const $CONFIRMINPUTDIALOG = 7
;Texts
Const $FarmButton = 0
Const $DevInfo = 1
Const $DevName = 2
Const $VersionText = 3
Const $CheckForUpdateBtn = 4
Const $VisitGitHub_btn = 5
Const $VisitWebsitebtn = 6
Const $BuildTypeText = 7
Const $SelectScriptText = 8
Const $RunBotBtn = 9
Const $Delay_Desc = 10
Const $Delay_SetInfo = 11
Const $CurrentDelayInfo = 12
#EndRegion
#Region Language Translation
;--------------Text Translated;--------------
#Region ENGLISH
;***EN***
;Titles
$TITLE_MSGS[$LANG_EN][$STARTUPTITLE] = "Welcome"
$TITLE_MSGS[$LANG_EN][$ABOUT_TAB_TITLE] = "About..."
$TITLE_MSGS[$LANG_EN][$UPDATETITLE] = "Notice"
$TITLE_MSGS[$LANG_EN][$ABOUT_GROUP_TITLE] = "About of Bot"
$TITLE_MSGS[$LANG_EN][$SETTING_TAB_TITLE] = "Settings"
$TITLE_MSGS[$LANG_EN][$BOT_TAB_TITLE] = "Bot"
$TITLE_MSGS[$LANG_EN][$WARNINGTITLE] = "Warning"
$TITLE_MSGS[$LANG_EN][$ERRORTITLE] = "Error"
$TITLE_MSGS[$LANG_EN][$INFOTITLE] = "Info"
$TITLE_MSGS[$LANG_EN][$MATERIALS_GETDATATITLE] = "Getting Data"
$TITLE_MSGS[$LANG_EN][$SCRIPT_OPTIONS_GROUP_TITLE] = "Script's Options"
$TITLE_MSGS[$LANG_EN][$DELAY_TITLE] = "Wait Time"
;Dialogs
$DIALOG_MSGS[$LANG_EN][$STARTUPDIALOG] = "Bot for FORGE OF EMPIRE (FoE)"&@CRLF &"By: LightDestory" & @CRLF & "Version: " & $BuildType & " " & $Version & @CRLF & "Work in Progress..."
$DIALOG_MSGS[$LANG_EN][$UPDATEDIALOG] = "New Update avaible!" & @CRLF & "Visit project's github repo now!"
$DIALOG_MSGS[$LANG_EN][$NOUPDATEDIALOG] = "You are using the latest version." & @CRLF &"Enjoy :')!"
$DIALOG_MSGS[$LANG_EN][$NONETDIALOG] = "No Internet Connection avaible."
$DIALOG_MSGS[$LANG_EN][$CANCELDIALOG] = "You pressed 'Cancel'"
$DIALOG_MSGS[$LANG_EN][$INVALIDINPUTDIALOG] = "You entered an invalid input."
$DIALOG_MSGS[$LANG_EN][$MATERIALS_GETDATADIALOG] = "Enter the number of" & @CRLF & "buildings that you want to farm:"
$DIALOG_MSGS[$LANG_EN][$CONFIRMINPUTDIALOG] = "Do you want to farm this quantity of building?"
;Texts
$Texts[$LANG_EN][$FarmButton] = "Farm of Materials"
$Texts[$LANG_EN][$DevInfo] = "Developer:"
$Texts[$LANG_EN][$DevName] = $Dev
$Texts[$LANG_EN][$VersionText] = "Version:"
$Texts[$LANG_EN][$CheckForUpdateBtn] = "Check for Updates"
$Texts[$LANG_EN][$VisitGitHub_btn] = "Visit Github"
$Texts[$LANG_EN][$VisitWebsitebtn] = "Visit Dev Website"
$Texts[$LANG_EN][$BuildTypeText] = "Build Type:"
$Texts[$LANG_EN][$SelectScriptText] = "Select a Script:"
$Texts[$LANG_EN][$RunBotBtn] = "Run"
$Texts[$LANG_EN][$Delay_SetInfo] = "Pick UP every: (minutes)"
$Texts[$LANG_EN][$Delay_Desc] = "Set a 'wait time' to farm what do you want. It is needed to farm a specific building (like processes every 5mins)."
$Texts[$LANG_EN][$CurrentDelayInfo] = "Current Wait Time:"
#EndRegion
#Region ITALIAN
;***IT***
;Titles
$TITLE_MSGS[$LANG_IT][$STARTUPTITLE] = "Benvenuto"
$TITLE_MSGS[$LANG_IT][$ABOUT_TAB_TITLE] = "Informazioni..."
$TITLE_MSGS[$LANG_IT][$UPDATETITLE] = "Notifica"
$TITLE_MSGS[$LANG_IT][$ABOUT_GROUP_TITLE] = "Informazioni sul Bot"
$TITLE_MSGS[$LANG_IT][$SETTING_TAB_TITLE] = "Impostazioni"
$TITLE_MSGS[$LANG_IT][$BOT_TAB_TITLE] = "Bot"
$TITLE_MSGS[$LANG_IT][$WARNINGTITLE] = "Avviso"
$TITLE_MSGS[$LANG_IT][$ERRORTITLE] = "Errore"
$TITLE_MSGS[$LANG_IT][$INFOTITLE] = "Info"
$TITLE_MSGS[$LANG_IT][$MATERIALS_GETDATATITLE] = "Acquisendo i dati"
$TITLE_MSGS[$LANG_IT][$SCRIPT_OPTIONS_GROUP_TITLE] = "Opzioni dello Script"
$TITLE_MSGS[$LANG_IT][$DELAY_TITLE] = "Tempo di Attesa"
;Dialogs
$DIALOG_MSGS[$LANG_IT][$STARTUPDIALOG] = "Bot per FORGE OF EMPIRE (FoE)"&@CRLF &"By: LightDestory" & @CRLF & "Versione: " & $BuildType & " " & $Version & @CRLF & "Lavoro in corso..."
$DIALOG_MSGS[$LANG_IT][$UPDATEDIALOG] = "Nuovo Aggioramento disponibile!" & @CRLF & "Visita il repo del progetto ora!"
$DIALOG_MSGS[$LANG_IT][$NOUPDATEDIALOG] = "Stai utilizzando l'ultima versione." & @CRLF & "Divertiti :')!"
$DIALOG_MSGS[$LANG_IT][$NONETDIALOG] = "Connessione a Internet non disponibile."
$DIALOG_MSGS[$LANG_IT][$CANCELDIALOG] = "Hai premuto 'Cancel'"
$DIALOG_MSGS[$LANG_IT][$INVALIDINPUTDIALOG] = "Hai immesso un input non valido."
$DIALOG_MSGS[$LANG_IT][$MATERIALS_GETDATADIALOG] = "Inserisci il numero delle" & @CRLF & "costruzioni che vuoi farmare:"
$DIALOG_MSGS[$LANG_IT][$CONFIRMINPUTDIALOG] = "Do you want to farm this quantity of building?"
;Texts
$Texts[$LANG_IT][$FarmButton] = "Farm dei Materiali"
$Texts[$LANG_IT][$DevInfo] = "Sviluppatore:"
$Texts[$LANG_IT][$DevName] = $Dev
$Texts[$LANG_IT][$VersionText] = "Versione:"
$Texts[$LANG_IT][$CheckForUpdateBtn] = "Controlla Aggiornamenti"
$Texts[$LANG_IT][$VisitGitHub_btn] = "Visita Github"
$Texts[$LANG_IT][$VisitWebsitebtn] = "Visita il sito del Dev"
$Texts[$LANG_IT][$BuildTypeText] = "Tipo di Build:"
$Texts[$LANG_IT][$SelectScriptText] = "Seleziona uno Script:"
$Texts[$LANG_IT][$RunBotBtn] = "Esegui"
$Texts[$LANG_IT][$RunBotBtn] = "Run"
$Texts[$LANG_IT][$Delay_SetInfo] = "Raccogli ogni: (minuti)"
$Texts[$LANG_IT][$Delay_Desc] = "Imposta un 'tempo di attesa' per farmare quello che vuoi. Esso è necessario per farmare costruzioni specifiche (come i processi ogni 5 minuti)."
$Texts[$LANG_IT][$CurrentDelayInfo] = "Tempo di Attesa corrente:"
#EndRegion
#EndRegion