; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
#include "Installer.txt"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{783D6AFF-E78C-44D5-B9E2-764D7C62C7FD}
AppName=Conan Server Manager
AppVersion={#AppVer}
AppPublisher=Bletch1971
AppPublisherURL=http://servermanagers.freeforums.net
AppSupportURL=http://servermanagers.freeforums.net/board/39/tech-support-bug-reports
AppUpdatesURL=http://servermanagers.freeforums.net/thread/36/downloads
DefaultDirName={pf}\ConanServerManager
DisableProgramGroupPage=yes
SetupIconFile={#RootPath}\favicon.ico
VersionInfoVersion={#AppVerFull}

ArchitecturesAllowed=x86 x64 ia64 
ArchitecturesInstallIn64BitMode=x64 ia64

Compression=lzma
SolidCompression=yes

UninstallDisplayName=Conan Server Manager
UninstallDisplayIcon={app}\ConanServerManager.exe

SourceDir={#SourceDir}
OutputDir={#OutputDir}\
OutputBaseFilename=ConanServerManager_{#AppVer}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "ConanServerManager.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\Conan Server Manager"; Filename: "{app}\ConanServerManager.exe"; Comment: "Start Conan Server Manager"
Name: "{commondesktop}\Conan Server Manager"; Filename: "{app}\ConanServerManager.exe"; Comment: "Start Conan Server Manager"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Conan Server Manager"; Filename: "{app}\ConanServerManager.exe"; Comment: "Start Conan Server Manager"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\ConanServerManager.exe"; Description: "{cm:LaunchProgram,Conan Server Manager}"; Flags: nowait postinstall skipifsilent unchecked

