@rem To make this batch *works* in cmder, this line have beed added to cmder\vendor\init.bat :
@rem -------------------------------------
@rem @call %CMDER_ROOT%\..\cmder_path.bat
@rem -------------------------------------

@set TOOLS=%~dp0@tools
@set SCRIPTS=%~dp0@scripts

@set PATH=%TOOLS%;%SCRIPTS%;%PATH%;
@set PATH=%TOOLS%\nodejs;%TOOLS%\openssh;%TOOLS%\vim;%TOOLS%\gradle\bin;%TOOLS%\maven\bin;%TOOLS%\gow;%TOOLS%\nircmd;%TOOLS%\supporttools;%TOOLS%\sysinternals;%TOOLS%\apache-ant\bin;%PATH%