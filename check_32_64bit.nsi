/*
Check 32bit hay 64bit
*/

# dat ten file installer
OutFile "32 or 64 bit.exe"

!include LogicLib.nsh
!include x64.nsh

Section

	Var /GLOBAL VCRedistDownload
	ClearErrors
	${If} ${RunningX64}
		# 64 bit code
		DetailPrint "Ban dang chay tren window 64 bit"
		ReadRegStr $R0 HKLM "SOFTWARE\Microsoft\VisualStudio\14.0\VC\Runtimes\x64" Version
		DetailPrint "result: $R0"
		IfErrors 0 VSRedistInstalled
	
		MessageBox MB_YESNO "This application requires$\r$\n\
		'Microsoft Visual C++ Redistributable for Visual Studio 2015 - 2019 x86'$\r$\n\
		to function properly.$\r$\n$\r$\n\
		Download and install now?" /SD IDYES IDNO VSRedistInstalled
		StrCpy $VCRedistDownload "https://aka.ms/vs/16/release/vc_redist.x64.exe"
	${Else}
		# 32 bit code
		DetailPrint "Ban dang chay tren window 32 bit"
		ReadRegStr $R0 HKLM "SOFTWARE\Microsoft\VisualStudio\14.0\VC\Runtimes\x86" Version
		DetailPrint "result: $R0"
		IfErrors 0 VSRedistInstalled
	
		MessageBox MB_YESNO "This application requires$\r$\n\
		'Microsoft Visual C++ Redistributable for Visual Studio 2015 - 2019 x86'$\r$\n\
		to function properly.$\r$\n$\r$\n\
		Download and install now?" /SD IDYES IDNO VSRedistInstalled
		StrCpy $VCRedistDownload "https://aka.ms/vs/16/release/vc_redist.x86.exe"
	${EndIf}
	
	download_trial:
	
		MessageBox MB_YESNO "This application requires$\r$\n\
		'Microsoft Visual C++ Redistributable for Visual Studio 2015 - 2019 x86'$\r$\n\
		to function properly.$\r$\n$\r$\n\
		Download and install now?" /SD IDYES IDNO VSRedistInstalled
		StrCpy $VCRedistDownload "https://aka.ms/vs/16/release/vc_redist.x64.exe"
		
		;create temp dir
		DetailPrint "create: $TEMP\BigWatcher"
		CreateDirectory $TEMP\BigWatcher
		
		;download installer
		DetailPrint "downloading..."
		inetc::get "$VCRedistDownload" $TEMP\BigWatcher\vcppredist.exe
		
		
		;exec installer
		DetailPrint "installing..."
		ExecWait "$TEMP\BigWatcher\vcppredist.exe"
		
		Goto next
	
	VSRedistInstalled:
		DetailPrint "Already installed VC++"
		;Goto download_trial
	next:

SectionEnd