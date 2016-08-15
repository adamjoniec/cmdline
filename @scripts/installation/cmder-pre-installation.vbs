set fso = CreateObject("Scripting.FileSystemObject")
set shell = CreateObject ("Wscript.Shell")

currentDirectory = fso.GetAbsolutePathName(".")

shell.Run """***CMDER_PATH***""" +  "/START """ + currentDirectory + """", 1, True