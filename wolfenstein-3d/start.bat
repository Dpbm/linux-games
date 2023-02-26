@ECHO OFF

:loop
  cd c:\launcher
  cycles max
  
  echo What do you want?
  echo [1] Wolfenstein 3D
  echo [2] Spear of destiny
  echo [3] exit

  CHOICE /C:123
  IF ERRORLEVEL 3 GOTO done
  IF ERRORLEVEL 2 GOTO launch2
  IF ERRORLEVEL 1 GOTO launch1


:launch1
  cd ..
  cycles fixed 15000
  wolf3d.exe
  GOTO done

:launch2
  cd ..\m1
  cycles fixed 15000
  spear.exe
  GOTO done

:done
  exit
