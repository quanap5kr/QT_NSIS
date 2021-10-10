/*
Choi voi stack trong NSIS: Push, pop, exch
*/

OutFile "play with stack.exe"


Section

	Push "Value 1"
	Push "Value 2"
	Push "Value 3"
	Pop $0
	
	DetailPrint "Gia tri la: $0"

SectionEnd