@echo Run as administrator
@assoc .py=Python.File
@ftype Python.File=%~dp0python.exe "%%1" %%*
pause