@ECHO OFF
SET CurDir=%~dp0
::SET CurDir=
ECHO 00%%



:: Get Far Manager install dir
::FOR /F "tokens=2*" %%i IN ('REG QUERY "HKLM\SOFTWARE\Far Manager" /v "InstallDir" 2^>NUL ^| FIND /I "InstallDir"') DO SET InstallDir=%%j>NUL
::IF "%InstallDir%" == "" FOR /F "tokens=2*" %%i IN ('REG QUERY "HKLM\SOFTWARE\Far Manager" /v "InstallDir_x64" ^| FIND /I "InstallDir_x64"') DO SET InstallDir=%%j
::IF "%InstallDir%" == "" GOTO ERROR

:: username for portable use
SET F_USER=%USERNAME%
SET InstallDir=%~dp0Far\
SET FARPROFILE=%InstallDir%%F_USER%

IF NOT EXIST %InstallDir% 7za x Far3*.7z -oFar
IF NOT EXIST %FARPROFILE% MD %InstallDir%%F_USER%
IF NOT EXIST "%InstallDir%Far.exe" GOTO ERROR
ECHO 10%%

IF NOT EXIST "%FARPROFILE%\Macros\scripts" MD "%FARPROFILE%\Macros\scripts"

:: portable
echo [General] > %InstallDir%Far.exe.ini || GOTO ERROR
echo usesystemprofiles=0 >> %InstallDir%Far.exe.ini || GOTO ERROR 
:: custom default profile dir if 1 above
echo ;UserProfileDir=%%FARHOME%%\%F_USER% >> %InstallDir%Far.exe.ini || GOTO ERROR
echo ;UserLocalProfileDir=%%FARHOME%%\%F_USER% >> %InstallDir%Far.exe.ini || GOTO ERROR

echo start and close far
%InstallDir%far.exe
ECHO 22%%
ECHO 23%%
ECHO 24%%
ECHO 25%%
ECHO 26%%
ECHO 27%%
ECHO 28%%
echo here we go again its ok
pause
:: bat env used for -s
%InstallDir%far.exe -u %F_USER% -s "%InstallDir%%F_USER%"
echo 21%% =)

"%InstallDir%Far.exe" -import "%CurDir%config.farconfig" "%FARPROFILE%" || GOTO ERROR
pause
ECHO 30%%
ECHO 31%%
ECHO 32%%
ECHO 33%%
ECHO 34%%
ECHO 35%%
ECHO 36%%
ECHO 37%%
ECHO 38%%
ECHO 39%%
"%InstallDir%Far.exe" -import "%CurDir%config-colors.farconfig" "%FARPROFILE%" || GOTO ERROR
ECHO 40%%
ECHO 41%%
ECHO 42%%
ECHO 43%%
ECHO 44%%
ECHO 45%%
ECHO 46%%
ECHO 47%%
ECHO 48%%
ECHO 49%%
COPY /B "%CurDir%date.lua" "%FARPROFILE%\Macros\scripts" >NUL || GOTO ERROR
ECHO 50%%
ECHO 51%%
ECHO 52%%
ECHO 53%%
ECHO 54%%
ECHO 55%%
ECHO 56%%
ECHO 57%%
ECHO 58%%
ECHO 59%%
"%InstallDir%Far.exe" -clearcache || GOTO ERROR
ECHO 60%%
ECHO 61%%
ECHO 62%%
ECHO 63%%
ECHO 64%%
ECHO 65%%
ECHO 66%%
ECHO 67%%
ECHO 68%%
ECHO 69%%
"%InstallDir%Far.exe" -import "%InstallDir%Addons\XLat\Russian\Qwerty.farconfig" %InstallDir%%F_USER% || GOTO ERROR
ECHO 70%%
ECHO 71%%
ECHO 72%%
ECHO 73%%
ECHO 74%%
ECHO 75%%
ECHO 76%%
ECHO 77%%
ECHO 78%%
ECHO 79%%
COPY /B "%InstallDir%Addons\XLat\Russian\CtrlShiftX.lua" "%FARPROFILE%\Macros\scripts" >NUL || GOTO ERROR
ECHO 80%%
ECHO 81%%
ECHO 82%%
ECHO 83%%
ECHO 84%%
ECHO 85%%
ECHO 86%%
ECHO 87%%
ECHO 88%%
ECHO 89%%
COPY /B "%InstallDir%Plugins\FarColorer\bin\Plugin.Colorer.lua" "%FARPROFILE%\Macros\scripts" >NUL || GOTO ERROR
ECHO 90%%
ECHO 91%%
ECHO 92%%
ECHO 93%%
ECHO 94%%
ECHO 95%%
ECHO 96%%
ECHO 97%%
ECHO 98%%
ECHO 99%%
"%InstallDir%Far.exe" -import "%CurDir%config-plugins.farconfig" "%FARPROFILE%" || GOTO ERROR
cls
ECHO 100%% [                                                  ]
cls
ECHO 101%% [#                                                 ]
cls
ECHO 102%% [##                                                ]
cls
ECHO 103%% [###                                               ]
cls
ECHO 104%% [####                                              ]
cls
ECHO 105%% [#####                                             ]
cls
ECHO 106%% [######                                            ]
cls
ECHO 107%% [#######                                           ]
cls
ECHO 108%% [########                                          ]
cls
ECHO 109%% [#########                                         ]
cls
ECHO 110%% [##########                                        ]
cls
ECHO 111%% [###########                                       ]
cls
ECHO 112%% [############                                      ]
cls
ECHO 113%% [#############                                     ]
cls
ECHO 114%% [##############                                    ]
cls
ECHO 115%% [###############                                   ]
cls
ECHO 116%% [################                                  ]
cls
ECHO 117%% [#################                                 ]
cls
ECHO 118%% [##################                                ]
cls
ECHO 119%% [###################                               ]
cls
ECHO 120%% [####################                              ]
cls
ECHO 121%% [#####################                             ]
cls
ECHO 122%% [######################                            ]
cls
ECHO 123%% [#######################                           ]
cls
ECHO 124%% [########################                          ]
cls
ECHO 125%% [#########################                         ]
cls
ECHO 126%% [##########################                        ]
cls
ECHO 127%% [###########################                       ]
cls
ECHO 128%% [############################                      ]
cls
ECHO 129%% [#############################                     ]
cls
ECHO 130%% [##############################                    ]
cls
ECHO 131%% [###############################                   ]
cls
ECHO 132%% [################################                  ]
cls
ECHO 133%% [#################################                 ]
cls
ECHO 134%% [##################################                ]
cls
ECHO 135%% [###################################       o       ]
cls
ECHO 136%% [####################################      o       ]
cls
ECHO 137%% [#####################################     o       ]
cls
ECHO 138%% [######################################    o       ]
cls
ECHO 139%% [#######################################   o       ]
cls
ECHO 140%% [########################################          ]
cls
ECHO 141%% [#########################################         ]
cls
ECHO 142%% [##########################################        ]
cls
ECHO 143%% [###########################################       ]
cls
ECHO 144%% [############################################      ]
cls
ECHO 145%% [#############################################     ]
cls
ECHO 146%% [##############################################    ]
cls
ECHO 147%% [###############################################   ]
cls
ECHO 148%% [################################################  ]
cls
ECHO 149%% [################################################# ]
cls
ECHO 150%% [##################################################]

echo Far.exe -u %F_USER% -s "%%~dp0\%F_USER%" > %InstallDir%%F_USER%.bat

echo dont forger about start.bat launcher or modify shortcut -u %F_USER% -s "%%FARHOME%%\%F_USER%" to start far as user "%F_USER%"

:DONE
ECHO DONE
PAUSE
EXIT /B 0

:ERROR
ECHO ERROR
PAUSE
EXIT /B 1
