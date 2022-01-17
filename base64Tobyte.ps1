$logo = '
        Wirte By komomon
        https://github.com/komomon
'
Write-Host $logo
$payload = read-host "CS payload"
$string = ''
$s = [Byte[]]$var_code = [System.Convert]::FromBase64String($payload)
$s|foreach { $string = $string + $_.ToString()+','}
Write-Host ''
write-host 'bytes:'$string.Substring(0,$string.Length-1)
$string.Substring(0,$string.Length-1) |Out-File result.txt
Write-Host "Write to result.txt finished! "


