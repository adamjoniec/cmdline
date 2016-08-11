@rem To make this batch *works* in cmder, this line have beed added to cmder\vendor\init.bat 
@rem @call %CMDER_ROOT%\..\cmder_path.bat

@set TOOLS=%~dp0@tools
@set SCRIPTS=%~dp0@scripts

@set PATH=%TOOLS%;%SCRIPTS%;%PATH%;
@set PATH=%TOOLS%\nodejs;%TOOLS%\git\cmd;%TOOLS%\openssh;%TOOLS%\vim;%TOOLS%\gradle\bin;%TOOLS%\maven\bin;%TOOLS%\gow;%TOOLS%\nircmd;%TOOLS%\python2;%TOOLS%\python2\Scripts;%TOOLS%\supporttools;%TOOLS%\sysinternals;%TOOLS%\bat2exe;%TOOLS%\apache-ant\bin;%PATH%

@rem ===== JDK =====
@set JAVA_HOME=%TOOLS%\jdk
@set PATH=%TOOLS%\jdk\bin;%PATH%;

@rem ===== VAGRANT =====
@set VAGRANT_HOME=c:\Apps\vagrant\.vagrant.d
