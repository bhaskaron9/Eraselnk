cls
@echo off
ECHO.
ECHO =============================
ECHO Running Admin shell
ECHO =============================
:checkPrivileges 
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges ) 
:getPrivileges 
if '%1'=='ELEV' (shift & goto gotPrivileges)  
ECHO. 
ECHO **************************************
ECHO Invoking UAC for Privilege Escalation 
ECHO **************************************
setlocal DisableDelayedExpansion
set "batchPath=%~0"
setlocal EnableDelayedExpansion
ECHO Set UAC = CreateObject^("Shell.Application"^) > "%temp%\OEgetPrivileges.vbs" 
ECHO UAC.ShellExecute "!batchPath!", "ELEV", "", "runas", 1 >> "%temp%\OEgetPrivileges.vbs" 
"%temp%\OEgetPrivileges.vbs" 
exit /B 
:gotPrivileges 
::::::::::::::::::::::::::::
:START
::::::::::::::::::::::::::::
setlocal & pushd .
REM Run shell as admin (example) -
title Shortcut Virus Remover by psyCHOder
cls
type lg.txt
:menu
goto menu
:d
d:
del *.lnk
attrib -h -r -s /s /d d:\*.*
echo done!!!
goto menu
:e
e:
del *.lnk
attrib -h -r -s /s /d e:\*.*
echo done!!!
goto menu
:f
f:
del *.lnk
attrib -h -r -s /s /d f:\*.*
echo done!!!
goto menu
:g
g:
del *.lnk
attrib -h -r -s /s /d g:\*.*
echo done!!!
goto menu
:h
h:
del *.lnk
attrib -h -r -s /s /d h:\*.*
echo done!!!
goto menu
:i
i:
del *.lnk
attrib -h -r -s /s /d i:\*.*
echo done!!!
goto menu
:j
j:
del *.lnk
attrib -h -r -s /s /d j:\*.*
echo done!!!
goto menu
:menu
echo				***********************
echo 			*	Menu	      *
echo				***********************
echo 			Please enter the Drive path of your USB
echo 			1.D:		6.I:
echo 			2.E:		7.J:
echo 			3.F:		8. Readme
echo 			4.G:		9. Developer
echo 			5.H:		0. Exit
echo 			Enter Choice or the letter assigned
echo				to your USB Drive:
set/p "cho=>"
if %cho%==d goto d
if %cho%==e goto e
if %cho%==f goto f
if %cho%==g goto g
if %cho%==h goto h
if %cho%==i goto i
if %cho%==j goto j
if %cho%==D goto d
if %cho%==E goto e
if %cho%==F goto f
if %cho%==G goto g
if %cho%==H goto h
if %cho%==I goto i
if %cho%==J goto j
if %cho%==1 goto d
if %cho%==2 goto e
if %cho%==3 goto f
if %cho%==4 goto g
if %cho%==5 goto h
if %cho%==6 goto i
if %cho%==7 goto j
if %cho%==8 start readme.txt
if %cho%==9 start developer.txt
if %cho%==0 goto end
echo Invalid choice.
echo Please enter only the letter assigned
cls
goto menu
:end
echo press any key to exit   
set/p "s=>"
