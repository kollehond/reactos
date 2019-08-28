echo off
title Awk Translator
for /f %%a in ('copy /Z "%~dpf0" nul') do set "CR=%%a"
set "n=0"
::reactos\base\applications
call :shortcall C:\sources\reactos\base\applications\cacls\ cacls.rc
call :shortcall C:\sources\reactos\base\applications\calc\ resource.rc
call :shortcall C:\sources\reactos\base\applications\charmap\ charmap.rc
call :shortcall C:\sources\reactos\base\applications\charmap_new\ charmap.rc
call :shortcall C:\sources\reactos\base\applications\clipbrd\ clipbrd.rc
:: count 5
::..\cmdutils
call :shortcall C:\sources\reactos\base\applications\cmdutils\at\ at.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\chcp\ chcp.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\clip\ clip.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\comp\ comp.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\doskey\ doskey.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\eventcreate\ eventcreate.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\find\ find.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\help\ help.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\hostname\ hostname.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\mode\ mode.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\more\ more.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\reg\ reg.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\taskkill\ taskkill.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\timeout\ timeout.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\tree\ tree.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\whoami\ whoami.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\wmic\ wmic.rc
call :shortcall C:\sources\reactos\base\applications\cmdutils\xcopy\ xcopy.rc
::..\cmdutils total 18
::count 23
call :shortcall C:\sources\reactos\base\applications\drwtsn32\ drwtsn32.rc
call :shortcall C:\sources\reactos\base\applications\dxdiag\ dxdiag.rc
call :shortcall C:\sources\reactos\base\applications\findstr\ findstr.rc
call :shortcall C:\sources\reactos\base\applications\fltmc\ fltmc.rc
call :shortcall C:\sources\reactos\base\applications\fontview\ fontview.rc
::count 28
::..\games
call :shortcall C:\sources\reactos\base\applications\games\solitaire\ rsrc.rc
call :shortcall C:\sources\reactos\base\applications\games\spider\ rsrc.rc
call :shortcall C:\sources\reactos\base\applications\games\winmine\ rsrc.rc
::..\games total 3
::count 31
call :shortcall C:\sources\reactos\base\applications\kbswitch\ kbswitch.rc
call :shortcall C:\sources\reactos\base\applications\logoff\ logoff.rc
call :shortcall C:\sources\reactos\base\applications\magnify\ magnify.rc
call :shortcall C:\sources\reactos\base\applications\mmc\ mmc.rc
call :shortcall C:\sources\reactos\base\applications\mplay32\ mplay32.rc
call :shortcall C:\sources\reactos\base\applications\msconfig\ msconfig.rc
call :shortcall C:\sources\reactos\base\applications\msconfig_new\ msconfig.rc
::count 38
::..\mscutils
call :shortcall C:\sources\reactos\base\applications\mscutils\eventvwr\ eventvwr.rc
call :shortcall C:\sources\reactos\base\applications\mscutils\servman\ servman.rc
::..\mscutils total 2
::count 40
call :shortcall C:\sources\reactos\base\applications\mspaint\ rsrc.rc
call :shortcall C:\sources\reactos\base\applications\mstsc\ rdc.rc
::count 42
::..\network
call :shortcall C:\sources\reactos\base\applications\network\dwnl\ dwnl.rc
call :shortcall C:\sources\reactos\base\applications\network\ipconfig\ ipconfig.rc
call :shortcall C:\sources\reactos\base\applications\network\net\ net.rc
call :shortcall C:\sources\reactos\base\applications\network\netstat\ netstat.rc
call :shortcall C:\sources\reactos\base\applications\network\ping\ ping.rc
call :shortcall C:\sources\reactos\base\applications\network\telnet\ telnet.rc
call :shortcall C:\sources\reactos\base\applications\network\tracert\ tracert.rc
call :shortcall C:\sources\reactos\base\applications\network\wlanconf\ wlanconf.rc
::..\network total 8
::count 50
call :shortcall C:\sources\reactos\base\applications\notepad\ rsrc.rc
call :shortcall C:\sources\reactos\base\applications\osk\ rsrc.rc
call :shortcall C:\sources\reactos\base\applications\rapps\ rapps.rc
call :shortcall C:\sources\reactos\base\applications\regedit\ regedit.rc
call :shortcall C:\sources\reactos\base\applications\regedit\clb\ clb.rc
::count 55
::..\screensavers
call :shortcall C:\sources\reactos\base\applications\screensavers\3dtext\ rsrc.rc
call :shortcall C:\sources\reactos\base\applications\screensavers\logon\ logon.rc
::..\screensavers total 2
::count 57
call :shortcall C:\sources\reactos\base\applications\shutdown\ shutdown.rc
call :shortcall C:\sources\reactos\base\applications\sndrec32\ rsrc.rc
call :shortcall C:\sources\reactos\base\applications\sndvol32\ sndvol32.rc
call :shortcall C:\sources\reactos\base\applications\taskmgr\ taskmgr.rc
call :shortcall C:\sources\reactos\base\applications\utilman\ utilman.rc
call :shortcall C:\sources\reactos\base\applications\wordpad\ rsrc.rc
::End of base\applications
::count 63
call :shortcall C:\sources\reactos\base\setup\reactos\ reactos.rc
call :shortcall C:\sources\reactos\base\setup\welcome\ welcome.rc
call :shortcall C:\sources\reactos\base\shell\cmd\ cmd.rc
call :shortcall C:\sources\reactos\base\shell\explorer\ explorer.rc
call :shortcall C:\sources\reactos\base\system\chkdsk\ chkdsk.rc
call :shortcall C:\sources\reactos\base\system\diskpart\ diskpart.rc
call :shortcall C:\sources\reactos\base\system\format\ format.rc
call :shortcall C:\sources\reactos\base\system\regsvr32\ regsvr32.rc
call :shortcall C:\sources\reactos\base\system\rundll32\ rundll32.rc
call :shortcall C:\sources\reactos\base\system\runonce\ runonce.rc
call :shortcall C:\sources\reactos\base\system\services\ services.rc
call :shortcall C:\sources\reactos\base\system\subst\ subst.rc
call :shortcall C:\sources\reactos\base\system\userinit\ userinit.rc
call :shortcall C:\sources\reactos\base\system\winlogon\ winlogon.rc
::End of \base
::count 77
call :shortcall C:\sources\reactos\boot\freeldr\fdebug\ fdebug.rc
call :shortcall C:\sources\reactos\dll\cpl\access\ access.rc
call :shortcall C:\sources\reactos\dll\cpl\appwiz\ appwiz.rc
call :shortcall C:\sources\reactos\dll\cpl\console\ console.rc
call :shortcall C:\sources\reactos\dll\cpl\desk\ desk.rc
call :shortcall C:\sources\reactos\dll\cpl\hdwwiz\ hdwwiz.rc
call :shortcall C:\sources\reactos\dll\cpl\inetcpl\ inetcpl.rc
call :shortcall C:\sources\reactos\dll\cpl\input\ input.rc
call :shortcall C:\sources\reactos\dll\cpl\intl\ intl.rc
call :shortcall C:\sources\reactos\dll\cpl\joy\ joy.rc
call :shortcall C:\sources\reactos\dll\cpl\liccpa\ liccpa.rc
call :shortcall C:\sources\reactos\dll\cpl\main\ main.rc
call :shortcall C:\sources\reactos\dll\cpl\mmsys\ mmsys.rc
call :shortcall C:\sources\reactos\dll\cpl\openglcfg\ openglcfg.rc
call :shortcall C:\sources\reactos\dll\cpl\powercfg\ powercfg.rc
call :shortcall C:\sources\reactos\dll\cpl\sysdm\ sysdm.rc
call :shortcall C:\sources\reactos\dll\cpl\telephon\ telephon.rc
call :shortcall C:\sources\reactos\dll\cpl\timedate\ timedate.rc
call :shortcall C:\sources\reactos\dll\cpl\usrmgr\ usrmgr.rc
call :shortcall C:\sources\reactos\dll\cpl\wined3dcfg\ wined3dcfg.rc
::count 97
call :shortcall C:\sources\reactos\dll\shellext\acppage\ acppage.rc
call :shortcall C:\sources\reactos\dll\shellext\cryptext\ cryptext.rc
call :shortcall C:\sources\reactos\dll\shellext\deskadp\ deskadp.rc
call :shortcall C:\sources\reactos\dll\shellext\deskmon\ deskmon.rc
call :shortcall C:\sources\reactos\dll\shellext\devcpux\ devcpux.rc
call :shortcall C:\sources\reactos\dll\shellext\fontext\ fontext.rc
call :shortcall C:\sources\reactos\dll\shellext\netplwiz\ netplwiz.rc
call :shortcall C:\sources\reactos\dll\shellext\netshell\ netshell.rc
call :shortcall C:\sources\reactos\dll\shellext\ntobjshex\ ntobjshex.rc
call :shortcall C:\sources\reactos\dll\shellext\stobject\ stobject.rc
call :shortcall C:\sources\reactos\dll\shellext\zipfldr\ zipfldr.rc
call :shortcall C:\sources\reactos\dll\win32\aclui\ aclui.rc
call :shortcall C:\sources\reactos\dll\win32\browseui\ browseui.rc
call :shortcall C:\sources\reactos\dll\win32\devmgr\ devmgr.rc
call :shortcall C:\sources\reactos\dll\win32\getuname\ getuname.rc
call :shortcall C:\sources\reactos\dll\win32\ieframe\ ieframe.rc
call :shortcall C:\sources\reactos\dll\win32\iernonce\ iernonce.rc
call :shortcall C:\sources\reactos\dll\win32\kernel32\winnls\ locale_rc.rc
call :shortcall C:\sources\reactos\dll\win32\lsasrv\ lsasrv.rc
call :shortcall C:\sources\reactos\dll\win32\modemui\ modemui.rc
call :shortcall C:\sources\reactos\dll\win32\msgina\ msgina.rc
call :shortcall C:\sources\reactos\dll\win32\msports\ msports.rc
call :shortcall C:\sources\reactos\dll\win32\mycomput\ mycomput.rc
::count 120
call :shortcall C:\sources\reactos\dll\win32\netcfgx\ netcfgx.rc
call :shortcall C:\sources\reactos\dll\win32\netid\ netid.rc
call :shortcall C:\sources\reactos\dll\win32\newdev\ newdev.rc
call :shortcall C:\sources\reactos\dll\win32\rasdlg\ rasdlg.rc
call :shortcall C:\sources\reactos\dll\win32\samsrv\ samsrv.rc
call :shortcall C:\sources\reactos\dll\win32\serialui\ serialui.rc
call :shortcall C:\sources\reactos\dll\win32\setupapi\ setupapi.rc
call :shortcall C:\sources\reactos\dll\win32\shell32\ shell32.rc
call :shortcall C:\sources\reactos\dll\win32\shimgvw\ shimgvw.rc
call :shortcall C:\sources\reactos\dll\win32\syssetup\ syssetup.rc
call :shortcall C:\sources\reactos\dll\win32\tapiui\ tapiui.rc
call :shortcall C:\sources\reactos\dll\win32\themeui\ themeui.rc
call :shortcall C:\sources\reactos\dll\win32\userenv\ userenv.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\cmdutils\arping\ arping.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\fraginator\ fraginator.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\imagesoft\ imagesoft.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\screensavers\blankscr\ scrnsave.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\screensavers\butterflies\ butterflies.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\screensavers\circles\ circles.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\screensavers\cylfrac\ cylfrac.rc
::count 140
call :shortcall C:\sources\reactos\modules\rosapps\applications\screensavers\matrix\ rsrc.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\screensavers\mazescr\ maze.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\screensavers\ssstars\ resource.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\screensavers\starfield\ starfield.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\sysutils\ctm\ ctm.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\sysutils\fontsub\ fontsub_res.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\sysutils\systeminfo\ systeminfo.rc
call :shortcall C:\sources\reactos\modules\rosapps\applications\winfile\ rsrc.rc
call :shortcall C:\sources\reactos\modules\rosapps\templates\old_wordpad\ rsrc.rc
call :shortcall C:\sources\reactos\subsystems\mvdm\ntvdm\ ntvdm.rc
call :shortcall C:\sources\reactos\win32ss\user\winsrv\usersrv\ usersrv.rc
call :shortcall C:\sources\reactos\win32ss\user\winsrv\consrv_new\ consrv.rc
call :shortcall C:\sources\reactos\win32ss\user\winsrv\consrv_new\frontends\gui\ guiterm.rc
call :shortcall C:\sources\reactos\win32ss\user\user32\ user32.rc
call :shortcall C:\sources\reactos\win32ss\printing\monitors\localmon\ localmon.rc
::count 155
::Start with short language fieldnames
call :shortlangdefault C:\sources\reactos\base\applications\winhlp32\
call :shortlangdefault C:\sources\reactos\base\applications\write\
call :shortlangdefault C:\sources\reactos\dll\win32\mshtml\
call :shortlangdefault C:\sources\reactos\dll\win32\shdoclc\
cd C:\sources\reactos\dll\win32\hhctrl.ocx\
call :lang_add_short hhctrl.rc En.rc
cd C:\sources\reactos\dll\win32\mapi32\
call :lang_add_short version.rc En.rc
::count 6
::count 161
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
::count 23
::count 184
::Processing completed
echo Removing duplicates from missing.txt
cd c:\sources\reactos\
awk -f removeDuplMissing.awk missing.txt
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
call :show_progress %n% 184
set /a "n=%n%+1"
exit /b

:lang_add_short
set tfile=%2
set tempval=%1

cd lang
awk -f c:\sources\reactos\translate3.awk %tfile%
move temp.name ..\ >nul
cd ..
awk -f C:\sources\reactos\langadd_short.awk %tempval%
del %tempval%
del temp.name
ren tempfile.rc %tempval%
call :show_progress %n% 184
set /a "n=%n%+1"
exit /b

:show_progress
cls
setlocal EnableDelayedExpansion
set current_step=%1
set total_steps=%2
set /a "progress=(current_step * 100) / total_steps"

set /p ".=Progress: !progress!%%!CR!" <nul

::if !progress! equ 100 echo.

exit /b

:shortcall
set tpath=%1
set tmodfile= %2
cd %tpath%
call :lang_add en-US.rc %tmodfile%

exit /b

:shortlangdefault
set ttpath=%1
cd %ttpath%
call :lang_add_short rsrc.rc En.rc

exit /b