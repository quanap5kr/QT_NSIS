/*
Su dung .onInit
*/

OutFile "callback onInit.exe"

Function .onInit

	MessageBox MB_YESNO "This will install. Continue?" IDYES NoAbort
		Abort ; thoat installer
	NoAbort:

FunctionEnd

Section



SectionEnd