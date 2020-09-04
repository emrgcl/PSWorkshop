# ScriptBlock Type
$ScriptBlock = {
    'Trabzona selamlar!'
    gci
    'Halil abim nasıl?'              
}
$ScriptBlock.Invoke()
Get-command -Name Where-object -Syntax
<#

Where-Object [-FilterScript] <scriptblock> [-InputObject <psobject>] [<CommonParameters>]

#>


<#
Hashtable - Key,Value Pair

@{

    Key1 = Value1
    Key2 = Value2

}


#>
$OSInfo = @{

    'OSName' = 'Windows 10 Professional'
    'MemoryGB' = 16
    'NumberCPU' = 4
    'Windir' = 'C:\windows'


}
#accessing hashtable keys and values
$OSInfo.OSName
$OSInfo['OSName']

get-member -InputObject $OSInfo

#check if hashtable contains a key
$OSInfo.Contains('OSName')

$OSInfo.Keys

#Creating dynamic Hashtables 

$OSInfo = @{

    'OSName' = (get-wmiobject -Class win32_operatingsystem).Caption
    'MemoryGB' = (get-wmiobject -Class win32_operatingsystem).TotalVisibleMemorySize
    'NumberCPU' = (get-wmiobject -class win32_computersystem ).NumberOfLogicalProcessors
    'Windir' = (get-wmiobject -Class win32_operatingsystem).WindowsDirectory


}

<#


PS C:\Temp> $OSInfo

Name                           Value                                                                                                                                      
----                           -----                                                                                                                                      
Windir                         C:\Windows                                                                                                                                 
NumberCPU                      8                                                                                                                                          
OSName                         Microsoft Windows 10 Enterprise                                                                                                            
MemoryGB                       25164268 


#>

$OSInfo = [PSCustomObject]@{

    'OSName' = (get-wmiobject -Class win32_operatingsystem).Caption
    'MemoryGB' = (get-wmiobject -Class win32_operatingsystem).TotalVisibleMemorySize
    'NumberCPU' = (get-wmiobject -class win32_computersystem ).NumberOfLogicalProcessors
    'Windir' = (get-wmiobject -Class win32_operatingsystem).WindowsDirectory


}

$OSInfo | Get-Member

# creating a report for expired certificates

$CustomColumn = @{

Name = 'DaysToExpire'
Expression = {

    $DaysToExpire = [Math]::Round(($_.NotAfter - (Get-Date)).TotalDays,2)
    if($DaysToExpire -eq 0) {
    
    'Expired'
    
    } else {
    
    $DaysToExpire

    }

}

}

gci -Path Cert:\LocalMachine\My | Select-Object -Property Thumbprint,$CustomColumn