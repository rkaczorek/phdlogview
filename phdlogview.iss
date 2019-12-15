; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "PHD2 Log Viewer"
#define MyAppVersion "0.6.3"
#define MyAppPublisher "Andy Galasso"
#define MyAppURL "https://adgsoftware.com/phd2utils/"
#define MyAppExeName "phdlogview.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{F7ADA3B9-A527-4ACF-AB73-2EF41AA1CF40}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=tmp\Release\LICENSE.txt
OutputDir=tmp
OutputBaseFilename=phdlogview_setup-{#MyAppVersion}
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "tmp\Release\phdlogview.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "tmp\Release\cblas.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "tmp\Release\gsl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "tmp\Release\vcruntime140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "tmp\Release\msvcp120.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "tmp\Release\msvcr120.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "tmp\Release\LICENSE.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "tmp\Release\README.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
