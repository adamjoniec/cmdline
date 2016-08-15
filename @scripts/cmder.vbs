set fso = CreateObject("Scripting.FileSystemObject")
set shell = CreateObject ("Wscript.Shell")
set fso = CreateObject("Scripting.FileSystemObject")

currentDirectory = fso.GetAbsolutePathName(".")

path = Wscript.ScriptFullName
scriptDirectory = fso.GetParentFolderName(path)
cmderPath = scriptDirectory + "\cmder\Cmder.exe"

shell.Run """" + cmderPath + """" +  "/START """ + currentDirectory + """", 1, True