
Find-module posh-git | install-module

$MyPath = $env:Path + ";" + "${env:ProgramFiles}\git\cmd"
[Environment]::SetEnvironmentVariable("Path", $($MyPath ), "Machine")

$env:Path = $MyPath

Import-Module posh-git

$mod_version = Get-Module -name posh-git | select version
$mod_version = $mod_version.Version.ToString()

& "C:\Program Files\WindowsPowerShell\Modules\posh-git\$mod_version\Install.ps1"

. $profile
 #adding a comment

