echo off
title Awk Translator
for /f %%a in ('copy /Z "%~dpf0" nul') do set "CR=%%a"
set "n=0"
cd C:\sources\reactos\base\applications\cacls\
call :lang_add en-US.rc cacls.rc
cd C:\sources\reactos\base\applications\calc\
call :lang_add en-US.rc resource.rc
cd C:\sources\reactos\base\applications\charmap\
call :lang_add en-US.rc charmap.rc
cd C:\sources\reactos\base\applications\charmap_new\
call :lang_add en-US.rc charmap.rc
cd C:\sources\reactos\base\applications\clipbrd\
call :lang_add en-US.rc clipbrd.rc
cd C:\sources\reactos\base\applications\cmdutils\at\
call :lang_add en-US.rc at.rc
cd C:\sources\reactos\base\applications\cmdutils\chcp\
call :lang_add en-US.rc chcp.rc
cd C:\sources\reactos\base\applications\cmdutils\clip\
call :lang_add en-US.rc clip.rc
cd C:\sources\reactos\base\applications\cmdutils\comp\
call :lang_add en-US.rc comp.rc
cd C:\sources\reactos\base\applications\cmdutils\doskey\
call :lang_add en-US.rc doskey.rc
cd C:\sources\reactos\base\applications\cmdutils\eventcreate\
call :lang_add en-US.rc eventcreate.rc
cd C:\sources\reactos\base\applications\cmdutils\find\
call :lang_add en-US.rc find.rc
cd C:\sources\reactos\base\applications\cmdutils\help\
call :lang_add en-US.rc help.rc
cd C:\sources\reactos\base\applications\cmdutils\hostname\
call :lang_add en-US.rc hostname.rc
cd C:\sources\reactos\base\applications\cmdutils\mode\
call :lang_add en-US.rc mode.rc
cd C:\sources\reactos\base\applications\cmdutils\more\
call :lang_add en-US.rc more.rc
cd C:\sources\reactos\base\applications\cmdutils\reg\
call :lang_add en-US.rc reg.rc
cd C:\sources\reactos\base\applications\cmdutils\taskkill\
call :lang_add en-US.rc taskkill.rc
cd C:\sources\reactos\base\applications\cmdutils\timeout\
call :lang_add en-US.rc timeout.rc
cd C:\sources\reactos\base\applications\cmdutils\tree\
call :lang_add en-US.rc tree.rc
cd C:\sources\reactos\base\applications\cmdutils\whoami\
call :lang_add en-US.rc whoami.rc
cd C:\sources\reactos\base\applications\cmdutils\wmic\
call :lang_add en-US.rc wmic.rc
cd C:\sources\reactos\base\applications\cmdutils\xcopy\
call :lang_add en-US.rc xcopy.rc
cd C:\sources\reactos\base\applications\drwtsn32\
call :lang_add en-US.rc drwtsn32.rc
cd C:\sources\reactos\base\applications\dxdiag\
call :lang_add en-US.rc dxdiag.rc
cd C:\sources\reactos\base\applications\findstr\
call :lang_add en-US.rc findstr.rc
cd C:\sources\reactos\base\applications\fltmc\
call :lang_add en-US.rc fltmc.rc
cd C:\sources\reactos\base\applications\fontview\
call :lang_add en-US.rc fontview.rc
cd C:\sources\reactos\base\applications\games\solitaire\
call :lang_add en-US.rc rsrc.rc
cd C:\sources\reactos\base\applications\games\spider\
call :lang_add en-US.rc rsrc.rc
cd C:\sources\reactos\base\applications\games\winmine\
call :lang_add en-US.rc rsrc.rc
cd C:\sources\reactos\base\applications\kbswitch\
call :lang_add en-US.rc kbswitch.rc
cd C:\sources\reactos\base\applications\logoff\
call :lang_add en-US.rc logoff.rc
cd C:\sources\reactos\base\applications\magnify\
call :lang_add en-US.rc magnify.rc
cd C:\sources\reactos\base\applications\mmc\
call :lang_add en-US.rc mmc.rc
cd C:\sources\reactos\base\applications\mplay32\
call :lang_add en-US.rc mplay32.rc
cd C:\sources\reactos\base\applications\msconfig\
call :lang_add en-US.rc msconfig.rc
cd C:\sources\reactos\base\applications\msconfig_new\
call :lang_add en-US.rc msconfig.rc
cd C:\sources\reactos\base\applications\mscutils\eventvwr\
call :lang_add en-US.rc eventvwr.rc
cd C:\sources\reactos\base\applications\mscutils\servman\
call :lang_add en-US.rc servman.rc
cd C:\sources\reactos\base\applications\mspaint\
call :lang_add en-US.rc rsrc.rc
cd C:\sources\reactos\base\applications\mstsc\
call :lang_add en-US.rc rdc.rc
cd C:\sources\reactos\base\applications\network\ipconfig\
call :lang_add en-US.rc ipconfig.rc
cd C:\sources\reactos\base\applications\network\net\
call :lang_add en-US.rc net.rc
cd C:\sources\reactos\base\applications\network\ping\
call :lang_add en-US.rc ping.rc
cd C:\sources\reactos\base\applications\network\telnet\
call :lang_add en-US.rc telnet.rc
cd C:\sources\reactos\base\applications\network\tracert\
call :lang_add en-US.rc tracert.rc
cd C:\sources\reactos\base\applications\network\wlanconf\
call :lang_add en-US.rc wlanconf.rc
cd C:\sources\reactos\base\applications\notepad\
call :lang_add en-US.rc rsrc.rc
cd C:\sources\reactos\base\applications\osk\
call :lang_add en-US.rc rsrc.rc
cd C:\sources\reactos\base\applications\rapps\
call :lang_add en-US.rc rapps.rc
cd C:\sources\reactos\base\applications\regedit\
call :lang_add en-US.rc regedit.rc
cd C:\sources\reactos\base\applications\screensavers\3dtext\
call :lang_add en-US.rc rsrc.rc
cd C:\sources\reactos\base\applications\screensavers\logon\
call :lang_add en-US.rc logon.rc
cd C:\sources\reactos\base\applications\shutdown\
call :lang_add en-US.rc shutdown.rc
cd C:\sources\reactos\base\applications\sndrec32\
call :lang_add en-US.rc rsrc.rc
cd C:\sources\reactos\base\applications\sndvol32\
call :lang_add en-US.rc sndvol32.rc
cd C:\sources\reactos\base\applications\taskmgr\
call :lang_add en-US.rc taskmgr.rc
cd C:\sources\reactos\base\applications\wordpad\
call :lang_add en-US.rc rsrc.rc
cd C:\sources\reactos\base\setup\reactos\
call :lang_add en-US.rc reactos.rc
cd C:\sources\reactos\base\setup\welcome\
call :lang_add en-US.rc welcome.rc
cd C:\sources\reactos\base\shell\cmd\
call :lang_add en-US.rc cmd.rc
cd C:\sources\reactos\base\shell\explorer\
call :lang_add en-US.rc explorer.rc
cd C:\sources\reactos\base\system\diskpart\
call :lang_add en-US.rc diskpart.rc
cd C:\sources\reactos\base\system\format\
call :lang_add en-US.rc format.rc
cd C:\sources\reactos\base\system\regsvr32\
call :lang_add en-US.rc regsvr32.rc
cd C:\sources\reactos\base\system\rundll32\
call :lang_add en-US.rc rundll32.rc
cd C:\sources\reactos\base\system\runonce\
call :lang_add en-US.rc runonce.rc
cd C:\sources\reactos\base\system\services\
call :lang_add en-US.rc services.rc
cd C:\sources\reactos\base\system\subst\
call :lang_add en-US.rc subst.rc
cd C:\sources\reactos\base\system\userinit\
call :lang_add en-US.rc userinit.rc
cd C:\sources\reactos\base\system\winlogon\
call :lang_add en-US.rc winlogon.rc
cd C:\sources\reactos\boot\freeldr\fdebug\
call :lang_add en-US.rc fdebug.rc
cd C:\sources\reactos\dll\cpl\access\
call :lang_add en-US.rc access.rc
cd C:\sources\reactos\dll\cpl\appwiz\
call :lang_add en-US.rc appwiz.rc
cd C:\sources\reactos\dll\cpl\console\
call :lang_add en-US.rc console.rc
cd C:\sources\reactos\dll\cpl\desk\
call :lang_add en-US.rc desk.rc
cd C:\sources\reactos\dll\cpl\hdwwiz\
call :lang_add en-US.rc hdwwiz.rc
cd C:\sources\reactos\dll\cpl\inetcpl\
call :lang_add en-US.rc inetcpl.rc
cd C:\sources\reactos\dll\cpl\input\
call :lang_add en-US.rc input.rc
cd C:\sources\reactos\dll\cpl\intl\
call :lang_add en-US.rc intl.rc
cd C:\sources\reactos\dll\cpl\joy\
call :lang_add en-US.rc joy.rc
cd C:\sources\reactos\dll\cpl\liccpa\
call :lang_add en-US.rc liccpa.rc
cd C:\sources\reactos\dll\cpl\main\
call :lang_add en-US.rc main.rc
cd C:\sources\reactos\dll\cpl\mmsys\
call :lang_add en-US.rc mmsys.rc
cd C:\sources\reactos\dll\cpl\openglcfg\
call :lang_add en-US.rc openglcfg.rc
cd C:\sources\reactos\dll\cpl\powercfg\
call :lang_add en-US.rc powercfg.rc
cd C:\sources\reactos\dll\cpl\sysdm\
call :lang_add en-US.rc sysdm.rc
cd C:\sources\reactos\dll\cpl\telephon\
call :lang_add en-US.rc telephon.rc
cd C:\sources\reactos\dll\cpl\timedate\
call :lang_add en-US.rc timedate.rc
cd C:\sources\reactos\dll\cpl\usrmgr\
call :lang_add en-US.rc usrmgr.rc
cd C:\sources\reactos\dll\cpl\wined3dcfg\
call :lang_add en-US.rc wined3dcfg.rc
cd C:\sources\reactos\dll\shellext\acppage\
call :lang_add en-US.rc acppage.rc
cd C:\sources\reactos\dll\shellext\deskadp\
call :lang_add en-US.rc deskadp.rc
cd C:\sources\reactos\dll\shellext\deskmon\
call :lang_add en-US.rc deskmon.rc
cd C:\sources\reactos\dll\shellext\fontext\
call :lang_add en-US.rc fontext.rc
cd C:\sources\reactos\dll\shellext\netshell\
call :lang_add en-US.rc netshell.rc
cd C:\sources\reactos\dll\shellext\ntobjshex\
call :lang_add en-US.rc ntobjshex.rc
cd C:\sources\reactos\dll\shellext\stobject\
call :lang_add en-US.rc stobject.rc
cd C:\sources\reactos\dll\shellext\zipfldr\
call :lang_add en-US.rc zipfldr.rc
cd C:\sources\reactos\dll\win32\aclui\
call :lang_add en-US.rc aclui.rc
cd C:\sources\reactos\dll\win32\browseui\
call :lang_add en-US.rc browseui.rc
cd C:\sources\reactos\dll\win32\devmgr\
call :lang_add en-US.rc devmgr.rc
cd C:\sources\reactos\dll\win32\getuname\
call :lang_add en-US.rc getuname.rc
cd C:\sources\reactos\dll\win32\ieframe\
call :lang_add en-US.rc ieframe.rc
cd C:\sources\reactos\dll\win32\iernonce\
call :lang_add en-US.rc iernonce.rc
cd C:\sources\reactos\dll\win32\kernel32\winnls\
call :lang_add en-US.rc locale_rc.rc
cd C:\sources\reactos\dll\win32\lsasrv\
call :lang_add en-US.rc lsasrv.rc
cd C:\sources\reactos\dll\win32\modemui\
call :lang_add en-US.rc modemui.rc
cd C:\sources\reactos\dll\win32\msgina\
call :lang_add en-US.rc msgina.rc
cd C:\sources\reactos\dll\win32\msports\
call :lang_add en-US.rc msports.rc
cd C:\sources\reactos\dll\win32\mycomput\
call :lang_add en-US.rc mycomput.rc
cd C:\sources\reactos\dll\win32\netcfgx\
call :lang_add en-US.rc netcfgx.rc
cd C:\sources\reactos\dll\win32\netid\
call :lang_add en-US.rc netid.rc
cd C:\sources\reactos\dll\win32\newdev\
call :lang_add en-US.rc newdev.rc
cd C:\sources\reactos\dll\win32\rasdlg\
call :lang_add en-US.rc rasdlg.rc
cd C:\sources\reactos\dll\win32\samsrv\
call :lang_add en-US.rc samsrv.rc
cd C:\sources\reactos\dll\win32\setupapi\
call :lang_add en-US.rc setupapi.rc
cd C:\sources\reactos\dll\win32\shell32\
call :lang_add en-US.rc shell32.rc
cd C:\sources\reactos\dll\win32\shimgvw\
call :lang_add en-US.rc shimgvw.rc
cd C:\sources\reactos\dll\win32\syssetup\
call :lang_add en-US.rc syssetup.rc
cd C:\sources\reactos\dll\win32\tapiui\
call :lang_add en-US.rc tapiui.rc
cd C:\sources\reactos\dll\win32\userenv\
call :lang_add en-US.rc userenv.rc
cd C:\sources\reactos\modules\rosapps\applications\cmdutils\arping\
call :lang_add en-US.rc arping.rc
cd C:\sources\reactos\modules\rosapps\applications\fraginator\
call :lang_add en-US.rc fraginator.rc
cd C:\sources\reactos\modules\rosapps\applications\imagesoft\
call :lang_add en-US.rc imagesoft.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\blankscr\
call :lang_add en-US.rc scrnsave.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\butterflies\
call :lang_add en-US.rc butterflies.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\circles\
call :lang_add en-US.rc circles.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\cylfrac\
call :lang_add en-US.rc cylfrac.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\matrix\
call :lang_add en-US.rc rsrc.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\mazescr\
call :lang_add en-US.rc maze.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\ssstars\
call :lang_add en-US.rc resource.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\starfield\
call :lang_add en-US.rc starfield.rc
cd C:\sources\reactos\modules\rosapps\applications\sysutils\ctm\
call :lang_add en-US.rc ctm.rc
cd C:\sources\reactos\modules\rosapps\applications\sysutils\fontsub\
call :lang_add en-US.rc fontsub_res.rc
cd C:\sources\reactos\modules\rosapps\applications\sysutils\systeminfo\
call :lang_add en-US.rc systeminfo.rc
cd C:\sources\reactos\modules\rosapps\applications\winfile\
call :lang_add en-US.rc rsrc.rc
cd C:\sources\reactos\modules\rosapps\templates\old_wordpad\
call :lang_add en-US.rc rsrc.rc
cd C:\sources\reactos\subsystems\mvdm\ntvdm\
call :lang_add en-US.rc ntvdm.rc
cd C:\sources\reactos\win32ss\user\winsrv\usersrv\
call :lang_add en-US.rc usersrv.rc
cd C:\sources\reactos\win32ss\user\winsrv\consrv_new\
call :lang_add en-US.rc consrv.rc
cd C:\sources\reactos\win32ss\user\winsrv\consrv_new\frontends\gui\
call :lang_add en-US.rc guiterm.rc
cd C:\sources\reactos\win32ss\user\user32\
call :lang_add en-US.rc user32.rc
cd C:\sources\reactos\win32ss\printing\monitors\localmon\
call :lang_add en-US.rc localmon.rc
::Start with short language fieldnames
cd C:\sources\reactos\base\applications\winhlp32
call :lang_add_short rsrc.rc En.rc
cd C:\sources\reactos\base\applications\write\
call :lang_add_short rsrc.rc En.rc
cd C:\sources\reactos\dll\win32\hhctrl.ocx\
call :lang_add_short hhctrl.rc En.rc
cd C:\sources\reactos\dll\win32\mapi32\
call :lang_add_short version.rc En.rc
cd C:\sources\reactos\dll\win32\mshtml\
call :lang_add_short rsrc.rc En.rc
cd C:\sources\reactos\dll\win32\shdoclc\
call :lang_add_short rsrc.rc En.rc
::Short as part of the filename
cd C:\sources\reactos\dll\win32\avifil32\
call :lang_add_short rsrc.rc avifile_En.rc
cd C:\sources\reactos\dll\win32\comctl32\
call :lang_add_short rsrc.rc comctl_En.rc
cd C:\sources\reactos\dll\win32\comdlg32\
call :lang_add_short rsrc.rc cdlg_En.rc
cd C:\sources\reactos\dll\win32\credui\
call :lang_add_short credui.rc credui_En.rc
cd C:\sources\reactos\dll\win32\crypt32\
call :lang_add_short crypt32.rc crypt32_En.rc
cd C:\sources\reactos\dll\win32\cryptdlg\
call :lang_add_short cryptdlg.rc cryptdlg_En.rc
cd C:\sources\reactos\dll\win32\cryptui\
call :lang_add_short cryptui.rc cryptui_En.rc
cd C:\sources\reactos\dll\win32\iccvid\
call :lang_add_short rsrc.rc iccvid_En.rc
cd C:\sources\reactos\dll\win32\jscript\
call :lang_add_short rsrc.rc jscript_En.rc
cd C:\sources\reactos\dll\win32\mpr\
call :lang_add_short version.rc mpr_En.rc
cd C:\sources\reactos\dll\win32\msacm32\
call :lang_add_short msacm.rc msacm_En.rc
cd C:\sources\reactos\dll\win32\msi\
call :lang_add_short msi.rc msi_En.rc
cd C:\sources\reactos\dll\win32\msrle32\
call :lang_add_short rsrc.rc msrle_En.rc
cd C:\sources\reactos\dll\win32\msvfw32\
call :lang_add_short rsrc.rc msvfw32_En.rc
cd C:\sources\reactos\dll\win32\msvidc32\
call :lang_add_short rsrc.rc msvidc32_En.rc
cd C:\sources\reactos\dll\win32\oleacc\
call :lang_add_short oleacc.rc oleacc_En.rc
cd C:\sources\reactos\dll\win32\oleaut32\
call :lang_add_short oleaut32.rc oleaut32_En.rc
cd C:\sources\reactos\dll\win32\oledlg\
call :lang_add_short rsrc.rc oledlg_En.rc
cd C:\sources\reactos\dll\win32\shlwapi\
call :lang_add_short version.rc shlwapi_En.rc
cd C:\sources\reactos\dll\win32\wininet\
call :lang_add_short rsrc.rc wininet_En.rc
cd C:\sources\reactos\dll\win32\winmm\
call :lang_add_short winmm_res.rc winmm_En.rc
cd C:\sources\reactos\dll\win32\wldap32\
call :lang_add_short wldap32.rc wldap32_En.rc
cd C:\sources\reactos\win32ss\printing\monitors\localmon\ui\
call :lang_add_short localui.rc ui_En.rc


::Processing completed
echo Removing duplicates from missing.txt
cd c:\sources\reactos\
awk -f removeDuplMissing.awk  missing.txt
del missing.txt
ren Missing1.txt missing.txt
echo Done!
pause

:lang_add
set tfile=%1
set tempval=%2
awk -f C:\sources\reactos\langadd.awk %tempval%
del %tempval%
ren tempfile.rc %tempval%
cd lang
awk -f c:\sources\reactos\translate2.awk %tfile%
call :show_progress %n% 171
set /a "n=%n%+1"
exit /b

:lang_add_short
set tfile=%2
set tempval=%1
awk -f C:\sources\reactos\langadd_short.awk %tempval%
del %tempval%
ren tempfile.rc %tempval%
cd lang
awk -f c:\sources\reactos\translate3.awk %tfile%
call :show_progress %n% 171
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