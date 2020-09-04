[CmdletBinding()]
Param(

    [string[]]$Services = 'Spooler'

)
Function Write-Log {

[CmdLetBinding()]
Param(

[Parameter(Mandatory = $true)]
[string]$Message,
[ValidateSet("Error", "Information", "Verbose")]
[string]$MessageType

)

"[$(Get-Date -Format G)][$MessageType] $Message"

}


# on error resume next
$ErrorActionPreference = 'SilentlyContinue'
throw "hedeohodo"
#(Get-Service -Name Spooler).Stop()

Get-Service -Name $Services
if (!$?) {

Write-Log -Message "An error occured" -MessageType Error

} else {

Write-Log -Message "test operation is successfull" -MessageType Information

}