Colorful_cmd_Marslo
===================

Make Windows default command line colorfully

# Needed Tools and files:
  - Ansicon  
	- A bat file  

# Steps:  
	- ANSICON:  
		○ Download Ansicon from http://adoxa.3eeweb.com/ansicon/  
		○ Install:   
		 > cd ansi160\x86\                                                     
		 > ansicon.exe -i                                                    
		                                                                     
	
	- Create bat file:
		○ Characters help by using :  
		 > prompt /?                                                          
		                                                                      
		○ Example (run.bat):  
		 @echo off                                                           
		 prompt $E[1;31m$d$E[1;32m$s$t$s$E[1;31m$g$g$s$E[0;33m               
		                                                                     
	
	- Add bat file into Regedit:  
		○ Open Regedit: Ctrl+R -> regedit  
		○ Path: HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor  
		○ Key:  
			§ Type:             String  
			§ Value Name:       AutoRun  
			§ Value Data:       [Path_Of_Bat_file]  
