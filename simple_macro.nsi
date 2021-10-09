/*
lam quen voi macro de dinh ngia code va add vao file.snh cho vao Include foler
*/

# dinh nghia ten 
OutFile "simple macro.exe"

!macro Hello
	DetailPrint "Hello world!"
	MessageBox MB_OK "Day la message box tu Macro!"
!macroend

Section
	!insertmacro Hello
SectionEnd