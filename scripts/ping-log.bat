@echo off
echo Avvio ping continuo verso 8.8.8.8 (CTRL+C per interrompere)
ping 8.8.8.8 -t | tee ping-log.txt
