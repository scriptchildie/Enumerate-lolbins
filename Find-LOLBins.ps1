function Find-LOLBins()   
{
    $ErrorActionPreference= 'silentlycontinue'
    $folder = 'C:\'
    $files = @("AppInstaller.exe","At.exe","Atbroker.exe","Bash.exe","Bitsadmin.exe","CertReq.exe","Certutil.exe","Cmd.exe","Cmdkey.exe","Cmstp.exe","ConfigSecurityPolicy.exe","Control.exe","Csc.exe","Cscript.exe","DataSvcUtil.exe","Desktopimgdownldr.exe","Dfsvc.exe","Diantz.exe","Diskshadow.exe","Dllhost.exe","Dnscmd.exe","Esentutl.exe","Eventvwr.exe","Expand.exe","Explorer.exe","Extexport.exe","Extrac32.exe","Findstr.exe","Forfiles.exe","Ftp.exe","GfxDownloadWrapper.exe","Gpscript.exe","Hh.exe","Ie4uinit.exe","Ieexec.exe","Ilasm.exe","Infdefaultinstall.exe","Installutil.exe","Jsc.exe","Makecab.exe","Mavinject.exe","Microsoft.Workflow.Compiler.exe","Mmc.exe","MpCmdRun.exe","Msbuild.exe","Msconfig.exe","Msdt.exe","Mshta.exe","Msiexec.exe","Netsh.exe","Odbcconf.exe","Pcalua.exe","Pcwrun.exe","Pktmon.exe","Pnputil.exe","Presentationhost.exe","Print.exe","Psr.exe","Rasautou.exe","Reg.exe","Regasm.exe","Regedit.exe","Regini.exe","Register-cimprovider.exe","Regsvcs.exe","Regsvr32.exe","Replace.exe","Rpcping.exe","Rundll32.exe","Runonce.exe","Runscripthelper.exe","Sc.exe","Schtasks.exe","Scriptrunner.exe","SyncAppvPublishingServer.exe","Ttdinject.exe","Tttracer.exe","vbc.exe","Verclsid.exe","Wab.exe","Wmic.exe","Wscript.exe","Wsreset.exe","wuauclt.exe","Xwizard.exe","Advpack.dll","Comsvcs.dll","Ieadvpack.dll","Ieaframe.dll","Mshtml.dll","Pcwutl.dll","Setupapi.dll","Shdocvw.dll","Shell32.dll","Syssetup.dll","Url.dll","Zipfldr.dll","adplus.exe","AgentExecutor.exe","Appvlp.exe","Bginfo.exe","Cdb.exe","coregen.exe","csi.exe","DefaultPack.EXE","Devtoolslauncher.exe","dnx.exe","Dotnet.exe","Dxcap.exe","Excel.exe","Mftrace.exe","Msdeploy.exe","msxsl.exe","ntdsutil.exe","Powerpnt.exe","rcsi.exe","Remote.exe","Sqldumper.exe","Sqlps.exe","SQLToolsPS.exe","Squirrel.exe","te.exe","Tracker.exe","Update.exe","vsjitdebugger.exe","Winword.exe","Wsl.exe","CL_Mutexverifiers.ps1","CL_Invocation.ps1","Manage-bde.wsf","Pubprn.vbs","Slmgr.vbs","Syncappvpublishingserver.vbs","winrm.vbs","Pester.bat")
    Write-Host "Identify LOLbins on this host:"
    $folderFiles = (Get-ChildItem -Path $folder -Recurse -File).FullName
    $outputFiles = Split-Path $folderFiles -leaf
    $count = 0

    foreach ($f in $outputfiles) 
    {
        if ($files -contains $f) 
        {          
            $filepath = $folderFiles[$count];
            Write-Host -NoNewline "Binary: " -ForegroundColor Green
            Write-Host -NoNewline "$f "
            Write-Host -NoNewline "Path: " -ForegroundColor Green
            Write-Host "$filepath "
        }
    $count++  
    }

    Write-Host "`n`nVisit https://lolbas-project.github.io for exploitation guidance" -ForegroundColor DarkMagenta

}
Find-LOLBins
