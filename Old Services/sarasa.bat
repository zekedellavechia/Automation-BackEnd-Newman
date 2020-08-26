@echo off

color 2


title Welcome!
echo ####################################
echo Welcome to PostmanCollection runner!
echo ####################################
pause

cls
title Variables
echo Please type your preferences (leave blank if you want a default run):
echo.

set collection=test
echo *Which collection would you like to run?
echo List:
echo BEServices (All the collections)
echo CustomerService
echo EmployeeService
echo LocationService
echo RetailService
set /p collection=

set environment=EZDev
echo *Which environment would you like?
echo List:
echo EZQA
echo SVDev
echo EZDev
set /p environment=

set iterations=1
echo *How many iterations?
set /p iterations=
echo . . . You are about to run '%collection%' with %iterations% iteration/s using %environment% as environment . . .
pause

cls
color 6
title Please wait . . 
echo . . . Creating your HTML files please wait a moment . . .
cd C:\Users\Ezequiel Dellavechia\Documents\Postman Library
newman run %collection% -e %environment% -n %iterations% -r htmlextra --reporter-htmlextra-browserTitle "PostManReport BE" --reporter-htmlextra-title "BE Testing Report" --reporter-htmlextra-logs
pause