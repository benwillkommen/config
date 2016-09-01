write-host "             ;,'"
write-host "    _o_    ;:;'"
write-host " ,-.'---`.__ ;"
write-host "((j`=====',-'"
write-host " `-\     /"
write-host "    `-=-'     You think you're fancy?"

$octavePath = "C:\Octave\Octave-4.0.3\bin\octave-gui.exe"
if (Test-Path $octavePath){	
	function start-octave{
		C:\Octave\Octave-4.0.3\bin\octave-gui.exe --no-gui
	}
	new-alias octave start-octave
}

$sublPath = "C:\Program Files\Sublime Text 3\subl.exe"
if (Test-Path $sublPath){
	function start-sublimeAsAdministrator{
		start-process $sublPath -verb runas
	}	
	new-alias subl start-sublimeAsAdministrator
}

$githubDesktopPath = "$env:LOCALAPPDATA\GitHub\shell.ps1";
if (Test-Path $githubDesktopPath){
	. (Resolve-Path $githubDesktopPath)	
}

$poshGitPath = "$env:github_posh_git\profile.example.ps1";
if (Test-Path $poshGitPath){
	. (Resolve-Path $poshGitPath)	
}
