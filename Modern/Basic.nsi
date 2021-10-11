; NSIS modern user interface
; Basic Example Script
; Edit by Quan

;----------------------------
; Include Modern UI

!include "MUI2.nsh"

;----------------------------
; General

	; Name and file
	Name "Test voi giao dien Modern"
	OutFile "Simple Modern.exe"
	Unicode True
	
	; Thu muc cai dat mac dinh
	InstallDir "$LOCALAPPDATA\Modern UI Test"
	
	; Lay thong tin ve thu muc cai dat tu register neu kha dung
	InstallDirRegKey HKCU "Software\Modern UI Test" ""
	
	; Yeu cau dac quyen cho window visa
	RequestExecutionLevel user
	
;-----------------------------
;Interface Settings
	!define MUI_ABORTWARNING
;-----------------------------
;Pages
	
	!insertmacro MUI_PAGE_LICENSE "${NSISDIR}\Docs\Modern UI\License.txt"
	!insertmacro MUI_PAGE_COMPONENTS
	!insertmacro MUI_PAGE_DIRECTORY
	!insertmacro MUI_PAGE_INSTFILES
	
	!insertmacro MUI_UNPAGE_CONFIRM
	!insertmacro MUI_UNPAGE_INSTFILES

;------------------------------
;Languages
	!insertmacro MUI_LANGUAGE "English"

;------------------------------
;Installer SectionSetFlags

Section "DUmmy Section" SecDummy

	SetOutPath "$INSTDIR"
	
	;Chung ta them file cai dat o day...
	
	;Luu thong tin folder cai dat vao thanh ghi (register)
	WriteRegStr HKCU "Software\Modern UI Test" "" $INSTDIR
	
	;Khoi tao file uninstaller
	WriteUninstaller "$INSTDIR\Uninstall.exe"

SectionEnd

;-------------------------------
;Descriptions
	
	;Language strings
	LangString DESC_SecDummy ${LANG_ENGLISH} "A test section"
	!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
		!insertmacro MUI_DESCRIPTION_TEXT ${SecDummy} $(DESC_SecDummy)
	!insertmacro MUI_FUNCTION_DESCRIPTION_END

;--------------------------------
;Uninstaller Section

Section "Uninstall"

  ;ADD YOUR OWN FILES HERE...

  Delete "$INSTDIR\Uninstall.exe"

  RMDir "$INSTDIR"

  DeleteRegKey /ifempty HKCU "Software\Modern UI Test"
  
SectionEnd