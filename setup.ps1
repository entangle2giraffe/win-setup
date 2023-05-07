# Windows Setup by entangle2giraffe

# Get winget version
$wingetVersion = winget --version
Write-Host "Winget Version: $wingetVersion"

$apps = @(
    "LibreWolf.LibreWolf",
    "Bitwarden.Bitwarden",
    "Neovim.Neovim",
    "Hibbiki.Chromium",
    "VideoLAN.VLC",
    "Git.Git",
    "Discord.Discord.Canary",
    "CPUID.HWMonitor",
    "Valve.Steam",
    "Maxon.CinebenchR23",
    "7zip.7zip"
)

# Install applications using winget
foreach ($app in $apps) {
    try {
        winget install -e --id $app
        Write-Host "Installed: $app"
    }
    catch {
        Write-Host "Failed to install: $app"
        Write-Host "Error: $_"
    }
}

# Download BloatyNosyAppBETA.zip using Invoke-WebRequest
$downloadUrl = 'https://github.com/builtbybel/BloatyNosy/releases/download/0.70.0/BloatyNosyAppBETA.zip'
Invoke-WebRequest -Uri $downloadUrl -OutFile 'BloatyNosyAppBETA.zip'

# Exit the script
Exit