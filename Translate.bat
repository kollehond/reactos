echo off
title Awk Translator
cd C:\sources\reactos\base\applications\cacls\
awk -f C:\sources\reactos\langadd.awk cacls.rc
del cacls.rc
ren tempfile.rc cacls.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\calc\
awk -f C:\sources\reactos\langadd.awk resource.rc
del resource.rc
ren tempfile.rc resource.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\charmap\
awk -f C:\sources\reactos\langadd.awk charmap.rc
del charmap.rc
ren tempfile.rc charmap.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\charmap_new\
awk -f C:\sources\reactos\langadd.awk charmap.rc
del charmap.rc
ren tempfile.rc charmap.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\clipbrd\
awk -f C:\sources\reactos\langadd.awk clipbrd.rc
del clipbrd.rc
ren tempfile.rc clipbrd.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\at\
awk -f C:\sources\reactos\langadd.awk at.rc
del at.rc
ren tempfile.rc at.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\chcp\
awk -f C:\sources\reactos\langadd.awk chcp.rc
del chcp.rc
ren tempfile.rc chcp.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\clip\
awk -f C:\sources\reactos\langadd.awk clip.rc
del clip.rc
ren tempfile.rc clip.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\comp\
awk -f C:\sources\reactos\langadd.awk comp.rc
del comp.rc
ren tempfile.rc comp.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\doskey\
awk -f C:\sources\reactos\langadd.awk doskey.rc
del doskey.rc
ren tempfile.rc doskey.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\eventcreate\
awk -f C:\sources\reactos\langadd.awk eventcreate.rc
del eventcreate.rc
ren tempfile.rc eventcreate.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\find\
awk -f C:\sources\reactos\langadd.awk find.rc
del find.rc
ren tempfile.rc find.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\help\
awk -f C:\sources\reactos\langadd.awk help.rc
del help.rc
ren tempfile.rc help.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\hostname\
awk -f C:\sources\reactos\langadd.awk hostname.rc
del hostname.rc
ren tempfile.rc hostname.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\mode\
awk -f C:\sources\reactos\langadd.awk mode.rc
del mode.rc
ren tempfile.rc mode.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\more\
awk -f C:\sources\reactos\langadd.awk more.rc
del more.rc
ren tempfile.rc more.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\reg\
awk -f C:\sources\reactos\langadd.awk reg.rc
del reg.rc
ren tempfile.rc reg.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\taskkill\
awk -f C:\sources\reactos\langadd.awk taskkill.rc
del taskkill.rc
ren tempfile.rc taskkill.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\timeout\
awk -f C:\sources\reactos\langadd.awk timeout.rc
del timeout.rc
ren tempfile.rc timeout.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\tree\
awk -f C:\sources\reactos\langadd.awk tree.rc
del tree.rc
ren tempfile.rc tree.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\whoami\
awk -f C:\sources\reactos\langadd.awk whoami.rc
del whoami.rc
ren tempfile.rc whoami.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\wmic\
awk -f C:\sources\reactos\langadd.awk wmic.rc
del wmic.rc
ren tempfile.rc wmic.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\cmdutils\xcopy\
awk -f C:\sources\reactos\langadd.awk xcopy.rc
del xcopy.rc
ren tempfile.rc xcopy.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\drwtsn32\
awk -f C:\sources\reactos\langadd.awk drwtsn32.rc
del drwtsn32.rc
ren tempfile.rc drwtsn32.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\dxdiag\
awk -f C:\sources\reactos\langadd.awk dxdiag.rc
del dxdiag.rc
ren tempfile.rc dxdiag.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\findstr\
awk -f C:\sources\reactos\langadd.awk findstr.rc
del findstr.rc
ren tempfile.rc findstr.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\fltmc\
awk -f C:\sources\reactos\langadd.awk fltmc.rc
del fltmc.rc
ren tempfile.rc fltmc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\fontview\
awk -f C:\sources\reactos\langadd.awk fontview.rc
del fontview.rc
ren tempfile.rc fontview.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\games\solitaire\
awk -f C:\sources\reactos\langadd.awk rsrc.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\games\spider\
awk -f C:\sources\reactos\langadd.awk rsrc.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\games\winmine\
awk -f C:\sources\reactos\langadd.awk rsrc.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\kbswitch\
awk -f C:\sources\reactos\langadd.awk kbswitch.rc
del kbswitch.rc
ren tempfile.rc kbswitch.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\logoff\
awk -f C:\sources\reactos\langadd.awk logoff.rc
del logoff.rc
ren tempfile.rc logoff.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\magnify\
awk -f C:\sources\reactos\langadd.awk magnify.rc
del magnify.rc
ren tempfile.rc magnify.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\mmc\
awk -f C:\sources\reactos\langadd.awk mmc.rc
del mmc.rc
ren tempfile.rc mmc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\mplay32\
awk -f C:\sources\reactos\langadd.awk mplay32.rc
del mplay32.rc
ren tempfile.rc mplay32.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
echo 25%% Complete
cd C:\sources\reactos\base\applications\msconfig\
awk -f C:\sources\reactos\langadd.awk msconfig.rc
del msconfig.rc
ren tempfile.rc msconfig.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\msconfig_new\
awk -f C:\sources\reactos\langadd.awk msconfig.rc
del msconfig.rc
ren tempfile.rc msconfig.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\mscutils\eventvwr\
awk -f C:\sources\reactos\langadd.awk eventvwr.rc
del eventvwr.rc
ren tempfile.rc eventvwr.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\mscutils\servman\
awk -f C:\sources\reactos\langadd.awk servman.rc
del servman.rc
ren tempfile.rc servman.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\mspaint\
awk -f C:\sources\reactos\langadd.awk rsrc.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\mstsc\
awk -f C:\sources\reactos\langadd.awk rdc.rc
del rdc.rc
ren tempfile.rc rdc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\network\ipconfig\
awk -f C:\sources\reactos\langadd.awk ipconfig.rc
del ipconfig.rc
ren tempfile.rc ipconfig.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\network\net\
awk -f C:\sources\reactos\langadd.awk net.rc
del net.rc
ren tempfile.rc net.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\network\ping\
awk -f C:\sources\reactos\langadd.awk ping.rc
del ping.rc
ren tempfile.rc ping.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\network\telnet\
awk -f C:\sources\reactos\langadd.awk telnet.rc
del telnet.rc
ren tempfile.rc telnet.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\network\tracert\
awk -f C:\sources\reactos\langadd.awk tracert.rc
del tracert.rc
ren tempfile.rc tracert.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\network\wlanconf\
awk -f C:\sources\reactos\langadd.awk wlanconf.rc
del wlanconf.rc
ren tempfile.rc wlanconf.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\notepad\
awk -f C:\sources\reactos\langadd.awk rsrc.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\osk\
awk -f C:\sources\reactos\langadd.awk rsrc.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\rapps\
awk -f C:\sources\reactos\langadd.awk rapps.rc
del rapps.rc
ren tempfile.rc rapps.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\regedit\
awk -f C:\sources\reactos\langadd.awk regedit.rc
del regedit.rc
ren tempfile.rc regedit.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\screensavers\3dtext\
awk -f C:\sources\reactos\langadd.awk rsrc.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\screensavers\logon\
awk -f C:\sources\reactos\langadd.awk logon.rc
del logon.rc
ren tempfile.rc logon.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\shutdown\
awk -f C:\sources\reactos\langadd.awk shutdown.rc
del shutdown.rc
ren tempfile.rc shutdown.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\sndrec32\
awk -f C:\sources\reactos\langadd.awk rsrc.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\sndvol32\
awk -f C:\sources\reactos\langadd.awk sndvol32.rc
del sndvol32.rc
ren tempfile.rc sndvol32.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\taskmgr\
awk -f C:\sources\reactos\langadd.awk taskmgr.rc
del taskmgr.rc
ren tempfile.rc taskmgr.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\applications\wordpad\
awk -f C:\sources\reactos\langadd.awk rsrc.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\setup\reactos\
awk -f C:\sources\reactos\langadd.awk reactos.rc
del reactos.rc
ren tempfile.rc reactos.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\setup\welcome\
awk -f C:\sources\reactos\langadd.awk welcome.rc
del welcome.rc
ren tempfile.rc welcome.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\shell\cmd\
awk -f C:\sources\reactos\langadd.awk cmd.rc
del cmd.rc
ren tempfile.rc cmd.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\shell\explorer\
awk -f C:\sources\reactos\langadd.awk explorer.rc
del explorer.rc
ren tempfile.rc explorer.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\system\diskpart\
awk -f C:\sources\reactos\langadd.awk diskpart.rc
del diskpart.rc
ren tempfile.rc diskpart.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\system\format\
awk -f C:\sources\reactos\langadd.awk format.rc
del format.rc
ren tempfile.rc format.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\system\regsvr32\
awk -f C:\sources\reactos\langadd.awk regsvr32.rc
del regsvr32.rc
ren tempfile.rc regsvr32.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\system\rundll32\
awk -f C:\sources\reactos\langadd.awk rundll32.rc
del rundll32.rc
ren tempfile.rc rundll32.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\system\runonce\
awk -f C:\sources\reactos\langadd.awk runonce.rc
del runonce.rc
ren tempfile.rc runonce.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\system\services\
awk -f C:\sources\reactos\langadd.awk services.rc
del services.rc
ren tempfile.rc services.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\system\subst\
awk -f C:\sources\reactos\langadd.awk subst.rc
del subst.rc
ren tempfile.rc subst.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\system\userinit\
awk -f C:\sources\reactos\langadd.awk userinit.rc
del userinit.rc
ren tempfile.rc userinit.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\base\system\winlogon\
awk -f C:\sources\reactos\langadd.awk winlogon.rc
del winlogon.rc
ren tempfile.rc winlogon.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\boot\freeldr\fdebug\
awk -f C:\sources\reactos\langadd.awk fdebug.rc
del fdebug.rc
ren tempfile.rc fdebug.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
echo 50%% Complete
cd C:\sources\reactos\dll\cpl\access\
awk -f C:\sources\reactos\langadd.awk access.rc
del access.rc
ren tempfile.rc access.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\appwiz\
awk -f C:\sources\reactos\langadd.awk appwiz.rc
del appwiz.rc
ren tempfile.rc appwiz.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\console\
awk -f C:\sources\reactos\langadd.awk console.rc
del console.rc
ren tempfile.rc console.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\desk\
awk -f C:\sources\reactos\langadd.awk desk.rc
del desk.rc
ren tempfile.rc desk.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\hdwwiz\
awk -f C:\sources\reactos\langadd.awk hdwwiz.rc
del hdwwiz.rc
ren tempfile.rc hdwwiz.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\inetcpl\
awk -f C:\sources\reactos\langadd.awk inetcpl.rc
del inetcpl.rc
ren tempfile.rc inetcpl.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\input\
awk -f C:\sources\reactos\langadd.awk input.rc
del input.rc
ren tempfile.rc input.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\intl\
awk -f C:\sources\reactos\langadd.awk intl.rc
del intl.rc
ren tempfile.rc intl.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\joy\
awk -f C:\sources\reactos\langadd.awk joy.rc
del joy.rc
ren tempfile.rc joy.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\liccpa\
awk -f C:\sources\reactos\langadd.awk liccpa.rc
del liccpa.rc
ren tempfile.rc liccpa.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\main\
awk -f C:\sources\reactos\langadd.awk main.rc
del main.rc
ren tempfile.rc main.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\mmsys\
awk -f C:\sources\reactos\langadd.awk mmsys.rc
del mmsys.rc
ren tempfile.rc mmsys.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\openglcfg\
awk -f C:\sources\reactos\langadd.awk openglcfg.rc
del openglcfg.rc
ren tempfile.rc openglcfg.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\powercfg\
awk -f C:\sources\reactos\langadd.awk powercfg.rc
del powercfg.rc
ren tempfile.rc powercfg.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\sysdm\
awk -f C:\sources\reactos\langadd.awk sysdm.rc
del sysdm.rc
ren tempfile.rc sysdm.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\telephon\
awk -f C:\sources\reactos\langadd.awk telephon.rc
del telephon.rc
ren tempfile.rc telephon.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\timedate\
awk -f C:\sources\reactos\langadd.awk timedate.rc
del timedate.rc
ren tempfile.rc timedate.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\usrmgr\
awk -f C:\sources\reactos\langadd.awk usrmgr.rc
del usrmgr.rc
ren tempfile.rc usrmgr.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\cpl\wined3dcfg\
awk -f C:\sources\reactos\langadd.awk wined3dcfg.rc
del wined3dcfg.rc
ren tempfile.rc wined3dcfg.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\shellext\acppage\
awk -f C:\sources\reactos\langadd.awk acppage.rc
del acppage.rc
ren tempfile.rc acppage.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\shellext\deskadp\
awk -f C:\sources\reactos\langadd.awk deskadp.rc
del deskadp.rc
ren tempfile.rc deskadp.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\shellext\deskmon\
awk -f C:\sources\reactos\langadd.awk deskmon.rc
del deskmon.rc
ren tempfile.rc deskmon.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\shellext\fontext\
awk -f C:\sources\reactos\langadd.awk fontext.rc
del fontext.rc
ren tempfile.rc fontext.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\shellext\netshell\
awk -f C:\sources\reactos\langadd.awk netshell.rc
del netshell.rc
ren tempfile.rc netshell.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\shellext\ntobjshex\
awk -f C:\sources\reactos\langadd.awk ntobjshex.rc
del ntobjshex.rc
ren tempfile.rc ntobjshex.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\shellext\stobject\
awk -f C:\sources\reactos\langadd.awk stobject.rc
del stobject.rc
ren tempfile.rc stobject.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\shellext\zipfldr\
awk -f C:\sources\reactos\langadd.awk zipfldr.rc
del zipfldr.rc
ren tempfile.rc zipfldr.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\aclui\
awk -f C:\sources\reactos\langadd.awk aclui.rc
del aclui.rc
ren tempfile.rc aclui.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\browseui\
awk -f C:\sources\reactos\langadd.awk browseui.rc
del browseui.rc
ren tempfile.rc browseui.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\devmgr\
awk -f C:\sources\reactos\langadd.awk devmgr.rc
del devmgr.rc
ren tempfile.rc devmgr.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\getuname\
awk -f C:\sources\reactos\langadd.awk getuname.rc
del getuname.rc
ren tempfile.rc getuname.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\ieframe\
awk -f C:\sources\reactos\langadd.awk ieframe.rc
del ieframe.rc
ren tempfile.rc ieframe.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\iernonce\
awk -f C:\sources\reactos\langadd.awk iernonce.rc
del iernonce.rc
ren tempfile.rc iernonce.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\kernel32\winnls\
awk -f C:\sources\reactos\langadd.awk locale_rc.rc
del locale_rc.rc
ren tempfile.rc locale_rc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\lsasrv\
awk -f C:\sources\reactos\langadd.awk lsasrv.rc
del lsasrv.rc
ren tempfile.rc lsasrv.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\modemui\
awk -f C:\sources\reactos\langadd.awk modemui.rc
del modemui.rc
ren tempfile.rc modemui.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\msgina\
awk -f C:\sources\reactos\langadd.awk msgina.rc
del msgina.rc
ren tempfile.rc msgina.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
echo 75%% Complete
cd C:\sources\reactos\dll\win32\msports\
awk -f C:\sources\reactos\langadd.awk msports.rc
del msports.rc
ren tempfile.rc msports.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\mycomput\
awk -f C:\sources\reactos\langadd.awk mycomput.rc
del mycomput.rc
ren tempfile.rc mycomput.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\netcfgx\
awk -f C:\sources\reactos\langadd.awk netcfgx.rc
del netcfgx.rc
ren tempfile.rc netcfgx.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\netid\
awk -f C:\sources\reactos\langadd.awk netid.rc
del netid.rc
ren tempfile.rc netid.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\newdev\
awk -f C:\sources\reactos\langadd.awk newdev.rc
del newdev.rc
ren tempfile.rc newdev.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\rasdlg\
awk -f C:\sources\reactos\langadd.awk rasdlg.rc
del rasdlg.rc
ren tempfile.rc rasdlg.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\samsrv\
awk -f C:\sources\reactos\langadd.awk samsrv.rc
del samsrv.rc
ren tempfile.rc samsrv.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\setupapi\
awk -f C:\sources\reactos\langadd.awk setupapi.rc
del setupapi.rc
ren tempfile.rc setupapi.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\shell32\
awk -f C:\sources\reactos\langadd.awk shell32.rc
del shell32.rc
ren tempfile.rc shell32.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\shimgvw\
awk -f C:\sources\reactos\langadd.awk shimgvw.rc
del shimgvw.rc
ren tempfile.rc shimgvw.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\syssetup\
awk -f C:\sources\reactos\langadd.awk syssetup.rc
del syssetup.rc
ren tempfile.rc syssetup.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\tapiui\
awk -f C:\sources\reactos\langadd.awk tapiui.rc
del tapiui.rc
ren tempfile.rc tapiui.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\dll\win32\userenv\
awk -f C:\sources\reactos\langadd.awk userenv.rc
del userenv.rc
ren tempfile.rc userenv.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\cmdutils\arping\
awk -f C:\sources\reactos\langadd.awk arping.rc
del arping.rc
ren tempfile.rc arping.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\fraginator\
awk -f C:\sources\reactos\langadd.awk fraginator.rc
del fraginator.rc
ren tempfile.rc fraginator.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\imagesoft\
awk -f C:\sources\reactos\langadd.awk imagesoft.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\blankscr\
awk -f C:\sources\reactos\langadd.awk scrnsave.rc
del scrnsave.rc
ren tempfile.rc scrnsave.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\butterflies\
awk -f C:\sources\reactos\langadd.awk butterflies.rc
del butterflies.rc
ren tempfile.rc butterflies.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\circles\
awk -f C:\sources\reactos\langadd.awk circles.rc
del circles.rc
ren tempfile.rc circles.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\cylfrac\
awk -f C:\sources\reactos\langadd.awk cylfrac.rc
del cylfrac.rc
ren tempfile.rc cylfrac.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\matrix\
awk -f C:\sources\reactos\langadd.awk rsrc.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\mazescr\
awk -f C:\sources\reactos\langadd.awk maze.rc
del maze.rc
ren tempfile.rc maze.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\ssstars\
awk -f C:\sources\reactos\langadd.awk resource.rc
del resource.rc
ren tempfile.rc resource.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\screensavers\starfield\
awk -f C:\sources\reactos\langadd.awk starfield.rc
del starfield.rc
ren tempfile.rc starfield.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\sysutils\ctm\
awk -f C:\sources\reactos\langadd.awk ctm.rc
del ctm.rc
ren tempfile.rc ctm.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\sysutils\fontsub\
awk -f C:\sources\reactos\langadd.awk fontsub_res.rc
del fontsub_res.rc
ren tempfile.rc fontsub_res.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\sysutils\systeminfo\
awk -f C:\sources\reactos\langadd.awk systeminfo.rc
del systeminfo.rc
ren tempfile.rc systeminfo.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\applications\winfile\
awk -f C:\sources\reactos\langadd.awk rsrc.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\modules\rosapps\templates\old_wordpad\
awk -f C:\sources\reactos\langadd.awk rsrc.rc
del rsrc.rc
ren tempfile.rc rsrc.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\subsystems\mvdm\ntvdm\
awk -f C:\sources\reactos\langadd.awk ntvdm.rc
del ntvdm.rc
ren tempfile.rc ntvdm.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\win32ss\user\winsrv\usersrv\
awk -f C:\sources\reactos\langadd.awk usersrv.rc
del usersrv.rc
ren tempfile.rc usersrv.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\win32ss\user\winsrv\consrv_new\
awk -f C:\sources\reactos\langadd.awk consrv.rc
del consrv.rc
ren tempfile.rc consrv.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\win32ss\user\winsrv\consrv_new\frontends\gui\
awk -f C:\sources\reactos\langadd.awk guiterm.rc
del guiterm.rc
ren tempfile.rc guiterm.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\win32ss\user\user32\
awk -f C:\sources\reactos\langadd.awk user32.rc
del user32.rc
ren tempfile.rc user32.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
cd C:\sources\reactos\win32ss\printing\monitors\localmon\
awk -f C:\sources\reactos\langadd.awk localmon.rc
del localmon.rc
ren tempfile.rc localmon.rc
cd lang
awk -f c:\sources\reactos\translate2.awk en-US.rc
echo 100%% Complete
echo Removing duplicates from missing.txt
cd c:\sources\reactos\
awk -f removeDuplMissing.awk  missing.txt
del missing.txt
ren Missing1.txt missing.txt
echo Done!
pause