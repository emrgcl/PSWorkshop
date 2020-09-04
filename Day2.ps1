# Working with Arrays 

$EmptyArray = @()

# Array with 4 objects
$Numbers = 2,3,4,5

# accessing / listing members of arrray
Get-Member -InputObject $Numbers

#adding objects to array
$Numbers = $Numbers + 6
$Numbers += 6

#$numbers.Add(6) wont work

# Number of objects in array
$Numbers.Count

# First and Last objects
$Numbers[0]
$Numbers[-1]

# Finding index of an object
$Numbers.IndexOf(3)


# Arrays of fixed type

# an object array accepts any object
$Numbers += "Halil"
# fixed type arrays only accepts correct types
[int32[]]$IntegerArray = @()
$IntegerArray += 'Halil'
$IntegerArray += 32
get-member -InputObject $IntegerArray

# Powershell can access FCL (Framework Class Library)
[System.Collections.ArrayList]$ArrayList = @()
$ArrayList.Add('Emre')
$ArrayList.Add('Levent')

# add but dont return anything
[void]$ArrayList.Add('Halil')
$ArrayList.Add('Yunus') | Out-Null

get-member -InputObject $ArrayList