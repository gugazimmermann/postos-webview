[Setup]
AppName=Touch Sistemas - Caixa
AppVersion=0.1.0
WizardStyle=modern
DefaultDirName={pf}\Touch Sistemas
DefaultGroupName=Touch Sistemas
UninstallDisplayIcon={app}\Touch Sistemas - Caixa.exe
OutputBaseFilename=TouchSistemasCaixaInstaller
Compression=lzma2
SolidCompression=yes
OutputDir=output

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}";  GroupDescription: "{cm:AdditionalIcons}";
Name: StartAfterInstall; Description: Run application after install

[Files]
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\Touch Sistemas - Caixa.exe"; DestDir: "{app}"
Source: "assets\icons\win\icon.ico"; DestDir: "{app}"

Source: "release-builds\Touch Sistemas - Caixa-win32-x64\locales\en-US.pak"; DestDir: "{app}\locales"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\locales\pt-BR.pak"; DestDir: "{app}locales"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\resources\app.asar"; DestDir: "{app}\resources"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\chrome_100_percent.pak"; DestDir: "{app}"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\chrome_200_percent.pak"; DestDir: "{app}"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\d3dcompiler_47.dll"; DestDir: "{app}"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\ffmpeg.dll"; DestDir: "{app}"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\icudtl.dat"; DestDir: "{app}"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\libEGL.dll"; DestDir: "{app}"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\libGLESv2.dll"; DestDir: "{app}"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\resources.pak"; DestDir: "{app}"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\snapshot_blob.bin"; DestDir: "{app}"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\v8_context_snapshot.bin"; DestDir: "{app}"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\vk_swiftshader_icd.json"; DestDir: "{app}"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\vk_swiftshader.dll"; DestDir: "{app}"
Source: "release-builds\Touch Sistemas - Caixa-win32-x64\vulkan-1.dll"; DestDir: "{app}"

[Icons]
Name: "{group}\Touch Sistemas\Touch Sistemas - Caixa"; Filename: "{app}\Touch Sistemas - Caixa.exe"; WorkingDir: "{app}"; IconFilename: "{app}\icon.ico"
Name: "{commonprograms}\Touch Sistemas\Uninstall Touch Sistemas"; Filename: "{uninstallexe}"; WorkingDir: "{app}"; IconFilename: "{app}\icon.ico"
Name: "{userdesktop}\Touch Sistemas - Caixa"; Filename: "{app}\Touch Sistemas - Caixa.exe"; IconFilename: "{app}\icon.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\Touch Sistemas - Caixa.exe"; Flags: shellexec skipifsilent nowait; Tasks: StartAfterInstall