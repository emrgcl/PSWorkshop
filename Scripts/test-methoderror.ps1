# stop error

try {

Get-Service -Name 'loıodjwıljedolwjed' -ErrorAction Stop

}

Catch [ServiceCommandException] {


"Service Command failed to run: Error Message: $($Error[0].Exception.Message)"

}

Catch {


    "error occured: Error Message: $($Error[0].Exception.Message)"

}


Finally {

   "Finally block always runs."

}


