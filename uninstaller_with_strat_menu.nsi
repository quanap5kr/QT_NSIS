/*
Script nay se tao file cai dat installer.exe
tao file uninstaller.exe o Desktop 
Tao shortcut o Start menu
*/

# dinh nghia ten cua file installer
OutFile "create uninstaller with start menu.exe"

# ding nghia thu muc cai dat
InstallDir $Desktop

# de removing Start menu trden Window 7
RequestExecutionLevel user

# bat dau section mac dinh
Section

# setting thu muc cai dat
SetOutPath $INSTDIR

# tao file uninstaller
WriteUninstaller "$INSTDIR\uninstaller.exe"

# tao shortcut tren menu start
CreateShortCut "$SMPROGRAMS\new shortcut.lnk" "$INSTDIR\uninstaller.exe"

SectionEnd

# section cua uninstaller.exe
Section "uninstall"

# xoa file "uninstaller.exe"
Delete "$INSTDIR\uninstaller.exe"

# xoa cac file  trong cai dat
Delete "$SMPROGRAMS\new shortcut.lnk"


SectionEnd
