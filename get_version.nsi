/*
lay thong tin version cua Java runtime
bang cach su dung readRegStr
*/

# name cua file installer.ex
OutFile "get version.exe"

# section mac dinh
Section

# doc thong tin tu register (thanh ghi ) vao $0
ReadRegStr $0 HKLM "SOFTWARE\JavaSoft\Java Runtime Environment" CurrentVersion

# hien thi thong tin doc dc qua message box
MessageBox MB_OK "version: $0"

SectionEnd

