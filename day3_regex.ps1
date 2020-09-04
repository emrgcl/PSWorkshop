# -Match operator is used to catch the regular expression formula

'Trabzon is a beautiful and green city.' -match 'green'
'Trabzon is a beautiful and green city. The plate Number:61' -match 'y\.'
'Trabzon is a beautiful and green city. The plate Number:61' -match 'Number:\d\d'

#Grouping = Parsing - () Powershell gives numbers as group names by default
'Trabzon is a beautiful and green city. The plate Number:61' -match 'Number:(\d\d)'

# Named groups makes life easier (?<GroupName>
'Trabzon is a beautiful and green city. The plate Number:61' -match '<All>Number:(?<PlateNumber>\d\d)'

# Groups can be nested
'Trabzon is a beautiful and green city. The plate Number:61' -match '(?<All>Number:(?<PlateNumber>\d\d))'

# repetetion 
'Trabzon is a beautiful and green city. The plate Number:61' -match 'Number:\d\d'
'Trabzon is a beautiful and green city. The plate Number:61' -match 'Number:(\d{2})'

# http or https

'http:\\www.google.com' -match '(http)|(https)'
'http:\\www.google.com' -match '^https?'

$Matches