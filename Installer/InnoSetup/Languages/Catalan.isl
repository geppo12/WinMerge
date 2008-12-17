; *** Inno Setup 5.1.11+ Catalan messages ***
;
; Translated by Carles Millan (email: carles at carlesmillan dot cat)
;
; $jrsoftware: issrc/Files/Languages/Catalan.isl,v 1.15 2007/10/22 11:52:47 mlaan Exp $

[LangOptions]

LanguageName=Catal<00E0>
LanguageID=$0403
LanguageCodePage=1252

[Messages]

; *** Application titles
SetupAppTitle=Instal�laci�
SetupWindowTitle=Instal�laci� - %1
UninstallAppTitle=Desinstal�laci�
UninstallAppFullTitle=Desinstal�la %1

; *** Misc. common
InformationTitle=Informaci�
ConfirmTitle=Confirmaci�
ErrorTitle=Error

; *** SetupLdr messages
SetupLdrStartupMessage=Aquest programa instal�lar� %1. Voleu continuar?
LdrCannotCreateTemp=No s'ha pogut crear un fitxer temporal. Instal�laci� cancel�lada
LdrCannotExecTemp=No s'ha pogut executar el fitxer a la carpeta temporal. Instal�laci� cancel�lada

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=El fitxer %1 no es troba a la carpeta d'instal�laci�. Si us plau, resoleu el problema o obteniu una nova c�pia del programa.
SetupFileCorrupt=Els fitxers d'instal�laci� estan corromputs. Si us plau, obteniu una nova c�pia del programa.
SetupFileCorruptOrWrongVer=Els fitxers d'instal�laci� estan espatllats, o s�n incompatibles amb aquesta versi� del programa. Si us plau, resoleu el problema o obteniu una nova c�pia del programa.
NotOnThisPlatform=Aquest programa no funcionar� sota %1.
OnlyOnThisPlatform=Aquest programa nom�s pot ser executat sota %1.
OnlyOnTheseArchitectures=Aquest programa nom�s pot ser instal�lat en versions de Windows dissenyades per a les seg�ents arquitectures de processador:%n%n%1
MissingWOW64APIs=Aquesta versi� de Windows no cont� la funcionalitat necess�ria per a realitzar una instal�laci� de 64 bits. Per tal de corregir aquest problema, si us plau, instal�leu el Service Pack %1.
WinVersionTooLowError=Aquest programa requereix %1 versi� %2 o posterior.
WinVersionTooHighError=Aquest programa no pot ser instal�lat sota %1 versi� %2 o posterior.
AdminPrivilegesRequired=Cal que tingueu privilegis d'administrador per poder instal�lar aquest programa.
PowerUserPrivilegesRequired=Cal que accediu com a administrador o com a membre del grup Power Users en instal�lar aquest programa.
SetupAppRunningError=El programa d'instal�laci� ha detectat que %1 s'est� executant actualment.%n%nSi us plau, tanqueu el programa i premeu Accepta per a continuar o Cancel�la per a sortir.
UninstallAppRunningError=El programa de desinstal�laci� ha detectat que %1 s'est� executant en aquest moment.%n%nSi us plau, tanqueu el programa i premeu Accepta per a continuar o Cancel�la per a sortir.

; *** Misc. errors
ErrorCreatingDir=El programa d'instal�laci� no ha pogut crear la carpeta "%1"
ErrorTooManyFilesInDir=No s'ha pogut crear un fitxer a la carpeta "%1" perqu� cont� massa fitxers

; *** Setup common messages
ExitSetupTitle=Surt
ExitSetupMessage=La instal�laci� no s'ha completat. Si sortiu ara, el programa no ser� instal�lat.%n%nPer a completar-la podreu tornar a executar el programa d'instal�laci� quan vulgueu.%n%nVoleu sortir-ne?
AboutSetupMenuItem=&Sobre la instal�laci�...
AboutSetupTitle=Sobre la instal�laci�
AboutSetupMessage=%1 versi� %2%n%3%n%nP�gina web de %1:%n%4
AboutSetupNote=
TranslatorNote=Catalan translation by Carles Millan (carles at carlesmillan.cat)

; *** Buttons
ButtonBack=< &Enrere
ButtonNext=&Seg�ent >
ButtonInstall=&Instal�la
ButtonOK=Accepta
ButtonCancel=Cancel�la
ButtonYes=&S�
ButtonYesToAll=S� a &tot
ButtonNo=&No
ButtonNoToAll=N&o a tot
ButtonFinish=&Finalitza
ButtonBrowse=&Explora...
ButtonWizardBrowse=&Cerca...
ButtonNewFolder=Crea &nova carpeta

; *** "Select Language" dialog messages
SelectLanguageTitle=Trieu idioma
SelectLanguageLabel=Trieu idioma a emprar durant la instal�laci�:

; *** Common wizard text
ClickNext=Premeu Seg�ent per a continuar o Cancel�la per a abandonar la instal�laci�.
BeveledLabel=

; *** "Welcome" wizard page
BrowseDialogTitle=Trieu una carpeta
BrowseDialogLabel=Trieu la carpeta de destinaci� i premeu Accepta.
NewFolderName=Nova carpeta
WelcomeLabel1=Benvingut a l'assistent d'instal�laci� de [name]
WelcomeLabel2=Aquest programa instal�lar� [name/ver] al vostre ordinador.%n%n�s molt recomanable que abans de continuar tanqueu tots els altres programes oberts, per tal d'evitar conflictes durant el proc�s d'instal�laci�.

; *** "Password" wizard page
WizardPassword=Contrasenya
PasswordLabel1=Aquesta instal�laci� est� protegida amb una contrasenya.
PasswordLabel3=Indiqueu la contrasenya i premeu Seg�ent per a continuar. Aquesta contrasenya distingeix entre maj�scules i min�scules.
PasswordEditLabel=&Contrasenya:
IncorrectPassword=La contrasenya introdu�da no �s correcta. Torneu-ho a intentar.

; *** "License Agreement" wizard page
WizardLicense=Acord de Llic�ncia
LicenseLabel=Cal que llegiu aquesta informaci� abans de continuar.
LicenseLabel3=Si us plau, llegiu l'Acord de Llic�ncia seg�ent. Cal que n'accepteu els termes abans de continuar amb la instal�laci�.
LicenseAccepted=&Accepto l'acord
LicenseNotAccepted=&No accepto l'acord

; *** "Information" wizard pages
WizardInfoBefore=Informaci�
InfoBeforeLabel=Si us plau, llegiu la informaci� seg�ent abans de continuar.
InfoBeforeClickLabel=Quan estigueu preparat per a continuar, premeu Seg�ent
WizardInfoAfter=Informaci�
InfoAfterLabel=Si us plau, llegiu la informaci� seg�ent abans de continuar.
InfoAfterClickLabel=Quan estigueu preparat per a continuar, premeu Seg�ent

; *** "User Information" wizard page
WizardUserInfo=Informaci� sobre l'usuari
UserInfoDesc=Si us plau, entreu la vostra informaci�.
UserInfoName=&Nom de l'usuari:
UserInfoOrg=&Organitzaci�
UserInfoSerial=&N�mero de s�rie:
UserInfoNameRequired=Cal que hi entreu un nom

; *** "Select Destination Location" wizard page
WizardSelectDir=Trieu Carpeta de Destinaci�
SelectDirDesc=On s'ha d'instal�lar [name]?
SelectDirLabel3=El programa d'instal�laci� instal�lar� [name] a la carpeta seg�ent.
SelectDirBrowseLabel=Per a continuar, premeu Seg�ent. Si desitgeu triar una altra capeta, premeu Cerca.
DiskSpaceMBLabel=Aquest programa necessita un m�nim de [mb] MB d'espai a disc.
ToUNCPathname=La instal�laci� no pot instal�lar el programa en una carpeta UNC. Si esteu  provant d'instal�lar-lo en xarxa, haureu d'assignar una lletra (D:, E:, etc...) al disc de destinaci�.
InvalidPath=Cal donar una ruta completa amb lletra d'unitat, per exemple:%n%nC:\Aplicaci�%n%no b� una ruta UNC en la forma:%n%n\\servidor\compartit
InvalidDrive=El disc o ruta de xarxa seleccionat no existeix, si us plau trieu-ne un altre.
DiskSpaceWarningTitle=No hi ha prou espai al disc
DiskSpaceWarning=El programa d'instal�laci� necessita com a m�nim %1 KB d'espai lliure, per� el disc seleccionat nom�s t� %2 KB disponibles.%n%nTot i amb aix�, desitgeu continuar?
DirNameTooLong=El nom de la carpeta o de la ruta �s massa llarg.
InvalidDirName=El nom de la carpeta no �s v�lid.
BadDirName32=Un nom de carpeta no pot contenir cap dels car�cters seg�ents:%n%n%1
DirExistsTitle=La carpeta existeix
DirExists=La carpeta:%n%n%1%n%nja existeix. Voleu instal�lar igualment el programa en aquesta carpeta?
DirDoesntExistTitle=La Carpeta No Existeix
DirDoesntExist=La carpeta:%n%n%1%n%nno existeix. Voleu que sigui creada?

; *** "Select Program Group" wizard page
WizardSelectComponents=Trieu Components
SelectComponentsDesc=Quins components cal instal�lar?
SelectComponentsLabel2=Trieu els components que voleu instal�lar; elimineu els components que no voleu instal�lar. Premeu Seg�ent per a continuar.
FullInstallation=Instal�laci� completa
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Instal�laci� compacta
CustomInstallation=Instal�laci� personalitzada
NoUninstallWarningTitle=Els components Existeixen
NoUninstallWarning=El programa d'instal�laci� ha detectat que els components seg�ents ja es troben al vostre ordinador:%n%n%1%n%nSi no estan seleccionats no seran desinstal�lats.%n%nVoleu continuar igualment?
ComponentSize1=%1 Kb
ComponentSize2=%1 Mb
ComponentsDiskSpaceMBLabel=Aquesta selecci� requereix un m�nim de [mb] Mb d'espai al disc.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Trieu tasques addicionals
SelectTasksDesc=Quines tasques addicionals cal executar?
SelectTasksLabel2=Trieu les tasques addicionals que voleu que siguin executades mentre s'instal�la [name], i despr�s premeu Seg�ent.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Trieu la carpeta del Men� Inici
SelectStartMenuFolderDesc=On cal situar els enlla�os del programa?
SelectStartMenuFolderLabel3=El programa d'instal�laci� crear� l'acc�s directe al programa a la seg�ent carpeta del men� d'Inici.
SelectStartMenuFolderBrowseLabel=Per a continuar, premeu Seg�ent. Si desitgeu triar una altra carpeta, premeu Cerca.
MustEnterGroupName=Cal que hi entreu un nom de carpeta.
GroupNameTooLong=El nom de la carpeta o de la ruta �s massa llarg.
InvalidGroupName=El nom de la carpeta no �s v�lid.
BadGroupName=El nom del grup no pot contenir cap dels car�cters seg�ents:%n%n%1
NoProgramGroupCheck2=&No cre�s una carpeta al Men� Inici

; *** "Ready to Install" wizard page
WizardReady=Preparat per a instal�lar
ReadyLabel1=El programa d'instal�laci� est� preparat per a iniciar la instal�laci� de [name] al vostre ordinador.
ReadyLabel2a=Premeu Instal�la per a continuar amb la instal�laci�, o Enrere si voleu revisar o modificar les opcions d'instal�laci�.
ReadyLabel2b=Premeu Instal�la per a continuar amb la instal�laci�.
ReadyMemoUserInfo=Informaci� de l'usuari:
ReadyMemoDir=Carpeta de destinaci�:
ReadyMemoType=Tipus d'instal�laci�:
ReadyMemoComponents=Components seleccionats:
ReadyMemoGroup=Carpeta del Men� Inici:
ReadyMemoTasks=Tasques addicionals:

; *** "Preparing to Install" wizard page
WizardPreparing=Preparant la instal�laci�
PreparingDesc=Preparant la instal�laci� de [name] al vostre ordinador.
PreviousInstallNotCompleted=La instal�laci� o desinstal�laci� anterior no s'ha dut a terme. Caldr� que reinicieu l'ordinador per a finalitzar aquesta instal�laci�.%n%nDespr�s de reiniciar l'ordinador, executeu aquest programa de nou per completar la instal�laci� de [name].
CannotContinue=La instal�laci� no pot continuar. Si us plau, premeu Cancel�la per a sortir.

; *** "Installing" wizard page
WizardInstalling=Instal�lant
InstallingLabel=Si us plau, espereu mentre s'instal�la [name] al vostre ordinador.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=Completant l'assistent d'instal�laci� de [name]
FinishedLabelNoIcons=El programa ha finalitzat la instal�laci� de [name] al vostre ordinador.
FinishedLabel=El programa ha finalitzat la instal�laci� de [name] al vostre ordinador. L'aplicaci� pot ser iniciada seleccionant les icones instal�lades.
ClickFinish=Premeu Finalitza per a sortir de la instal�laci�.
FinishedRestartLabel=Per a completar la instal�laci� de [name] cal reiniciar l'ordinador. Voleu fer-ho ara?
FinishedRestartMessage=Per a completar la instal�laci� de [name] cal reiniciar l'ordinador. Voleu fer-ho ara?
ShowReadmeCheck=S�, vull visualitzar el fitxer LLEGIUME.TXT
YesRadio=&S�, reiniciar l'ordinador ara
NoRadio=&No, reiniciar� l'ordinador m�s tard
; used for example as 'Run MyProg.exe'
RunEntryExec=Executa %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Visualitza %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=El programa d'instal�laci� necessita el disc seg�ent
SelectDiskLabel2=Si us plau, introduiu el disc %1 i premeu Continua.%n%nSi els fitxers d'aquest disc es poden trobar en una carpeta diferent de la indicada tot seguit, entreu-ne la ruta correcta o b� premeu Explora.
PathLabel=&Ruta:
FileNotInDir2=El fitxer "%1" no s'ha pogut trobar a "%2". Si us plau, introdu�u el disc correcte o trieu una altra carpeta.
SelectDirectoryLabel=Si us plau, indiqueu on es troba el disc seg�ent.

; *** Installation phase messages
SetupAborted=La instal�laci� no s'ha completat.%n%n%Si us plau, resoleu el problema i executeu de nou el programa d'instal�laci�.
EntryAbortRetryIgnore=Premeu Reintenta per a intentar-ho de nou, Ignora per a continuar igualment, o Abandona per a abandonar la instal�laci�.

; *** Installation status messages
StatusCreateDirs=Creant carpetes...
StatusExtractFiles=Extraient fitxers...
StatusCreateIcons=Creant enlla�os del programa...
StatusCreateIniEntries=Creant entrades al fitxer INI...
StatusCreateRegistryEntries=Creant entrades de registre...
StatusRegisterFiles=Registrant fitxers...
StatusSavingUninstall=Desant informaci� de desinstal�laci�...
StatusRunProgram=Finalitzant la instal�laci�...
StatusRollback=Desfent els canvis...

; *** Misc. errors
ErrorInternal2=Error intern: %1
ErrorFunctionFailedNoCode=%1 ha fallat
ErrorFunctionFailed=%1 ha fallat; codi %2
ErrorFunctionFailedWithMessage=%1 ha fallat; codi %2.%n%3
ErrorExecutingProgram=No es pot executar el fitxer:%n%1

; *** Registry errors
ErrorRegOpenKey=Error en obrir la clau de registre:%n%1\%2
ErrorRegCreateKey=Error en crear la clau de registre:%n%1\%2
ErrorRegWriteKey=Error en escriure a la clau de registre:%n%1\%2

; *** INI errors
ErrorIniEntry=Error en crear l'entrada INI al fitxer "%1".

; *** File copying errors
FileAbortRetryIgnore=Premeu Reintenta per a intentar-ho de nou, Ignora per a saltar-se aquest fitxer (no recomanat), o Abandona per a abandonar la instal�laci�.
FileAbortRetryIgnore2=Premeu Reintenta per a intentar-ho de nou, Ignora per a continuar igualment (no recomanat), o Abandona per a abandonar la instal�laci�.
SourceIsCorrupted=El fitxer d'origen est� corromput
SourceDoesntExist=El fitxer d'origen "%1" no existeix
ExistingFileReadOnly=El fitxer �s de nom�s lectura.%n%nPremeu Reintenta per a treure-li l'atribut de nom�s lectura i tornar-ho a intentar, Ignora per a saltar-se'l (no recomanat), o Abandona per a abandonar la instal�laci�.
ErrorReadingExistingDest=S'ha produ�t un error en llegir el fitxer:
FileExists=El fitxer ja existeix.%n%nVoleu que sigui sobre-escrit?
ExistingFileNewer=El fitxer existent �s m�s nou que el que s'intenta instal�lar. Es recomana mantenir el fitxer existent.%n%nVoleu mantenir-lo?
ErrorChangingAttr=Hi ha hagut un error en canviar els atributs del fitxer:
ErrorCreatingTemp=Hi ha hagut un error en crear un fitxer a la carpeta de destinaci�:
ErrorReadingSource=Hi ha hagut un error en llegir el fitxer d'origen:
ErrorCopying=Hi ha hagut un error en copiar un fitxer:
ErrorReplacingExistingFile=Hi ha hagut un error en reempla�ar el fitxer existent:
ErrorRestartReplace=Ha fallat reempla�ar:
ErrorRenamingTemp=Hi ha hagut un error en reanomenar un fitxer a la carpeta de destinaci�:
ErrorRegisterServer=No s'ha pogut registrar el DLL/OCX: %1
ErrorRegSvr32Failed=Ha fallat RegSvr32 amb el codi de sortida %1
ErrorRegisterTypeLib=No s'ha pogut registrar la biblioteca de tipus: %1

; *** Post-installation errors
ErrorOpeningReadme=Hi ha hagut un error en obrir el fitxer LLEGIUME.TXT.
ErrorRestartingComputer=El programa d'instal�laci� no ha pogut reiniciar l'ordinador. Si us plau, feu-ho manualment.

; *** Uninstaller messages
UninstallNotFound=El fitxer "%1" no existeix. No es pot desinstal�lar.
UninstallOpenError=El fitxer "%1" no pot ser obert. No es pot desinstal�lar.
UninstallUnsupportedVer=El fitxer de desinstal�laci� "%1" est� en un format no reconegut per aquesta versi� del desinstal�lador. No es pot desinstal�lar
UninstallUnknownEntry=S'ha trobat una entrada desconeguda (%1) al fitxer de desinstal�laci�.
ConfirmUninstall=Esteu segur de voler eliminar completament %1 i tots els seus components?
UninstallOnlyOnWin64=Aquest programa nom�s pot ser desinstal�lat en Windows de 64 bits.
OnlyAdminCanUninstall=Aquest programa nom�s pot ser desinstal�lat per un usuari amb privilegis d'administrador.
UninstallStatusLabel=Si us plau, espereu mentre s'elimina %1 del vostre ordinador.
UninstalledAll=%1 ha estat desinstal�lat correctament del vostre ordinador.
UninstalledMost=Desinstal�laci� de %1 completada.%n%nAlguns elements no s'han pogut eliminar. Poden ser eliminats manualment.
UninstalledAndNeedsRestart=Per completar la instal�laci� de %1, cal reiniciar el vostre ordinador.%n%nVoleu fer-ho ara?
UninstallDataCorrupted=El fitxer "%1" est� corromput. No es pot desinstal�lar.

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=Eliminar fitxer compartit?
ConfirmDeleteSharedFile2=El sistema indica que el fitxer compartit seg�ent ja no �s emprat per cap altre programa. Voleu que la desinstal�laci� elimini aquest fitxer?%n%nSi algun programa encara el fa servir i �s eliminat, podria no funcionar correctament. Si no n'esteu segur, trieu No. Deixar el fitxer al sistema no far� cap mal.
SharedFileNameLabel=Nom del fitxer:
SharedFileLocationLabel=Localitzaci�:
WizardUninstalling=Estat de la desinstal�laci�
StatusUninstalling=Desinstal�lant %1...

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]
;Inno Setup Built-in Custom Messages
NameAndVersion=%1 versi� %2
AdditionalIcons=Icones addicionals:
OptionalFeatures=Caracter�stiques opcionals:
CreateDesktopIcon=Crea una icona a l'&Escriptori
CreateQuickLaunchIcon=Crea una icona a la &Barra de tasques
ProgramOnTheWeb=%1 a Internet
UninstallProgram=Desinstal�la %1
LaunchProgram=Obre %1
AssocFileExtension=&Associa %1 amb l'extensi� de fitxer %2
AssocingFileExtension=Associant %1 amb l'extensi� de fitxer %2...

;Things we can also localize
CompanyName=Thingamahoochie Software

;Translated by Jordi Vilar <jvilar@users.sourceforge.net>
;Types
TypicalInstallation=Instal�laci� t�pica
FullInstallation=Instal�laci� completa
CompactInstallation=Instal�laci� compacta
CustomInstallation=Instal�laci� personalitzada

;Components
AppCoreFiles=Fitxers centrals del WinMerge
Filters=Filtres
Plugins=Connectors

;Localization Components
Languages=Idiomes
BulgarianLanguage=Men�s i di�legs en B�lgar
CatalanLanguage=Men�s i di�legs en Catal�
ChineseSimplifiedLanguage=Men�s i di�legs en Xin�s (Simplificat)
ChineseTraditionalLanguage=Men�s i di�legs en Xin�s (Tradicional)
CroatianLanguage=Croatian menus and dialogs
CzechLanguage=Men�s i di�legs en Txec
DanishLanguage=Men�s i di�legs en Dan�s
DutchLanguage=Men�s i di�legs en Neerland�s
FrenchLanguage=Men�s i di�legs en Franc�s
GalicianLanguage=Galician menus and dialogs
GermanLanguage=Men�s i di�legs en Alemany
GreekLanguage=Greek menus and dialogs
HungarianLanguage=Men�s i di�legs en Hongar�s
ItalianLanguage=Men�s i di�legs en Itali�
JapaneseLanguage=Men�s i di�legs en Japon�s
KoreanLanguage=Men�s i di�legs en Kore�
NorwegianLanguage=Men�s i di�legs en Noruec
PolishLanguage=Men�s i di�legs en Polon�s
PortugueseBrazilLanguage=Men�s i di�legs en Portugu�s (Brasiler)
PortugueseLanguage=Men�s i di�legs en Portugu�s
RomanianLanguage=Romanian menus and dialogs
RussianLanguage=Men�s i di�legs en Rus
SlovakLanguage=Men�s i di�legs en Eslovac
SlovenianLanguage=Slovenian menus and dialogs
SpanishLanguage=Men�s i di�legs en Castell�
SwedishLanguage=Men�s i di�legs en Suec
TurkishLanguage=Men�s i di�legs en Turc
UkrainianLanguage=Ukrainian menus and dialogs

;Tasks
ExplorerContextMenu=&Habilita la integraci� del men� de contexte a l'Explorador
IntegrateTortoiseCVS=Integra amb el &TortoiseCVS
IntegrateTortoiseSVN=Integra amb el T&ortoiseSVN
IntegrateClearCase=Integra amb el Rational &ClearCase
AddToPath=&Add WinMerge folder to your system path

;Icon Labels
ReadMe=Llegiu-me
UsersGuide=Guia de l'usuari
ViewStartMenuFolder=&Veure la carpera del men� Inicia del WinMerge

;Code Dialogs
DeletePreviousStartMenu=L'instal�lador ha detectat que heu canviat la ubicaci� del vostre men� d'inici de "%s" a "%s". Voleu esborrar la carpeta del men� d'inici anterior?

; Project file description
ProjectFileDesc=Fitxer de projecte del WinMerge
