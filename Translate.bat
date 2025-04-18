echo off
title Awk Translator
for /f %%a in ('copy /Z "%~dpf0" nul') do set "CR=%%a"
set "n=0"
::reactos\base\applications
call :shortcall E:\source\reactos\base\applications\cacls\ cacls.rc
call :shortcall E:\source\reactos\base\applications\calc\ resource.rc
call :shortcall E:\source\reactos\base\applications\charmap\ charmap.rc
call :shortcall E:\source\reactos\base\applications\charmap_new\ charmap.rc
call :shortcall E:\source\reactos\base\applications\clipbrd\ clipbrd.rc
:: count 5
::..\cmdutils
call :shortcall E:\source\reactos\base\applications\cmdutils\at\ at.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\chcp\ chcp.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\clip\ clip.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\comp\ comp.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\doskey\ doskey.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\eventcreate\ eventcreate.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\find\ find.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\help\ help.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\hostname\ hostname.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\mode\ mode.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\more\ more.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\reg\ reg.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\taskkill\ taskkill.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\timeout\ timeout.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\tree\ tree.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\whoami\ whoami.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\wmic\ wmic.rc
call :shortcall E:\source\reactos\base\applications\cmdutils\xcopy\ xcopy.rc
::..\cmdutils total 18
::count 23
call :shortcall E:\source\reactos\base\applications\drwtsn32\ drwtsn32.rc
call :shortcall E:\source\reactos\base\applications\dxdiag\ dxdiag.rc
call :shortcall E:\source\reactos\base\applications\findstr\ findstr.rc
call :shortcall E:\source\reactos\base\applications\fltmc\ fltmc.rc
call :shortcall E:\source\reactos\base\applications\fontview\ fontview.rc
::count 28
::..\games
call :shortcall E:\source\reactos\base\applications\games\solitaire\ rsrc.rc
call :shortcall E:\source\reactos\base\applications\games\spider\ rsrc.rc
call :shortcall E:\source\reactos\base\applications\games\winmine\ rsrc.rc
::..\games total 3
::count 31
call :shortcall E:\source\reactos\base\applications\kbswitch\ kbswitch.rc
call :shortcall E:\source\reactos\base\applications\logoff\ logoff.rc
call :shortcall E:\source\reactos\base\applications\magnify\ magnify.rc
call :shortcall E:\source\reactos\base\applications\mmc\ mmc.rc
call :shortcall E:\source\reactos\base\applications\mplay32\ mplay32.rc
call :shortcall E:\source\reactos\base\applications\msconfig\ msconfig.rc
call :shortcall E:\source\reactos\base\applications\msconfig_new\ msconfig.rc
::count 38
::..\mscutils
call :shortcall E:\source\reactos\base\applications\mscutils\eventvwr\ eventvwr.rc
call :shortcall E:\source\reactos\base\applications\mscutils\servman\ servman.rc
::..\mscutils total 2
::count 40
call :shortcall E:\source\reactos\base\applications\mspaint\ rsrc.rc
call :shortcall E:\source\reactos\base\applications\mstsc\ rdc.rc
::count 42
::..\network
::call :shortcall E:\source\reactos\base\applications\network\dwnl\ dwnl.rc
call :shortcall E:\source\reactos\base\applications\network\ipconfig\ ipconfig.rc
call :shortcall E:\source\reactos\base\applications\network\net\ net.rc
::call :shortcall E:\source\reactos\base\applications\network\netstat\ netstat.rc
call :shortcall E:\source\reactos\base\applications\network\ping\ ping.rc
call :shortcall E:\source\reactos\base\applications\network\telnet\ telnet.rc
call :shortcall E:\source\reactos\base\applications\network\tracert\ tracert.rc
call :shortcall E:\source\reactos\base\applications\network\wlanconf\ wlanconf.rc
::..\network total 6
::count 48
call :shortcall E:\source\reactos\base\applications\notepad\ rsrc.rc
call :shortcall E:\source\reactos\base\applications\osk\ rsrc.rc
call :shortcall E:\source\reactos\base\applications\rapps\ rapps.rc
call :shortcall E:\source\reactos\base\applications\regedit\ regedit.rc
call :shortcall E:\source\reactos\base\applications\regedit\clb\ clb.rc
::count 53
::..\screensavers
call :shortcall E:\source\reactos\base\applications\screensavers\3dtext\ rsrc.rc
call :shortcall E:\source\reactos\base\applications\screensavers\logon\ logon.rc
::..\screensavers total 2
::count 55
call :shortcall E:\source\reactos\base\applications\shutdown\ shutdown.rc
call :shortcall E:\source\reactos\base\applications\sndrec32\ rsrc.rc
call :shortcall E:\source\reactos\base\applications\sndvol32\ sndvol32.rc
call :shortcall E:\source\reactos\base\applications\taskmgr\ taskmgr.rc
::call :shortcall E:\source\reactos\base\applications\utilman\ utilman.rc
call :shortcall E:\source\reactos\base\applications\wordpad\ rsrc.rc
::End of base\applications
::count 60
call :shortcall E:\source\reactos\base\setup\reactos\ reactos.rc
call :shortcall E:\source\reactos\base\setup\welcome\ welcome.rc
call :shortcall E:\source\reactos\base\shell\cmd\ cmd.rc
call :shortcall E:\source\reactos\base\shell\explorer\ explorer.rc
::call :shortcall E:\source\reactos\base\system\chkdsk\ chkdsk.rc
call :shortcall E:\source\reactos\base\system\diskpart\ diskpart.rc
call :shortcall E:\source\reactos\base\system\format\ format.rc
call :shortcall E:\source\reactos\base\system\regsvr32\ regsvr32.rc
call :shortcall E:\source\reactos\base\system\rundll32\ rundll32.rc
call :shortcall E:\source\reactos\base\system\runonce\ runonce.rc
call :shortcall E:\source\reactos\base\system\services\ services.rc
call :shortcall E:\source\reactos\base\system\subst\ subst.rc
call :shortcall E:\source\reactos\base\system\userinit\ userinit.rc
call :shortcall E:\source\reactos\base\system\winlogon\ winlogon.rc
::End of \base
::count 73
call :shortcall E:\source\reactos\boot\freeldr\fdebug\ fdebug.rc
call :shortcall E:\source\reactos\dll\cpl\access\ access.rc
call :shortcall E:\source\reactos\dll\cpl\appwiz\ appwiz.rc
call :shortcall E:\source\reactos\dll\cpl\console\ console.rc
call :shortcall E:\source\reactos\dll\cpl\desk\ desk.rc
call :shortcall E:\source\reactos\dll\cpl\hdwwiz\ hdwwiz.rc
call :shortcall E:\source\reactos\dll\cpl\inetcpl\ inetcpl.rc
call :shortcall E:\source\reactos\dll\cpl\input\ input.rc
call :shortcall E:\source\reactos\dll\cpl\intl\ intl.rc
call :shortcall E:\source\reactos\dll\cpl\joy\ joy.rc
call :shortcall E:\source\reactos\dll\cpl\liccpa\ liccpa.rc
call :shortcall E:\source\reactos\dll\cpl\main\ main.rc
call :shortcall E:\source\reactos\dll\cpl\mmsys\ mmsys.rc
call :shortcall E:\source\reactos\dll\cpl\openglcfg\ openglcfg.rc
call :shortcall E:\source\reactos\dll\cpl\powercfg\ powercfg.rc
call :shortcall E:\source\reactos\dll\cpl\sysdm\ sysdm.rc
call :shortcall E:\source\reactos\dll\cpl\telephon\ telephon.rc
call :shortcall E:\source\reactos\dll\cpl\timedate\ timedate.rc
call :shortcall E:\source\reactos\dll\cpl\usrmgr\ usrmgr.rc
call :shortcall E:\source\reactos\dll\cpl\wined3dcfg\ wined3dcfg.rc
::count 93
call :shortcall E:\source\reactos\dll\shellext\acppage\ acppage.rc
::call :shortcall E:\source\reactos\dll\shellext\cryptext\ cryptext.rc
call :shortcall E:\source\reactos\dll\shellext\deskadp\ deskadp.rc
call :shortcall E:\source\reactos\dll\shellext\deskmon\ deskmon.rc
::call :shortcall E:\source\reactos\dll\shellext\devcpux\ devcpux.rc
call :shortcall E:\source\reactos\dll\shellext\fontext\ fontext.rc
::call :shortcall E:\source\reactos\dll\shellext\netplwiz\ netplwiz.rc
call :shortcall E:\source\reactos\dll\shellext\netshell\ netshell.rc
call :shortcall E:\source\reactos\dll\shellext\ntobjshex\ ntobjshex.rc
call :shortcall E:\source\reactos\dll\shellext\stobject\ stobject.rc
call :shortcall E:\source\reactos\dll\shellext\zipfldr\ zipfldr.rc
call :shortcall E:\source\reactos\dll\win32\aclui\ aclui.rc
call :shortcall E:\source\reactos\dll\win32\browseui\ browseui.rc
call :shortcall E:\source\reactos\dll\win32\devmgr\ devmgr.rc
call :shortcall E:\source\reactos\dll\win32\getuname\ getuname.rc
call :shortcall E:\source\reactos\dll\win32\ieframe\ ieframe.rc
call :shortcall E:\source\reactos\dll\win32\iernonce\ iernonce.rc
call :shortcall E:\source\reactos\dll\win32\kernel32\winnls\ locale_rc.rc
call :shortcall E:\source\reactos\dll\win32\lsasrv\ lsasrv.rc
call :shortcall E:\source\reactos\dll\win32\modemui\ modemui.rc
::count 110
call :shortcall E:\source\reactos\dll\win32\msgina\ msgina.rc
call :shortcall E:\source\reactos\dll\win32\msports\ msports.rc
call :shortcall E:\source\reactos\dll\win32\mycomput\ mycomput.rc
call :shortcall E:\source\reactos\dll\win32\netcfgx\ netcfgx.rc
call :shortcall E:\source\reactos\dll\win32\netid\ netid.rc
call :shortcall E:\source\reactos\dll\win32\newdev\ newdev.rc
call :shortcall E:\source\reactos\dll\win32\rasdlg\ rasdlg.rc
call :shortcall E:\source\reactos\dll\win32\samsrv\ samsrv.rc
call :shortcall E:\source\reactos\dll\win32\serialui\ serialui.rc
call :shortcall E:\source\reactos\dll\win32\setupapi\ setupapi.rc
call :shortcall E:\source\reactos\dll\win32\shell32\ shell32.rc
call :shortcall E:\source\reactos\dll\win32\shimgvw\ shimgvw.rc
call :shortcall E:\source\reactos\dll\win32\syssetup\ syssetup.rc
call :shortcall E:\source\reactos\dll\win32\tapiui\ tapiui.rc
::call :shortcall E:\source\reactos\dll\win32\themeui\ themeui.rc
call :shortcall E:\source\reactos\dll\win32\userenv\ userenv.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\cmdutils\arping\ arping.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\fraginator\ fraginator.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\imagesoft\ imagesoft.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\screensavers\blankscr\ scrnsave.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\screensavers\butterflies\ butterflies.rc
::count 130
call :shortcall E:\source\reactos\modules\rosapps\applications\screensavers\circles\ circles.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\screensavers\cylfrac\ cylfrac.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\screensavers\matrix\ rsrc.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\screensavers\mazescr\ maze.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\screensavers\ssstars\ resource.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\screensavers\starfield\ starfield.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\sysutils\ctm\ ctm.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\sysutils\fontsub\ fontsub_res.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\sysutils\systeminfo\ systeminfo.rc
call :shortcall E:\source\reactos\modules\rosapps\applications\winfile\ rsrc.rc
call :shortcall E:\source\reactos\modules\rosapps\templates\old_wordpad\ rsrc.rc
call :shortcall E:\source\reactos\subsystems\mvdm\ntvdm\ ntvdm.rc
call :shortcall E:\source\reactos\win32ss\user\winsrv\usersrv\ usersrv.rc
call :shortcall E:\source\reactos\win32ss\user\winsrv\consrv_new\ consrv.rc
call :shortcall E:\source\reactos\win32ss\user\winsrv\consrv_new\frontends\gui\ guiterm.rc
call :shortcall E:\source\reactos\win32ss\user\user32\ user32.rc
call :shortcall E:\source\reactos\win32ss\printing\monitors\localmon\ localmon.rc
::count 147
::Start with short language fieldnames
call :shortlangdefault E:\source\reactos\base\applications\winhlp32\
call :shortlangdefault E:\source\reactos\base\applications\write\
call :shortlangdefault E:\source\reactos\dll\win32\mshtml\
call :shortlangdefault E:\source\reactos\dll\win32\shdoclc\
cd E:\source\reactos\dll\win32\hhctrl.ocx\
call :lang_add_short hhctrl.rc En.rc
cd E:\source\reactos\dll\win32\mapi32\
call :lang_add_short version.rc En.rc
::count 6
::count 153
::Short as part of the filename
cd E:\source\reactos\dll\win32\avifil32\
call :lang_add_short rsrc.rc avifile_En.rc
cd E:\source\reactos\dll\win32\comctl32\
call :lang_add_short rsrc.rc comctl_En.rc
cd E:\source\reactos\dll\win32\comdlg32\
call :lang_add_short rsrc.rc cdlg_En.rc
cd E:\source\reactos\dll\win32\credui\
call :lang_add_short credui.rc credui_En.rc
cd E:\source\reactos\dll\win32\crypt32\
call :lang_add_short crypt32.rc crypt32_En.rc
cd E:\source\reactos\dll\win32\cryptdlg\
call :lang_add_short cryptdlg.rc cryptdlg_En.rc
cd E:\source\reactos\dll\win32\cryptui\
call :lang_add_short cryptui.rc cryptui_En.rc
cd E:\source\reactos\dll\win32\iccvid\
call :lang_add_short rsrc.rc iccvid_En.rc
cd E:\source\reactos\dll\win32\jscript\
call :lang_add_short rsrc.rc jscript_En.rc
cd E:\source\reactos\dll\win32\mpr\
call :lang_add_short version.rc mpr_En.rc
cd E:\source\reactos\dll\win32\msacm32\
call :lang_add_short msacm.rc msacm_En.rc
cd E:\source\reactos\dll\win32\msi\
call :lang_add_short msi.rc msi_En.rc
cd E:\source\reactos\dll\win32\msrle32\
call :lang_add_short rsrc.rc msrle_En.rc
cd E:\source\reactos\dll\win32\msvfw32\
call :lang_add_short rsrc.rc msvfw32_En.rc
cd E:\source\reactos\dll\win32\msvidc32\
call :lang_add_short rsrc.rc msvidc32_En.rc
cd E:\source\reactos\dll\win32\oleacc\
call :lang_add_short oleacc.rc oleacc_En.rc
cd E:\source\reactos\dll\win32\oleaut32\
call :lang_add_short oleaut32.rc oleaut32_En.rc
cd E:\source\reactos\dll\win32\oledlg\
call :lang_add_short rsrc.rc oledlg_En.rc
cd E:\source\reactos\dll\win32\shlwapi\
call :lang_add_short version.rc shlwapi_En.rc
cd E:\source\reactos\dll\win32\wininet\
call :lang_add_short rsrc.rc wininet_En.rc
cd E:\source\reactos\dll\win32\winmm\
call :lang_add_short winmm_res.rc winmm_En.rc
cd E:\source\reactos\dll\win32\wldap32\
call :lang_add_short wldap32.rc wldap32_En.rc
cd E:\source\reactos\win32ss\printing\monitors\localmon\ui\
call :lang_add_short localui.rc ui_En.rc
::count 23
::count 176
::Processing completed
echo Removing duplicates from missing.txt
cd E:\source\reactos\
awk -f removeDuplMissing.awk missing.txt
del missing.txt
ren Missing1.txt missing.txt
echo Done!
pause

:lang_add
set tfile=%1
set tempval=%2
awk -f E:\source\reactos\langadd.awk %tempval%
del %tempval%
ren tempfile.rc %tempval%
cd lang
awk -f E:\source\reactos\translate2.awk %tfile%
::call :show_progress %n% 176
set /a "n=%n%+1"
exit /b

:lang_add_short
set tfile=%2
set tempval=%1
set tempfull=%3
cd lang
awk -f E:\source\reactos\translate3.awk %tfile%
move temp.name ..\ >nul
cd ..
awk -f E:\source\reactos\langadd_short.awk %tempval%
del %tempval%
del temp.name
ren tempfile.rc %tempval%
::call :show_progress %n% 176
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
set tm=%2
set tmodfile=%tpath%%tm%
cd %tpath%
call :lang_add en-US.rc %tm% %tmodfile%
exit /b

:shortlangdefault
set ttpath=%1
cd %ttpath%
call :lang_add_short rsrc.rc En.rc
exit /b