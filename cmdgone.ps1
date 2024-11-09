while ($true) {
    Stop-Process -Name "cmd"
    Start-Sleep -seconds 3
}