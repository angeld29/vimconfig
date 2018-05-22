@echo off
xcopy /s /y .config\nvim %LOCALAPPDATA%\nvim
copy /y .gitconfig %HOMEPATH%
