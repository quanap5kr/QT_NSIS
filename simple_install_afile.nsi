/*
Intaller nay se copy file text.txt vao directory installer. Dau tien, tao file test.txt trong folder chua doan script nay
*/

# dinh nghia ten cua file installer
OutFile "simple installer.exe"

# dinh nghia Directory de cai dat vao thu muc do, cu the o dung chung ta se su dung $Desktop
InstallDir $Desktop

# secion mac dinh
Section

# dinh nghia duong dan cua file output
SetOutPath $INSTDIR

# dinh nghia chung se cai dat file gi vao thu muc cai dat (output path)
File test.txt

SectionEnd