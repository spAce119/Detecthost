$subnet = Read-Host -Prompt "Bir IP gir 192.168.1.0/24 gibi "

$subnetedit = $subnet -replace '/\d+$' -replace '\.0$'

for ($i = 0;$i -le 255 ; $i++){
    $IP_Address = "$subnetedit.$i"
    if(Test-Connection -count 1 -comp $IP_Address -quiet){
        Write-Host -ForegroundColor Green "[+] Aktif olan IP" $IP_Address 
    }else {
        continue
    }
}

# Created by spAce 

