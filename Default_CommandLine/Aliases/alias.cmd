@echo off

doskey d=dir $*
doskey l=dir /OD
doskey la=dir /A
doskey c=cls
doskey ex=explorer .
doskey openit=explorer.exe %1
doskey pwd=cd
doskey desk=cd %HOMEPATH%\Desktop
doskey prog=cd %PROGRAMFILES%
doskey gr=cd c:\
doskey gh=cd %HOMEPATH%
doskey cal=gvim %WINDIR%\alias.cmd
doskey alias=cat %WINDIR%\alias.cmd
doskey ipy=ipython qtconsole --pylab=inline --ConsoleWidget.font_size=12 --IPythonWidget.font_family=Monaco --profile=marslo --colors=linux --style=marslo
