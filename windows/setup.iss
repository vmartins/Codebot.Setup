; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Free Pascal 3.0 with Lazarus"
#define MyAppShort "Free Pascal 3.0"
#define MyAppVerName "December 2015 release"
#define MyAppPublisher "www.getlazarus.org"
#define MyAppURL "http://www.getlazarus.org/"
#define MyAppExeName "lazarus.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A3D5ACB9-BDF6-405E-96A3-9E70EDB2FC52}
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\Development\FreePascal
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
InfoBeforeFile=C:\Development\build\setup\readme.txt
LicenseFile=C:\Development\build\setup\COPYING.LGPL.txt
OutputDir=C:\Development\build\setup
OutputBaseFilename=setup
;Compression=zip
SolidCompression=yes
VersionInfoVersion=3.1.1.5
VersionInfoCopyright=None
WizardImageFile=C:\Development\build\setup\large.bmp
WizardSmallImageFile=C:\Development\build\setup\small.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Development\build\libssl32.dll"; DestDir: "{sys}"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "C:\Development\build\libeay32.dll"; DestDir: "{sys}"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "C:\Development\build\fpc\*"; DestDir: "{app}\fpc"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Development\build\lazarus\*"; DestDir: "{app}\lazarus"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "small.bmp"; Flags: dontcopy
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppShort}"; Filename: "{app}\lazarus\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppShort}"; Filename: "{app}\lazarus\{#MyAppExeName}"; Tasks: desktopicon
Name: "{app}\{#MyAppShort}"; Filename: "{app}\lazarus\{#MyAppExeName}"

[Run]
Filename: "{app}\fpc\bin\i386-win32\fpcmkcfg.exe"; Paramfeters: "-d ""basepath={app}\fpc"" -o ""{app}\fpc\bin\i386-win32\fpc.cfg"""; Flags: runhidden
Filename: "{app}\fpc\bin\i386-win32\fart.exe"; Parameters: """{app}\lazarus\config\*.xml"" "/home/boxuser/Development/Base" ""{app}"""; Flags: runhidden
Filename: "http://www.getlazarus.org/installed/?platform=windows"; Flags: shellexec runasoriginaluser
Filename: "{app}\lazarus\{#MyAppExeName}"; Flags: nowait postinstall skipifsilent

