[CmdletBinding()]
param()

$ConfirmPreference = 'Medium'
$Global:VerbosePreference = 'Continue'

# Setting variable in Script Scope
$Message = 'Script Scope'
Write-Verbose $Message

Function Set-ScopeMessage {
    # lets see if we can access to the variable in script scope
    Write-Verbose $Message

    # lets change the variable in the script scope
    $Script:Message = 'Function Scope'
    Write-Verbose $Message

}

#run the function which writes $message in function scope
Set-ScopeMessage

Write-Verbose $Message
