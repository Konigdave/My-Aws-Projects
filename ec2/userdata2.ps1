<powershell>
# Download Apache HTTP Server
$downloadUrl = "https://www.apachelounge.com/download/VS17/binaries/httpd-2.4.65-250724-win64-VS17.zip"
$zipPath = "C:\apache.zip"
$installPath = "C:\Apache24"

# Download Apache ZIP
$webClient = New-Object System.Net.WebClient
$webClient.DownloadFile($downloadUrl, $zipPath)

# Extract to install path
Expand-Archive -Path $zipPath -DestinationPath "C:\" -Force

# Cleanup ZIP
Remove-Item $zipPath

# Install Apache as a service
& "$installPath\bin\httpd.exe" -k install

# Start the service
Start-Service -Name "Apache2.4"

# Set startup type to Automatic
Set-Service -Name "Apache2.4" -StartupType Automatic
</powershell>
