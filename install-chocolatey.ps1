# Check if the script is running with administrative privileges
function Test-IsAdmin {
    $isAdmin = $false
    try {
        $currentUser = [System.Security.Principal.WindowsIdentity]::GetCurrent()
        $currentPrincipal = [System.Security.Principal.WindowsPrincipal]$currentUser
        $isAdmin = $currentPrincipal.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)
    } catch {
        $isAdmin = $false
    }
    return $isAdmin
}

if (-not (Test-IsAdmin)) {
    # Relaunch the script with administrative privileges
    Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# Set security protocol and install Chocolatey
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
Set-ExecutionPolicy Bypass -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
