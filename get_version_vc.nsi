/*
lay thong tin cua VC++
*/

# ten file installer.exe
OutFile "Get version VC.exe"


!include LogicLib.nsh
Section "CheckVCRedist"

ReadRegStr $0 HKLM "SOFTWARE\Microsoft\VisualStudio\14.0\VC\Runtimes\x86" CurrentVersion
DetailPrint "Found version $0"

; Check for 14.16.27027 [sic]
${If} $0 <= "v14.16.27024.01"
	DetailPrint "The installed version is usable"
${Else}
	DetailPrint "Must install redist"
${EndIf}

SectionEnd
