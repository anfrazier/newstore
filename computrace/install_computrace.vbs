'//---------------------------------------------------------------------------
'//
'//  Author:	Andy Frazier
'//
'//  Function:	Install an application named CompuTrace
'//		
'//---------------------------------------------------------------------------



'-----Var Decleration-----
Dim WshShell, oExec, appName, executable



'-----Var Assignment-----
Set WshShell = CreateObject("Wscript.Shell")
appName = "CompuTrace"

executable = "msiexec.exe /i " & appName & ".msi /qb- /li+ C:\installs\" & appName & ".log"



'-----Execution-----
'WScript.Sleep 1000
'Wscript.Echo "This will install application: " & appName

Set oExec = WshShell.Exec(executable)


' strInstallPath = "\\servername\APP\APP1.exe " & _ "/quiet /norestart /o"







