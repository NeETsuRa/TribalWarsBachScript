@echo off
  
echo  0   0 0000    0 0000 0000 0    0 0   0 0
echo  00  0 0       0 0    0  0 0    0 00  0 0
echo  0 0 0 000  0  0 0    0  0 0    0 0 0 0 0
echo  0  00 0    0  0 0    0  0 0    0 0  00 0
echo  0   0 0000 0000 0000 0000 0000 0 0   0 0
echo    Program za izracun casa kdaj napasti 
echo   sovrazno vas da prispejo cete ob tocno
echo dolocenem casu. Veliko uzitkov ob uporabi. 
echo               SLAVA IN CAST!

set /p URED=Vnesi Ure do vasi: 
set /p MINUTED=Vnesi Minute do vasi: 
set /p SEKUNDED=Vnesi Sekunde do vasi: 

set /p LETO=Leto napada: 
set /p MESEC=Mesec napada: 
set /p DAN=Dan napada: 
set /p URE=Ura napada: 
set /p MINUTE=Minuta napada: 
set /p SEKUNDE=Sekunda napada:

::dni
set a=0
::mesecev
set b=0
::let
set c=0



If %URED% GEQ 24 set /a a=%URED%/24 
set /a d=%URED%-%a%*24
If %a% GEQ 30 set /a b=%a%/24
If %b% GEQ 12 set /a a=%c%/24
echo *********************************
echo Napad traja: %c%l.%b%m.%a%d-%d%h-%MINUTED%m-%SEKUNDED%s
echo *********************************
echo preracunavam
set /a w=%SEKUNDE%
set /a r=%MINUTE%
set /a n=%URE%
set /a t=%DAN%
set /a z=%MESEC%
set /a m=%LETO%

set /a p=%w%-%SEKUNDED%
If %p% LSS 0 set /a w=60+%p%
If %p% LSS 0 set /a r=%r%-1
If %p% GTR 0 set /a w=%p%
If %p% EQU 0 set /a w=0
echo .
set /a p=%r%-%MINUTED%
If %p% LSS 0 set /a r=60+%p%
If %p% LSS 0 set /a n=%n%-1
If %p% GTR 0 set /a r=%p%
If %p% EQU 0 set /a r=0
echo ..
set /a p=%n%-%d%
If %p% LSS 0 set /a n=24+%p%
If %p% LSS 0 set /a t=%t%-1
If %p% GTR 0 set /a n=%p%
If %p% EQU 0 set /a n=0
echo ...
set /a p=%t%-%a%
If %p% LSS 1 set /a t=30+%p%
If %p% LSS 1 set /a y=%y%-1
If %p% GTR 1 set /a t=%p%
If %p% EQU 1 set /a t=1
echo ....
set /a p=%z%-%b%
If %p% LSS 1 set /a z=12+%p%
If %p% LSS 1 set /a m=%m%-1
If %p% GTR 1 set /a z=%p%
If %p% EQU 1 set /a z=1
echo .....

echo ......

echo *************************************
echo Poslji napad ob (hh:mm:ss-dd:mm:yyyy)
echo %n%:%r%:%w%-%t%:%z%:%m%
echo *************************************

set /p LETO=
