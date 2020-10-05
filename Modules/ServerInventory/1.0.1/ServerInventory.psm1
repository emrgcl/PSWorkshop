Function Get-ServerInfo {
    [CmdletBinding()]
    Param(
    
    [Parameter(Mandatory=$true,ValueFromPipelineByPropertyName = $true,ValueFromPipeLine = $True)]
    [Alias('ServerName','Node','DNS','NetbiosComputerName')]
    [string[]]$ComputerName
    
    ) 
     
    Process 
    {    
    
        $ScriptBlock = {
    
        [PSCustomObject]@{
    
        'OSName' = (Get-WmiObject -Class Win32_operatingSystem).Caption
        'MemoryGB' = [math]::Round(((Get-WmiObject -Class Win32_operatingSystem).TotalVisibleMemorySize * 1024 / 1GB),2)
        'NumberOfCpu' = (Get-WmiObject -Class win32_computerSystem).NumberOfLogicalProcessors
        'WindowsDirectory' = (Get-WmiObject -Class Win32_operatingSystem).WindowsDirectory
        }    
    
        }
        Write-Verbose "Collected OS Information from Servers $($Computername -Join ',')"
        Invoke-Command -ScriptBlock $ScriptBlock -ComputerName $ComputerName
    
    }
    }
    
    Function Invoke-SuperRiskyAction {
    
    [CmdletBinding(
    
    SupportsShouldProcess=$true,
    ConfirmImpact='Medium'
    
    
    )]
    Param(
    
    [string[]]$ComputerName
    
    )
    
    
    
    Foreach ($Computer in $ComputerName) {
    
    
    
       if ($pscmdlet.ShouldProcess($Computer, "Deleting super risky objects"))
       {
       
       # New-Item -Path C:\temp -Name 'KSFolder' -ItemType Directory | out-null
    
        # return an object
    
        [PSCustomOBject]@{
        ComputerName = $Computer
        OperationStatus = 'DeletedEverything!'
        }
     
        
       }
    }
    }