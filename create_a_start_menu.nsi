/*
Script nay de tao start menu item
*/

# dinh nghia ten cua file installer.exe
OutFile "create start menu item.exe"

# section mac dinh
Section

# khoi tao a shortcut voi ten la "new shortcut" trong menu programs directory
# tat nhien vi du nay no khong goi den cai gi ca "" (nothing)
CreateShortCut "$SMPROGRAMS\new shortcut.lnk" ""

# note: sau khi chay installer cua script chung ta phai delete short cut bang tay

SectionEnd