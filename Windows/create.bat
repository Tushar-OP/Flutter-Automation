::Author:	Tushar Patil
::Date-Created: 04-09-2020
::Param:	/ide  [string]
::		/path [string]
::Usage:	create [filename] [/ide (String)] [/path (String)]


@echo off
SETLOCAL

::Check if the first param is help
IF "%~1"=="/help"  GOTO GetHelp

::Take the filename and shift so we can parse other params
SET filename=%~1
SHIFT

::Section for parsing params

GOTO :ParseParams

:ParseParams

    IF "%~1"=="" GOTO CheckDefault

    IF "%~1"=="/help"  GOTO GetHelp
    
    IF "%~1"=="/ide"  GOTO SetIde

    IF "%~1"=="/path"  GOTO SetPath

    SHIFT

GOTO :ParseParams

:SetIde

SHIFT
SET ide=%~1

GOTO :ParseParams

:SetPath

SHIFT
SET pt=%~1

GOTO :ParseParams

:CheckDefault

::If not given then set to default
IF NOT DEFINED ide SET ide="as"
IF NOT DEFINED pt SET pt="C:\Users\%USERNAME%\Desktop\"

GOTO :Main

:Main

::Goto the directory where you want to create the project
CALL cd %pt%

::Create the project
CALL flutter create %filename%

::Traverse to the newly created project
CALL cd %filename%

::Call the python script
CALL upload.py %filename% %cd% %ide%

EXIT
ENDLOCAL

:GetHelp
ECHO Usage - create filename /ide ['AS': android studio or 'code': VSCode] /path [default: desktop]
PAUSE
