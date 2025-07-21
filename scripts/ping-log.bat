@echo off
echo Avvio ping continuo verso 8.8.8.8 (CTRL+C per interrompere)
ping 8.8.8.8 -t | tee ping-log.txt

---------------

NOTA: tee non è incluso in Windows, in alternativa puoi usare:

@echo off
setlocal
set "log=ping-log.txt"
echo Avvio ping continuo verso 8.8.8.8... > %log%
:loop
ping 8.8.8.8 -n 1 >> %log%
timeout /t 1 > nul
goto loop
