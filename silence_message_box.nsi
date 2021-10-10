/*
Script dung de su dung messagebox with silence /SD
*/

OutFile "silence messagebox.exe"

Section

	MessageBox MB_YESNO "Chon mot trong 2 button ?" /SD IDYES IDNO chon_sai
	
	DetailPrint "ban da chon Yes button"
	Goto Next
	
	Chon_sai:
		DetailPrint "ban da chon No buton"
	Next:

SectionEnd