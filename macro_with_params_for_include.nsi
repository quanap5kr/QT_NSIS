/*
script su dung macro with parametter
*/

OutFile "macro with param.exe"

!include macro_define.nsh

Section
	!insertmacro Hello "Quan"
	!insertmacro Hello "You"

SectionEnd
