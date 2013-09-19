@echo off

doskey d=dir $*
doskey l=dir /OD
doskey la=dir /A
doskey c=cls
doskey ..=cd ..
doskey ...=cd ../..
doskey ....=cd ../../..
doskey ex=explorer .
doskey openit=explorer.exe %1
doskey ipy=ipython qtconsole --pylab=inline --ConsoleWidget.font_size=12 --IPythonWidget.font_family=Monaco --profile=marslo --colors=linux --style=marslo
doskey pf=pry -f
doskey pwd=cd
doskey desk=cd %HOMEPATH%\Desktop
doskey prog=cd %PROGRAMFILES%
doskey mpf=cd %USERPROFILE%
doskey gh=cd %HOMEPATH%
doskey cal=gvim %WINDIR%\alias.cmd
doskey alias=cat %WINDIR%\alias.cmd
doskey gr=cd "c:\"
doskey mpr=cd "C:\MyProgrames"
doskey lno=cd "C:\Marslo\Job\Codes\LotusNotesOpt"
doskey idlelib=cd "C:\MyProgrames\Python27\Lib\idlelib"
doskey sublime="C:\Program Files\Sublime Text 3\sublime_text.exe" $*
doskey gi=cd "c:\Marslo\Tools\Git"
doskey mj=cd "C:\Marslo\Study\My\My_Scripts\Java"
