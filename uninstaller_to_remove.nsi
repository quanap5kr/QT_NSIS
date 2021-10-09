/*
Script nay tao ra file installer co ten la "installer.exe"
Installer a file co ten la test.txt vao Desktop
Tao mot file uninstaller ten la "uninstaller.exe", file nay co nhiem vu la xoa ban than no, xoa file text dc cai dat o tren
*/

# dinh nghia nam file installer
OutFile "installer.exe"

# setting Desktop nhu la thu muc cai dat
InstallDir $Desktop

# section mac dinh
Section

# dinh nghia output path
SetOutPath $INSTDIR

# chi dinh file se dc ghi vao thu muc cai dat
File test.txt

# dinh nghia  ten file uninstaller
WriteUninstaller $INSTDIR\uninstaller.exe


SectionEnd

# section nay se dinh nghia nhung viec lam khi chay file uninstaller.exe
# ten cua section nay luon luon phai la "Uninstaller"
Section "Uninstall"

# dam bao file uninstaller.exe se dc remove
Delete $INSTDIR\Uninstaller.exe

# tiep theo la xoa cac file khac
Delete $INSTDIR\test.txt


SectionEnd