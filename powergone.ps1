$win = $PID

while ($true) {
    $others = Get-Process powershell | Where-Object {$_.Id -ne $win}
    foreach ($process in $others) {
        $process.Kill()
    }
        Start-Sleep -seconds 4
}