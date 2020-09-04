# Certificates eligible for HTTP Wsman endpoint
Get-ChildItem Cert:\LocalMachine\My | Where {$_.hasprivatekey -and $_.EnhancedKeyUsageList.FriendlyName -contains 'Server Authentication'} |Format-List thumbprint,EnhancedKeyUsageList,DNSNameList,Issuer 

# create listener with the thumbprint of the related Certificate
$SSLCertThumbprint = 'ED636E4D652C5DA05E51A9D1812F73418CBFF87D'
New-Item -Path WSMan:\localhost\Listener -ItemType Listener -Address * -Transport HTTPS -CertificateThumbPrint $SSLCertThumbprint

# Create new HTTPS Rule to allow communication

New-NetFirewallRule -Name WINRM-HTTPS-In-TCP  -Protocol TCP -LocalPort 5986 -Profile Any -DisplayName 'Windows Remote Management (HTTPS-In)'  -Description 'Inbound rule for Windows Remote Management via WS-Management. [TCP 5986]'

# Confirm successful creation
Get-NetFirewallRule -Name WINRM-HTTP-In-TCP, WINRM-HTTPS-In-TCP | Select-Object –Property Name, DisplayName, Profile
