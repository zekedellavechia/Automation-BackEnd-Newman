@echo off

color 2


echo ####################################
echo Welcome to PostmanCollection runner!
echo ####################################
pause
cls
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
color 6
echo ... Creating your HTML files please wait a moment...

cd C:\Users\Ezequiel Dellavechia\Documents\Postman Library
newman run %collection% -e %environment% -n %iterations% -r htmlextra --reporter-htmlextra-browserTitle "Postman BE Report" --reporter-htmlextra-title "BE Testing Report" --reporter-htmlextra-darkTheme --reporter-htmlextra-logs



