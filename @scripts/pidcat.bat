@cho off
call clear
adb %1 logcat -c


set PIDCAT_IGNORED_TAGS=InputReader;WifiHW;WifiStateMachine;NetworkController;WifiConfigStore;chenxingsm;WifiAutoJoinController;Tethering;WifiService;WifiController;KeyguardUpdateMonitor;SettingsInterface;Watchdog;WifiMonitor;AES;PowerManagerNotifier;ActivityThread;SensorService;WifiTrafficPoller;wpa_supplicant;SignalClusterView;BaseSignalClusterExt;PerfServiceManager;BufferQueueProducer;SurfaceFlinger;WifiTrafficPoller;thermal_repeater;AlarmManager;PowerManagerService;DisplayPowerController;Surface;ADB_SERVICES;ActivityManager;ConnectivityService;WIFI;WallpaperService;FeatureProxyBase;libPerfService;PerfService;InputReader;Netd;NetdConnector;NetworkManagementService;wifi2agps;agps;WifiWatchdogStateMachine;SocketClient;BatteryService;UsbDeviceManager;Finsky;DefaultStatusBarPlmnPlugin;RecentsTaskLoadPlan;RecentsTaskLoader;KeyguardViewMediator;SystemServicesProxy;MALI;DisplayPowerState;DisplayManagerService;SettingsProvider;GEL;aR;WindowManager;PhoneStatusBar;lights;WifiNotificationController;GraphicBuffer;MaliEGL;BufferQueueConsumer;OpenGLRenderer;InputMethodManager;PhoneWindow;BufferQueue;hwcomposer;NetworkStats;FrameworkListener;Posix;OpenSSLLib

set PIDCAT_IGNORED_TAGS=InstantRun;%PIDCAT_IGNORED_TAGS%

set PIDCAT_IGNORED_TAGS=WIFI_UT;AP_PROF;memtrack_graphic;%PIDCAT_IGNORED_TAGS%
set PIDCAT_IGNORED_TAGS=WifiNative-wlan0;%PIDCAT_IGNORED_TAGS%
set PIDCAT_IGNORED_TAGS=NetworkController\.WifiSignalController;ConnectivityManager\.CallbackHandler;views\.TaskView;%PIDCAT_IGNORED_TAGS%
set PIDCAT_IGNORED_TAGS=\[BT3\.0\+HS\]PAL;\[MALI\]\[Gralloc\];System\.out;libc\-netbsd;%PIDCAT_IGNORED_TAGS%

rem GENYMOTION
set PIDCAT_IGNORED_TAGS=Genymotion;ClipboardService;Genyd;genymotion_audio;%PIDCAT_IGNORED_TAGS%

set PIDCAT_IGNORED_TAGS=dalvikvm;%PIDCAT_IGNORED_TAGS%


rem KENJA-ROOMS LOGS ???

set PIDCAT_IGNORED_TAGS=SurfaceView;NativeCrypto;%PIDCAT_IGNORED_TAGS%

set PIDCAT_IGNORED_TAGS=VideoCapturerAndroid;org.webrtc.Logging;%PIDCAT_IGNORED_TAGS%



rem --------------- 2G/3G GSM LOGS --------------
set PIDCAT_IGNORED_TAGS=NetworkController\.MobileSignalController\(2\);Op01StatusBarPlugin;Op01StatusBarPlugin;DataType;NetworkType;StatusBar\.NetworkControllerExt;BaseSignalClusterExt\.PhoneStateExt;HttpURLChunked;WifiManager;DatabaseUtils;ChannelManager;DNSManager;SyncHttp\.client;SQLiteDatabase;GAv4\-SVC;MPlugin;PhoneApp;Mms\/Txn;WifiP2pService;DhcpStateMachine;%PIDCAT_IGNORED_TAGS%

rem set PIDCAT_IGNORED_TAGS="%PIDCAT%;WIFI_UT;WIFI;SurfaceFlinger;BufferQueueProducer;WifiTrafficPoller;ADB_SERVICES;InputDispatcher;putMethodManagerService;genymotion_audio;MobileDataStateTracker;Genymotion;Genyd;libc;libutils;RenderScript;MaliEGL;Environment;chromium;X509Util;OpenSSLLib;Posix;NativeCrypto;OpenSSLLib;TextView;IInputConnectionWrapper;FeatureProxyBase;GraphicBuffer;PhoneWindow;ActivityThread;InputMethodManager;SurfaceView;Surface;MALI;Choreographer;art;dalvikvm;libEGL;jdwp;ViewRootImpl;OpenGLRenderer;EGL_genymotion;EGL_emulation;Atlas;"

rem echo %PIDCAT_IGNORED_TAGS%
python.exe %~dp0/pidcat.py %*
