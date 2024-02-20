$header= "date","time","12h","x","packet","y","z","proto","snd","ip","other"
$log= import-csv C:\dnsLog\dns.log -Delimiter 0x0020 -Header $header
$log.ip | group-object | Select Name, Count
