/*
script su dung macro with parametter
Note: ban phai copy file macro_define.nsh vao folder Include cua NSIS ban da cai dat
*/

OutFile "macro with param.exe"

!include macro_define.nsh

Section
	!insertmacro Hello "Quan"
	!insertmacro Hello "You"

SectionEnd
