/*
Message box display
*/

# dat ten cho file installer
OutFile "Message box.exe"

# section mac dinh
Section

	MessageBox MB_OK "Message box hien thi thong tin voi button OK"
	
	MessageBox MB_YESNO "CHon YES hoac No button" IDYES dung_click IDNO sai_click
	
	dung_click:
		DetailPrint "Ban chon Yes"
		Goto Next
	sai_click:
		DetailPrint "Ban chon No"
	Next:

SectionEnd