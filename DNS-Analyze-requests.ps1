##https://tavalineinfra.wordpress.com/2024/02/13/quick-and-dirty-dns-query-analyzer/
## You may be have required to ajust headers row count as looks like DNS logs are little different on different OS versions/locales 
$header= "date","time","12h","x","packet","y","z","proto","snd","ip","other"
$log= import-csv C:\dnsLog\dns.log -Delimiter 0x0020 -Header $header
$log.ip | group-object | Select Name, Count
