/*
script su dung macro with parametter
*/

OutFile "macro with param.exe"

!macro Hello What

	MessageBox MB_OK "Helo ${What}"
	
!macroend

Section
	!insertmacro Hello "Quan"
	!insertmacro Hello "You"

SectionEnd
