@echo off
title ftp auto upload
echo start
date /t                    	#记录开始运行时间
time /t
:1
call once.cmd
ping 127.0.0.1 -n 5 >nul   	#循环运行脚本，默认为5秒一次,频率可根据情况自行修改
goto 1
