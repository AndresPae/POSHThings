#Requires -Module ActiveDirectory
#Requires -Version 5

# Sets OperatingSystem attribute value to "NOTKNOWN" for systems which have it clear.
$DC='YOURDCNAME FQDN'

import-module ActiveDirectory
get-ADcomputer -server $DC  -Properties name,operatingsystem -filter * | where-object  -property operatingsystem -eq $null |set-adcomputer -OperatingSystem 'NOTKNOWN' 
