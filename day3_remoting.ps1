$Servers = 'emreg-web01','emreg-web02','emreg-web03'

# wmi ccmdlets uses rpc (Windows 20102: 135, 49152-65535 Windows Older: 1025-5000)
Get-WmiObject -Class win32_operatingsystem -ComputerName $Servers

# cim cmdletsts uses wsman (http 5985, https 5986)
Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName $Servers

# use cimsessions not to cause new connection attempts to same servers espcially at scale like 1000s
$cimsessions = New-CimSession -ComputerName $Servers
Get-CimInstance -ClassName Win32_operatingSystem -CimSession $cimsessions
Get-CimInstance -ClassName Win32_Computersystem -CimSession $cimsessions
Remove-CimSession -CimSession $cimsessions


$RemoteScript = { 

    [PSCustomObject]@{

    OS = (Get-WmiObject -Class Win32_OperatingSystem).Caption
    RamGB =  [math]::Round((Get-WmiObject -Class Win32_OperatingSystem).TotalVisibleMemorySize * 1024 / 1gb)
    CPU = (Get-WmiObject -Class win32_COmputersystem).NumberOfLogicalProcessors

    }
    
}

$Session = New-PSSession -ComputerName $Servers

$Result = Invoke-Command -Session $Session -ScriptBlock $RemoteScript

# Persistent vs TEmporary sessions

$Servers = '1','3','1000'

foreach ($Server in $Servers) {

    #temporary session
    Invoke-Command -
    ComputerName $Server -ScriptBlock {'something something'}

}

# use persistent session for higher counts of servers.
$sessions = New-PSSession -ComputerName $Servers

Invoke-Command -Session $sessions