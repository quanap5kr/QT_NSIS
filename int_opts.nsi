/*
Su dung intOp
*/

OutFile "IntOp.exe"

Section

	IntOp $0 1 + 1
	DetailPrint "Result: $0"
	
	IntOp $0 $0 + 1
	DetailPrint "Result: $0"
	
	IntOp $0 $0 ~
	DetailPrint "Result: $0"

SectionEnd