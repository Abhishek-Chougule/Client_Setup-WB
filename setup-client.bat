REM Copyright (c) 2023, Abhishek Chougule and contributors
REM Contact developer.mrabhi@gmail.com for more.
REM For license information, please see license.txt
REM chmod +x setup-client.sh
REM ./setup-client.sh

REM ______________________________________________________________________________________
REM   
REM         Dont Edit This File it will malfunction the things !
REM ______________________________________________________________________________________

@echo off

set SCRIPT_PATH="C:\Users\MrAbhi\Downloads\winclient.py"
set SHORTCUT_NAME="clientservicemrabhi"


echo Set oWS = WScript.CreateObject("WScript.Shell") > %TEMP%\%SHORTCUT_NAME%.vbs
echo sLinkFile = oWS.ExpandEnvironmentStrings("%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\%SHORTCUT_NAME%.lnk") >> %TEMP%\%SHORTCUT_NAME%.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %TEMP%\%SHORTCUT_NAME%.vbs
echo oLink.TargetPath = %SCRIPT_PATH% >> %TEMP%\%SHORTCUT_NAME%.vbs
echo oLink.Save >> %TEMP%\%SHORTCUT_NAME%.vbs
cscript /nologo %TEMP%\%SHORTCUT_NAME%.vbs


del %TEMP%\%SHORTCUT_NAME%.vbs

echo Service Started Successfully ! Thanks and Regards - Abhishek Chougule :)

