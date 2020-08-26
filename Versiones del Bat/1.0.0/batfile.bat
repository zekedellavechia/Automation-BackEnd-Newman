@echo off

color 2



echo       ________
echo      /        \    
echo     /_        _\    
echo    // \      / \\  
echo     \__\    /__/ 
echo     \    ..    /   
echo      \        /    
echo       \  __  /        
echo        '.__.'          
      
echo ####################################
echo Welcome to PostmanCollection runner!
echo ####################################
pause
cls
color 3
echo Please select your preferences (if you want a quick run just hit 'Enter' 4 times):

title Variables
set collection= EmployeeService
echo *Which collection would you like to run? (Option: EmployeeService)
set /p collection=

set environment= SVDev
echo *Which environment would you like? (Options: SVDev, EZDev)
set /p environment=

set iterations= 1
echo *How many iterations?
set /p iterations=

echo . . . You are about to run '%collection%' Collection with %iterations% iteration/s using %environment% as environment . . .
pause
cls
color 2
echo _______________________________________________________________________
echo     _                      _______                      _
echo   _dMMMb._              .adOOOOOOOOOba.              _,dMMMb_
echo  dP'  ~YMMb            dOOOOOOOOOOOOOOOb            aMMP~  `Yb
echo  V      ~0Mb          dOOOOOOOOOOOOOOOOOb          dMo~      V
echo           `Mb.       dOOOOOOOOOOOOOOOOOOOb       ,dM'
echo            `YMb._   IOOOOOOOOOOOOOOOOOOOOOI   _,dMP'
echo       __     `YMMMI OP'~'YOOOOOOOOOOOP'~`YO IMMMP'     __
echo     ,dMMMb.     ~~' OO     `YOOOOOP'     OO `~~     ,dMMMb.
echo  _,dP~  `YMba_      OOb      `OOO'      dOO      _aMMP'  ~Yb._
echo =MMP'     `~YMMa_   YOOo   @  OOO  @   oOOP   _adMP~'      `YMM=
echo              `YMMMM\`OOOo     OOO     oOOO'/MMMMP'
echo      ,aa.     `~YMMb `OOOb._,dOOOb._,dOOO'dMMP~'       ,aa.
echo    ,dMYYMba._         `OOOOOOOOOOOOOOOOO'          _,adMYYMb.
echo   ,MP'   `YMMba._      OOOOOOOOOOOOOOOOO       _,adMMP'   `YM.
echo   MP'        ~YMMMba._ YOOOOPVVVVVYOOOOP  _,adMMMMP~       `YM
echo   YMb           ~YMMMM\`OOOOI`````IOOOOO'/MMMMP~           dMP
echo    `Mb.           `YMMMb`OOOI,,,,,IOOOO'dMMMP'           ,dM'
echo      `'                  `OObNNNNNdOO'                   `'
echo                            `~OOOOO~'   
echo _______________________________________________________________________

echo ... Creating your HTML files please wait a moment...

cd C:\Users\Ezequiel Dellavechia\Documents\Postman Library
newman run %collection% -e %environment% -n %iterations% -r htmlextra --reporter-htmlextra-browserTitle "Postman BE Report" --reporter-htmlextra-title "BE Testing Report" --reporter-htmlextra-darkTheme --reporter-htmlextra-logs



