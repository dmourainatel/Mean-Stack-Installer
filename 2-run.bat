@echo OFF
COLOR 17
ECHO *****************************************************
ECHO Title: MEAN Stack Bacth File
ECHO Authon: Diego Moura
ECHO Data: %DATE%
ECHO *****************************************************

REM abaixo mude o arquivo msi de acordo com a arquitetura e OS do computador....

ECHO Installing NODEJS 
SET location=%~dp0nodejs\node-v4.4.1-x64.msi
ECHO Current dirpath path %~dp0
ECHO Current file path "%location%"
ECHO ********Executando instalador do NodeJS...********
msiexec /i %location%

ECHO Installing MONGODB
SET location=%~dp0mongodb\mongodb-win32-x86_64-3.2.4-signed.msi
ECHO Current dirpath path %~dp0
ECHO Current file path "%location%"
ECHO ********Executando instalador do MongoDB...********

%~dp0mongodb\readme.txt
msiexec /i %location%

ECHO ----------Installing HotFix MONGODB
SET executable_hotfix=%~dp0mongodb\hotfix\451413_intl_x64_zip
ECHO ----------Current dirpath path %~dp0
ECHO ----------Current file path "%executable_hotfix%"
ECHO ----------********Executando instalador do HotFix para MongoDB...********
%executable_hotfix%

ECHO Installing GitHub
SET exe_git=%~dp0github\GitHubSetup
ECHO Current dirpath path %~dp0
ECHO Current file path "%exe_git%"
ECHO ********Executando instalador do GitHub...********
%exe_git%

set /p exit_flag="Pressione ENTER para sair..."