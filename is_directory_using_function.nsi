/*
Script nay su dung function voi variable trong stack
*/

# ten cua file installer
OutFile "is directory using stack.exe"


Function isDir
	
	Exch $0
	IfFileExists "$0\*.*" _dir _notdir
	_dir:
		StrCpy $0 "true"
	_notdir:
		StrCpy $0 "false"
	Push $0

FunctionEnd


# section mac dinh
Section Test
	Push "E:\Vision\QT_NSIS"
	Call isDir
	Pop $0
	DetailPrint "Day la directory: $0"


SectionEnd