# Functions



<#
.Synopsis
   Creates messages string based on Name.
.DESCRIPTION
   Creates messages string based on Name.
.EXAMPLE
   PS C:\Temp> New-Message -Name halil -Verbose

   VERBOSE: Script started at: 9/2/2020 3:47:19 PM
   VERBOSE: Performing the operation "Generating message" on target "halil".
   Hello halil
   VERBOSE: Script ended at: 9/2/2020 3:47:19 PM
#>
Function New-Message {

[CmdletBinding(SupportsShouldProcess=$true,ConfirmImpact='Medium')]

Param(
#[Parameter(Mandatory = $true)]
[ValidateSet("Emre", "Halil", "Olcay")]
[string]$Name

)

Write-Verbose "Script started at: $(Get-Date -Format G)"

        if ($pscmdlet.ShouldProcess($Name, "Generating message"))
        {
        
            Write-output "Hello $Name"
        
        }

Write-Verbose "Script ended at: $(Get-Date -Format G)"

}

$NewMessage = New-Message -Name 'Halil' -Verbose