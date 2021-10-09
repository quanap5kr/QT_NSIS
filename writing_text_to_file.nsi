# khai bao ten cua file installer
OutFile "hello world.exe"

# bat dau section
Section

# khoi tao 1 popup box, voi OK button va hien thong tin duoi text
MessageBox MB_OK "Bay gio, chung ta tao Hello_World.txt vao folder Desktop"

/*
Mo mot file co ten la "Hello_world.txt",
trong folder Desktop voi che do writable.
File nay co the khong can co san truoc khi script bien dich va chay.
*/

FileOpen $0 "$Desktop\Hello_world.txt" w

# ghi chuoi string "Hello_world" vao file "hello_world.txt"
FileWrite $0 "Hello World!"

# dong file "hello_world.txt"
FileClose $0

# hien thi thong bao de ket thuc
MessageBox MB_OK "Hello_world.txt duoc khoi tao thanh cong tren Desktop!"


SectionEnd