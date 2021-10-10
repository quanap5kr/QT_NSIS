/*
Script nay la vi du cua function don gian trong Nsis
*/

# ten cua file cai dat
OutFile "simple function.exe"

Function Hello

	MessageBox MB_OK "Hello world"

FunctionEnd

Section

	Call Hello

SectionEnd