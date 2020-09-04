# Lets have some objects : )

$Objects = Get-ChildItem -Path C:\Temp -File

<#

-gt Greater than
-eq Equals
-ge Greater or equal
-le less or equal

#>

foreach ($item in $Objects)
{
    if ($item.CreationTime -gt (Get-Date).AddDays(-2)) {
    
    $item
    
    }
}

# Pipeline '|' aka Special Foreach 

# filtering in pipeline where-object/Where/?

$Objects | Where-Object -FilterScript { $PSItem.CreationTime -lt (Get-Date).AddDays(-2)} | Remove-Item
$Objects | Where {$_.CreationTime -gt (Get-Date).AddDays(-2) }
$Objects | ? {$_.CreationTime -gt (Get-Date).AddDays(-2) }

# Parameter Binding
dir C:\Temp
get-childitem C:\Temp

Get-command -Name Get-childitem -Syntax

#pipeline expects thje filter to return $true
$Objects | Where {$true}

# foreach-object

$Objects | ForEach-Object { Split-Path -Path $_.fULLnAME -Leaf}

