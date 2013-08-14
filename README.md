Colorful_cmd_Marslo
===================

Make Windows default command line colorfully

# The Colorful CMD Prompt
Truth:  
![Truth](https://github.com/woainvzu/Colorful_cmd_Marslo/blob/master/Images/Truth.png?raw=true)

## Needed Tools and files:
  - Ansicon
  - A bat file

## Steps:
- ANSICON:
    - Download Ansicon from http://adoxa.hostmyway.net/ansicon/ or https://github.com/adoxa/ansicon
    - Install:
<pre><code>> cd ansi161\x86\
> ansicon.exe -i
</code></pre>

- Create bat file:
    - Characters help by using :
<pre><code>> prompt /?
</code></pre>

    - Example (run.bat):
<pre><code>@echo
prompt $E[1;31m$d$E[1;32m$s$t$s$E[1;31m$g$g$s$E[0;33m
</code></pre>

- Add bat file into Regedit:
    - Open Regedit: **Ctrl+R** -> **regedit**
    - Path: **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor**
    Key:
<pre><code>Type:             String
Value Name:       AutoRun
Value Data:       [Path_Of_Bat_file]
</code></pre>
    - E.g.:   
    ![Command_processor](https://github.com/woainvzu/Colorful_cmd_Marslo/blob/master/Images/Machine_Command%20Processor.png?raw=true)

----------------------------
# Modify the Font in CMD

## Add the customize Font:
- Go to: HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont
- Create Font Type:
    - Type:                  String
    - Key Name:       Only defined by '0' (zero)
<pre><code>E.g.: '0', '00', ... , '00..0'
</code></pre>
    - Key Value:         Font Name (Only monospace series)
    E.g.:
<pre><code>'000'    =>   Monaco
'0000' =>    Courier New
...
</code></pre>
    - E.g.:  
    ![font](https://github.com/woainvzu/Colorful_cmd_Marslo/blob/master/Images/font.png?raw=true)

## Set code page:
- Running in command line: (or **chcp 850**)
<pre><code>> chcp 437
</code></pre>
- Code page regist location: **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nls\CodePage**

## Settings:
- **Right-Click** -> **Propties** -> **Font**
- E.g.:   
![propties](https://github.com/woainvzu/Colorful_cmd_Marslo/blob/master/Images/Propties.png?raw=true)


----------------------------
# Set aliases in Command Line(Default Command Line)
- Create **.cmd** file (E.g.: %WINDIR%\alias.cmd)
    - It can be copied from folder **Default_CommandLine\Aliases\**
- Add the full file path into regist: **HKEY_CURRENT_USER\Software\Microsoft\Command Processor**
    - CMD command: <pre><code>c:> reg add "HKCU\SOFTWARE\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "%WINDIR%\autorun.cmd"
    </code></pre>


----------------------------
# Configuration about Console:
- Copy the **console.xml** to `%APPDATA%\Console` folder


----------------------------
# Configuration about TCC/LE:
- Copy the **tcstart.btm** to `%PROGRAMFILES%\JPSoft\TCCLE13`
