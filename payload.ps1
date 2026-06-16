$result = "CLICKFIX_T1620_" + $env:COMPUTERNAME + "_" + (Get-Date -Format "yyyyMMdd_HHmmss")
try{
    $wc = New-Object System.Net.WebClient
    $wc.UploadString("http://localhost:8080/ack", $result)
    Write-Host "[+] H3-A callback sent" -ForegroundColor Green
} catch {
    Write-Host "[-] H3-A callback failed: $($_.Exception.Message)" -ForegroundColor Red
}
