# functions that supports pipeline operation and also array parameter.

Function Invoke-ServerOperation {

    [CmdletBinding()]
    Param(
    
    [Parameter(ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)]
    [Alias('Node','DNSHostname','NetbiosComputerName','DisplayName')]
    [string[]]$ServerName
    
    )

    Begin {
    
     Write-Verbose "Script Started at $(get-date -Format G)"
    
    }

    Process {

        Foreach ($Server in $ServerName) {

        "Invoking operation on Server : $Server"

        }
    
    }

    End {
        Write-Verbose "Script ENDED at $(get-date -Format G)"
    }

}

$Servers = Import-Csv -Path C:\Temp\HVKKPSWS\ServerList.csv

$servers | Invoke-ServerOperation -Verbose
'Server1','Server2','server3' | Invoke-ServerOperation
Invoke-ServerOperation -ServerName 'Server1','server2'
Invoke-ServerOperation -Node 'Server1'