@echo off

date /t >> log.txt && time /t >> log.txt  	#记录操作时间
echo check files >> log.txt
if exist *DQ.WPD (goto FTP gotoend) else (goto NoFile)


:FTP   										#有新文件时批量上传,完成后把上传的文件重命名为*.bak
ftp -s:ftpmput.cmd
ren *DQ.WPD *DQ.WPD.bak
echo ftp mput success >> log.txt
:end

:NoFile  									#没有检查到新文件
echo no update files >> log.txt
:end