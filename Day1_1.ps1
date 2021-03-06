
CommandLine                                                                                                             
-----------                                                                                                             
function Get-PSFUserChoice...                                                                                           
function Get-PSFUserChoice...                                                                                           
Get-PSFUserChoice -Options 'Name1','Name2','name3' -Caption 'Installation Options' -Message 'please choose from names'  
Get-PSFUserChoice -Options 'Emre','Ayse','Mehmet' -Caption 'Installation Options' -Message 'please choose from names'   
$Home ='c:\'                                                                                                            
$true = $false                                                                                                          
'domain.com'...                                                                                                         
[regex]::Escape('Domain.com')                                                                                           
[regex]::Escape('Domain.com') -join ...                                                                                 
[regex]::Escape('Domain.com') -join '|'                                                                                 
$DomainPattern = @('domain.com', 'domain.co.uk', 'domain.de').ForEach{ [regex]::Escape($_) } -join '|'                  
$DomainPattern                                                                                                          
cls                                                                                                                     
ipconfig /all                                                                                                           
Get-Verb                                                                                                                
cls                                                                                                                     
Get-Service -Name Spooler                                                                                               
$Service = Get-Service -Name Spooler                                                                                    
$Service                                                                                                                
$Service.Status                                                                                                         
$Service.DisplayName                                                                                                    
$Service | Format-List -Property *                                                                                      
$Service | Get-Member                                                                                                   
gci                                                                                                                     
cd c:\                                                                                                                  
gci                                                                                                                     
gci -Name temp                                                                                                          
cd C:\Temp\                                                                                                             
gci -Name .\install.log                                                                                                 
gci -Name .\install.log | fl -Property *                                                                                
gi -Name .\install.log | fl -Property *                                                                                 
dir                                                                                                                     
gci -Name test.html                                                                                                     
gci -Name test.html | fl                                                                                                
gci -Name test.html | fl -Property *                                                                                    
Get-Help -Name Get-Service                                                                                              
get-help -Name Get-Service -Full                                                                                        
get-help -Name Get-Service -Example                                                                                     
get-command -Name Get-Service -Syntax                                                                                   
get-command -Name Get-Service -ParameterName RequiredServices                                                           
get-help -Name Get-Service -Parameter RequiredServices                                                                  
get-help -Name Get-Service -ShowWindow                                                                                  
Get-Help -Name about_*                                                                                                  
get-help -Name About_regex                                                                                              
get-help -name About_                                                                                                   
cls                                                                                                                     
Get-PSDrive                                                                                                             
cd cert:                                                                                                                
dir                                                                                                                     
cd .\\LocalMachine\                                                                                                     
dir                                                                                                                     
cd .\My\                                                                                                                
dir                                                                                                                     
set-location cert:                                                                                                      
Get-PSDrive                                                                                                             
cd hklm:                                                                                                                
dir                                                                                                                     
cd .\SOFTWARE\                                                                                                          
dir                                                                                                                     
cd .\Microsoft\                                                                                                         
dir                                                                                                                     
Get-PSDrive                                                                                                             
dir env:                                                                                                                
$env:SystemRoot                                                                                                         
$Env:COMPUTERNAME                                                                                                       
Get-History                                                                                                             
get-command -Noun History                                                                                               
Get-History | Select-Object -Property CommandLine                                                                       
cd C:\Temp\                                                                                                             
md HVKKPSWS                                                                                                             
cd .\HVKKPSWS\                                                                                                          


