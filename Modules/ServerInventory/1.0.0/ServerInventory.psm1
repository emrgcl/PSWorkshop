Function Get-ServerInfo {

[CmdletBinding()]
Param()

    [PSCustomObject]@{

    OS = (Get-WmiObject -Class Win32_OperatingSystem).Caption
    RamGB =  [math]::Round((Get-WmiObject -Class Win32_OperatingSystem).TotalVisibleMemorySize * 1024 / 1gb)
    CPU = (Get-WmiObject -Class win32_COmputersystem).NumberOfLogicalProcessors

    }


}
