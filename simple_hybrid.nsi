/*
Hybrid 
*/

OutFile "simple hybrid.exe"
InstallDir $Desktop

!define writeFile "!insertmacro writeFile"


!macro writeFile File String
	Push "${String}"
	Push "${File}"
	Call writeFile
!macroend

Function writeFile
	
	ClearErrors
	;
	Exch $0
	; trao gia tri giua top stack va $0 nen ta co ket qua
	; stack: $0 <string>
	Exch
	; lenh exch khong co tham so nen ta trao 2 vi tri dau tien cua stack ta co ket qua
	; stack: <string> $0
	Exch $1
	; stack: $1 $0
	Push $2
	; day gia tri $2 vao stack ta co ket qua
	; stack: $2 $1 $0
	; $0: dung de save file
	; $1: la string can save
	FileOpen $2 "$0" "a"
	DetailPrint "open file: $0"
	
	FileSeek $2 0 END
	FileWrite $2 "$1"
	DetailPrint "write string: $1"
	
	FileClose $2
	DetailPrint "close file"
	
	Pop $2
	Pop $1
	Pop $0
	DetailPrint "delete stack"
	

FunctionEnd

Section
	SetOutPath $INSTDIR
	DetailPrint "$INSTDIR\a_log_file.txt"
	${writeFile} "$INSTDIR\a_log_file.txt" "A log entry"
SectionEnd