
CommandLine                                                                
-----------                                                                
dir                                                                        
ls                                                                         
gci                                                                        
Get-Alias                                                                  
Get-Alias -Name dir                                                        
Get-Command -Name Get-Alias -Syntax                                        
Get-Alias -Name 'dir','ls'                                                 
get-command -Noun alias                                                    
gci -Path C:\Temp\DEneme.ps1                                               
gci -name C:\Temp\DEneme.ps1                                               
gci -Path C:\Temp\DEneme.ps1                                               
gci -Path C:\Temp\DEneme.ps1 | fl -Property  *                             
gci -Path C:\Temp\DEneme.ps1 | Gm                                          
dir                                                                        
gci -Path .\powershell.exe                                                 
gci -Path .\powershell.exe | gm                                            
$fileinfo = gci -Path .\powershell.exe                                     
$fileinfo.Name                                                             
$fileinfo.Name | gm                                                        
$fileinfo.Name                                                             
$fileinfo.Name.TrimStart(2)                                                
$fileinfo.Name.ToUpper()                                                   
$fileinfo.CreationTime                                                     
$fileinfo.CreationTime | gm                                                
$fileinfo.CreationTime.AddDays(1)                                          
Get-Date                                                                   
$fileinfo.CreationTime                                                     
$fileinfo.CreationTime.AddDays(1,2)                                        
$fileinfo.CreationTime.AddDays(1.2)                                        
Get-Date                                                                   
$fileinfo.Name                                                             
$fileinfo.Name.TrimStart('p')                                              
Get-WmiObject -Class 'win32_operatingsystem'                               
$OperatingSystem = Get-WmiObject -Class 'win32_operatingsystem'            
$OperatingSystem | Get-Member                                              
cls                                                                        
cd c:\                                                                     
cls                                                                        
'Emre'                                                                     
'Emre' | Get-Member                                                        
Write-output -InputObject 'Emre'                                           
'Emre'                                                                     
$emre | Get-Member                                                         
$Name | Get-Member                                                         
$Name = 'Emre'                                                             
$Name | Get-Member                                                         
$Name.GetType()                                                            
#Literal String...                                                         
#Expandable String...                                                      
$Message                                                                   
Write-Output -InputObject $Message                                         
$Service = Get-Service -Name 'Spooler'                                     
$Service                                                                   
$Message = 'I will stop Service $Service.Name'                             
$Message                                                                   
$Message = "I will stop Service $Service.Name"                             
$Message                                                                   
$Message = "I will stop Service $($Service.Name)"                          
$Message                                                                   
$Age = 43                                                                  
$somevariable = 43                                                         
$somevariable = get-service -Name Spooler                                  
$somevariable.Getype()                                                     
$somevariable.Gettype()                                                    
$somevariable = 'Emre'                                                     
$somevariable.Gettype()                                                    
[int32]$Age = 43...                                                        
$Age.GetType()                                                             
[int32]$Age = '43'...                                                      
$Age.GetType()                                                             
[int32]$Age = 'asdasdasd'...                                               
$Year = [int32]'1995'                                                      
$Year.GetType()                                                            
$Year = 'Erme'                                                             
$Year.GetType()                                                            
$Age.GetType()                                                             
$Age | Get-Member                                                          
$Now = Get-Date                                                            
$Now | Get-Member                                                          
Get-Date - $Now                                                            
(Get-Date) - $Now                                                          
$TimeDifference = (Get-Date) - $Now                                        
$TimeDifference | Get-Member                                               
$TimeDifference = (Get-Date) - $Now                                        
$LogMessage = "Script ended. Duration: $($TimeDifference.Seconds) seconds."
$LogMessage                                                                
$TimeDifference.TotalDays = 5                                              
[System.Math]::PI                                                          
$Result = 389 / 5                                                          
$Result                                                                    
389345345 / 5                                                              
3893453453 / 5                                                             
3893453453 / 5.1                                                           
$Result.GetType()                                                          
[math]::Round($Result,2)                                                   
[math]::Round($Result,3)                                                   
$Result = 3893453453 / 5.1                                                 
[math]::Round($Result,3)                                                   
[math]::Round($Result,2)                                                   
[math] | Get-Member -Static                                                
[string] | Get-Member                                                      
[string] | Get-Member -Static                                              
[string]::IsNullOrEmpty('')                                                
[string]::IsNullOrEmpty($null)                                             
Get-History                                                                


