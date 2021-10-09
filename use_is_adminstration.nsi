/*
kiem tra neu user l Admin
*/

# dinh nghia ten cua file cai dat
OutFile "if is admin.exe"

# section mac dinh
Section

# goi userInfo plugin de lay thong tin info
# the plugin puts the result in the stack
UserInfo::getAccountType

# pop the result from the stack into $0
Pop $0

# so sanh ket qua voi string "Admin" de xac nhan user co phai la Admin khong?
# if matching, nhay xuong 3 line
StrCmp $0 "Admin" +3

# neu khong matched hien thi ra thong tin va tra ve ket qua
MessageBox MB_OK "Not admin: $0"
Return

# con lai,
MessageBox MB_OK "Is Admin"


SectionEnd
