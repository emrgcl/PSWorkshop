# Powershell modules stays on 3 different paths.
$env:PSModulePath -split ';'

# Intalling modules from internet.
## We can search for modules using Find-Module cmdlet
Find-Module -Name Logging
## modules are installed using Install-module cmdlet
Install-module -Name Logging

## Lets see if the module exists under program files
gci "$(($env:PSModulePath -split ';')[2])\logging" -Recurse

## To be able use module we need to import
Import-Module -Name Logging

## lets find out avialble cmdlets/functions in the module
get-command -Module Logging

## to uninstall module
Uninstall-Module -Name Logging -Force