## Reads IP list from c:\temp\list.txt , assumes IP aadress per line  and returns it with names to console
## if not resolvable writes it
$ips = get-content C:\temp\list.txt
foreach ($ip in $ips) {
    try {
    $Name=[System.Net.Dns]::GetHostEntry($ip).HostName
    write-host $IP,$NAme
    } catch {
    write-host $IP,"non resolvable from DNS"    
    }
}
