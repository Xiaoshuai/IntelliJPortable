;
; Custom Code may be included with your installer by including a file called PortableApps.comInstallerCustom.nsh 
; within the Other\Source directory. This file is coded in NSIS and can include 3 macros: 
;  CustomCodePreInstall 
; 	(which is run before installation), 
;  CustomCodePostInstall 
; 	(which is run after installation) and 
;  CustomCodeOptionalCleanup 
; 	(which is run at the beginning of installation if the optional section of an installer is not selected, 
; 	 intended for use in app upgrades when the existing app may have had the optional section included). 
; In addition to the standard NSIS functions, the following NSIS features are available: 
;  ConfigRead, 
;  ConfigReadS, 
;  ConfigWrite, 
;  ConfigWriteS, 
;  GetParent, 
;  GetRoot, 
;  VersionCompare and 
;  the LogicLib features of NSIS. 
; Please ensure that the file is Unicode encoded (not ANSI/DOS).


!macro CustomCodePostInstall
;=== delete unneeded directories
RMDir /r "$EXEDIR\App\IntelliJIDEA\$$PLUGINSDIR"
RMDir /r "$EXEDIR\App\IntelliJIDEA\bin\$$PLUGINSDIR"
RMDir /r "$EXEDIR\App\IntelliJIDEA\jre"
;===

ClearErrors
!macroend