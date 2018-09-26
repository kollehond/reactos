echo off
title Awk Translator
for /f %%a in ('copy /Z "%~dpf0" nul') do set "CR=%%a"
set "n=0"
cd C:\sources\reactos\base\applications\cacls\
call :lang_add cacls.rc
cd C:\sources\reactos\base\applications\calc\
call :lang_add resource.rc
cd C:\sources\reactos\base\applications\charmap\
call :lang_add charmap.rc
cd C:\sources\reactos\base\applications\charmap_new\
call :lang_add charmap.rc
cd C:\sources\reactos\base\applications\clipbrd\
call :lang_add clipbrd.rc
cd C:\sources\reactos\base\applications\cmdutils\at\
call :lang_add at.rc
cd C:\sources\reactos\base\applications\cmdutils\chcp\
call :lang_add chcp.rc
cd C:\sources\reactos\base\applications\cmdutils\clip\
call :lang_add clip.rc
cd C:\sources\reactos\base\applications\cmdutils\comp\
call :lang_add comp.rc
cd C:\sources\reactos\base\applications\cmdutils\doskey\
call :lang_add doskey.rc
cd C:\sources\reactos\base\applications\cmdutils\eventcreate\
call :lang_add eventcreate.rc
cd C:\sources\reactos\base\applications\cmdutils\find\
call :lang_add find.rc
cd C:\sources\reactos\base\applications\cmdutils\help\
call :lang_add help.rc
cd C:\sources\reactos\base\applications\cmdutils\hostname\
call :lang_add hostname.rc
cd C:\sources\reactos\base\applications\cmdutils\mode\
call :lang_add mode.rc
cd C:\sources\reactos\base\applications\cmdutils\more\
call :lang_add more.rc
cd C:\sources\reactos\base\applications\cmdutils\reg\
call :lang_add reg.rc
cd C:\sources\reactos\base\applications\cmdutils\taskkill\
call :lang_add taskkill.rc
cd C:\sources\reactos\base\applications\cmdutils\timeout\
call :lang_add timeout.rc
cd C:\sources\reactos\base\applications\cmdutils\tree\
call :lang_add tree.rc
cd C:\sources\reactos\base\applications\cmdutils\whoami\
call :lang_add whoami.rc
cd C:\sources\reactos\base\applications\cmdutils\wmic\
call :lang_add wmic.rc
cd C:\sources\reactos\base\applications\cmdutils\xcopy\
call :lang_add xcopy.rc
cd C:\sources\reactos\base\applications\drwtsn32\
call :lang_add drwtsn32.rc
cd C:\sources\reactos\base\applications\dxdiag\
call :lang_add dxdiag.rc
cd C:\sources\reactos\base\applications\findstr\
call :lang_add findstr.rc
cd C:\sources\reactos\base\applications\fltmc\
call :lang_add fltmc.rc
cd C:\sources\reactos\base\applications\fontview\
call :lang_add fontview.rc
cd C:\sources\reactos\base\applications\games\solitaire\
call :lang_add rsrc.rc
cd C:\sources\reactos\base\applications\games\spider\
call :lang_add rsrc.rc
cd C:\sources\reactos\base\applications\games\winmine\
call :lang_add rsrc.rc
cd C:\sources\reactos\base\applications\kbswitch\
call :lang_add kbswitch.rc
cd C:\sources\reactos\base\applications\logoff\
call :lang_add logoff.rc
cd C:\sources\reactos\base\applications\magnify\
call :lang_add magnify.rc
cd C:\sources\reactos\base\applications\mmc\
call :lang_add mmc.rc
cd C:\sources\reactos\base\applications\mplay32\
call :lang_add mplay32.rc
cd C:\sources\reactos\base\applications\msconfig\
call :lang_add msconfig.rc
cd C:\sources\reactos\base\applications\msconfig_new\
call :lang_add msconfig.rc
cd C:\sources\reactos\base\applications\mscutils\eventvwr\
call :lang_add eventvwr.rc
cd C:\sources\reactos\base\applications\mscutils\servman\
call :lang_add servman.rc
cd C:\sources\reactos\base\applications\mspaint\
call :lang_add rsrc.rc
cd C:\sources\reactos\base\applications\mstsc\
call :lang_add rdc.rc
cd C:\sources\reactos\base\applications\network\ipconfig\
call :lang_add ipconfig.rc
cd C:\sources\reactos\base\applications\network\net\
call :lang_add net.rc
cd C:\sources\reactos\base\applications\network\ping\
call :lang_add ping.rc
cd C:\sources\reactos\base\applications\network\telnet\
call :lang_add telnet.rc
cd C:\sources\reactos\base\applications\network\tracert\
call :lang_add tracert.rc
cd C:\sources\reactos\base\applications\network\wlanconf\
call :lang_add wlanconf.rc
cd C:\sources\reactos\base\applications\notepad\
call :lang_add rsrc.rc
cd C:\sources\reactos\base\applications\osk\
call :lang_add rsrc.rc
cd C:\sources\reactos\base\applications\rapps\
call :lang_add rapps.rc
cd C:\sources\reactos\base\applications\regedit\
call :lang_add regedit.rc
cd C:\sources\reactos\base\applications\screensavers\3dtext\
call :lang_add rsrc.rc
cd C:\sources\reactos\base\applications\screensavers\logon\
call :lang_add logon.rc
cd C:\sources\reactos\base\applications\shutdown\
call :lang_add shutdown.rc
cd C:\sources\reactos\base\applications\sndrec32\
call :lang_add rsrc.rc
cd C:\sources\reactos\base\applications\sndvol32\
call :lang_add sndvol32.rc
cd C:\sources\reactos\base\applications\taskmgr\
call :lang_add taskmgr.rc
cd C:\sources\reactos\base\applications\wordpad\
call :lang_add rsrc.rc
cd C:\sources\reactos\base\setup\reactos\
call :lang_add reactos.rc
cd C:\sources\reactos\base\setup\welcome\
call :lang_add welcome.rc
cd C:\sources\reactos\base\shell\cmd\
call :lang_add cmd.rc
cd C:\sources\reactos\base\shell\explorer\
call :lang_add explorer.rc
cd C:\sources\reactos\base\system\diskpart\
call :lang_add diskpart.rc
cd C:\sources\reactos\base\system\format\
call :lang_add format.rc
cd C:\sources\reactos\base\system\regsvr32\
call :lang_add regsvr32.rc
cd C:\sources\reactos\base\system\rundll32\
call :lang_add rundll32.rc
cd C:\sources\reactos\base\system\runonce\
call :lang_add runonce.rc
cd C:\sources\reactos\base\system\services\
call :lang_add services.rc
cd C:\sources\reactos\base\system\subst\
call :lang_add subst.rc
cd C:\sources\reactos\base\system\userinit\
call :lang_add userinit.rc
cd C:\sources\reactos\base\system\winlogon\
call :lang_add winlogon.rc
cd C:\sources\reactos\boot\freeldr\fdebug\
call :lang_add fdebug.rc
cd C:\sources\reactos\dll\cpl\access\
call :lang_add access.rc
cd C:\sources\reactos\dll\cpl\appwiz\
call :lang_add appwiz.rc
cd C:\sources\reactos\dll\cpl\console\
call :lang_add console.rc
cd C:\sources\reactos\dll\cpl\desk\
call :lang_add desk.rc
cd C:\sources\reactos\dll\cpl\hdwwiz\
call :lang_add hdwwiz.rc
cd C:\sources\reactos\dll\cpl\inetcpl\
call :lang_add inetcpl.rc
cd C:\sources\reactos\dll\cpl\input\
call :lang_add input.rc
cd C:\sources\reactos\dll\cpl\intl\
call :lang_add intl.rc
cd C:\sources\reactos\dll\cpl\joy\
call :lang_add joy.rc
cd C:\sources\reactos\dll\cpl\liccpa\
call :lang_add liccpa.rc
cd C:\sources\reactos\dll\cpl\main\
call :lang_add main.rc
cd C:\sources\reactos\dll\cpl\mmsys\
call :lang_add mmsys.rc
cd C:\sources\reactos\dll\cpl\openglcfg\
call :lang_add openglcfg.rc
cd C:\sources\reactos\dll\cpl\powercfg\
call :lang_add powercfg.rc
cd C:\sources\reactos\dll\cpl\sysdm\
call :lang_add sysdm.rc
cd C:\sources\reactos\dll\cpl\telephon\
call :lang_add telephon.rc
cd C:\sources\reactos\dll\cpl\timedate\
call :lang_add timedate.rc
cd C:\sources\reactos\dll\cpl\usrmgr\
call :lang_add usrmgr.rc
cd C:\sources\reactos\dll\cpl\wined3dcfg\
call :lang_add wined3dcfg.rc
cd C:\sources\reactos\dll\shellext\acppage\
call :lang_add acppage.rc
cd C:\sources\reactos\dll\shellext\deskadp\
call :lang_add deskadp.rc
cd C:\sources\reactos\dll\shellext\deskmon\
call :lang_add deskmon.rc
cd C:\sources\reactos\dll\shellext\fontext\
call :lang_add fontext.rc
cd C:\sources\reactos\dll\shellext\netshell\
call :lang_add netshell.rc
cd C:\sources\reactos\dll\shellext\ntobjshex\
call :lang_add ntobjshex.rc
cd C:\sources\reactos\dll\shellext\stobject\
call :lang_add stobject.rc
cd C:\sources\reactos\dll\shellext\zipfldr\
call :lang_add zipfldr.rc
cd C:\sources\reactos\dll\win32\aclui\
call :lang_add aclui.rc
cd C:\sources\reactos\dll\win32\browseui\
call :lang_add browseui.rc
cd C:\sources\reactos\dll\win32\devmgr\
call :lang_add devmgr.rc
cd C:\sources\reactos\dll\win32\getuname\
call :lang_add getuname.rc
cd C:\sources\reactos\dll\win32\ieframe\
call :lang_add ieframe.rc
cd C:\sources\reactos\dll\win32\iernonce\
call :lang_add iernonce.rc
cd C:\sources\reactos\dll\win32\kernel32\winnls\
call :lang_add locale_rc.rc
cd C:\sources\reactos\dll\win32\lsasrv\
call :lang_add lsasrv.rc
cd C:\sources\reactos\dll\win32\modemui\
call :lang_add modemui.rc
cd C:\sources\reactos\dll\win32\msgina\
call :lang_add msgina.rc
cd C:\sources\reactos\dll\win32\msports\
call :lang_add msports.rc
cd C:\sources\reactos\dll\win32\mycomput\
call :lang_add mycomput.rc
cd C:\sources\reactos\dll\win32\netcfgx\
call :lang_add netcfgx.rc
cd C:\sources\reactos\dll\win32\netid\
call :lang_add netid.rc
cd C:\sources\reactos\dll\win32\newdev\
call :lang_add newdev.rc
cd C:\sources\reactos\dll\win32\rasdlg\
call :lang_add rasdlg.rc
cd C:\sources\reactos\dll\win32\samsrv\
call :lang_add samsrv.rc
cd C:\sources\reactos\dll\win32\setupapi\
call :lang_add setupapi.rc
cd C:\sources\reactos\dll\win32\shell32\
call :lang_add shell32.rc
cd C:\sources\reactos\dll\win32\shimgvw\
call :lang_add shimgvw.rc
cd C:\sources\reactos\dll\win32\syssetup\
call :lang_add syssetup.rc
cd C:\sources\reactos\dll\win32\tapiui\
call :lang_add tapiui.rc
cd C:\sources\reactos\dll\win32\userenv\
call :lang_add userenv.rc
cd C:\sources\reactos\modules\rosapps\applications\cmdutils\arping\
call :lang_add arping.rc
cd C:\sources\reactos\modules\rosapps\applications\fraginator\
call :lang_add fraginator.rc
cd C:\sources\reactos\modules\rosapps\applications\imagesoft\
call :lang_add imagesoft.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\blankscr\
call :lang_add scrnsave.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\butterflies\
call :lang_add butterflies.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\circles\
call :lang_add circles.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\cylfrac\
call :lang_add cylfrac.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\matrix\
call :lang_add rsrc.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\mazescr\
call :lang_add maze.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\ssstars\
call :lang_add resource.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\starfield\
call :lang_add starfield.rc
cd C:\sources\reactos\modules\rosapps\applications\sysutils\ctm\
call :lang_add ctm.rc
cd C:\sources\reactos\modules\rosapps\applications\sysutils\fontsub\
call :lang_add fontsub_res.rc
cd C:\sources\reactos\modules\rosapps\applications\sysutils\systeminfo\
call :lang_add systeminfo.rc
cd C:\sources\reactos\modules\rosapps\applications\winfile\
call :lang_add rsrc.rc
cd C:\sources\reactos\modules\rosapps\templates\old_wordpad\
call :lang_add rsrc.rc
cd C:\sources\reactos\subsystems\mvdm\ntvdm\
call :lang_add ntvdm.rc
cd C:\sources\reactos\win32ss\user\winsrv\usersrv\
call :lang_add usersrv.rc
cd C:\sources\reactos\win32ss\user\winsrv\consrv_new\
call :lang_add consrv.rc
cd C:\sources\reactos\win32ss\user\winsrv\consrv_new\frontends\gui\
call :lang_add guiterm.rc
cd C:\sources\reactos\win32ss\user\user32\
call :lang_add user32.rc
cd C:\sources\reactos\win32ss\printing\monitors\localmon\
call :lang_add localmon.rc
echo Removing duplicates from missing.txt
cd c:\sources\reactos\
awk -f removeDuplMissing.awk  missing.txt
del missing.txt
ren Missing1.txt missing.txt
echo Done!
pause

:lang_add
set tempval=%1
awk -f C:\sources\reactos\langadd.awk %tempval%
del %tempval%
ren tempfile.rc %tempval%
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
call :show_progress %n% 142
set /a "n=%n%+1"
exit /b

:show_progress
setlocal EnableDelayedExpansion
set current_step=%1
set total_steps=%2
set /a "progress=(current_step * 100) / total_steps"

set /p ".=Progress: !progress!%%!CR!" <nul

::if !progress! equ 100 echo.

exit /b