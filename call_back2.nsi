/*

*/

# ten cua file installer
OutFile "call back2.exe"

Function .onInit

	ReadINIStr $INSTDIR $WINDIR\wincmd.ini Configuration InstallDir
	StrCmp $INSTDIR "" 0 NoAbort
		MessageBox MB_OK "Windows Commands not found. Unable to get install path."
		Abort
	NoAbort:

FunctionEnd

Section
SectionEnd