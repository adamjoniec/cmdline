set fso = CreateObject("Scripting.FileSystemObject")
set shell = CreateObject ("Wscript.Shell")

dim currentDirectory
currentDirectory = fso.GetAbsolutePathName(".")
	
shell.Run """c:\drived\cmdline\cmder\Cmder.exe"" /START """ + currentDirectory + """", 1, True