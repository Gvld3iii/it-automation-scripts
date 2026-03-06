# Simulated New User Onboarding Script

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $scriptRoot
$logDir = Join-Path $projectRoot "logs"
$dataDir = Join-Path $projectRoot "data"
$logFile = Join-Path $logDir "onboarding-log.txt"
$userFile = Join-Path $dataDir "users.csv"

$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

$username = Read-Host "Enter new employee username"
$department = Read-Host "Enter department"

if (-not (Test-Path $logDir)) {
    New-Item -ItemType Directory -Path $logDir -Force | Out-Null
}

if (-not (Test-Path $dataDir)) {
    New-Item -ItemType Directory -Path $dataDir -Force | Out-Null
}

if (-not (Test-Path $userFile)) {
    "timestamp,username,department,status" | Out-File -FilePath $userFile -Encoding utf8
}

Write-Host "Simulating user account creation..."

$homeFolder = Join-Path $projectRoot "CompanyUsers\$username"
New-Item -ItemType Directory -Path $homeFolder -Force | Out-Null

"$timestamp,$username,$department,Created" | Add-Content -Path $userFile
"$timestamp - Simulated onboarding for user $username in department $department" | Add-Content -Path $logFile

Write-Host "Created simulated home folder: $homeFolder"
Write-Host "Updated user inventory: $userFile"
Write-Host "Logged onboarding event: $logFile"
Write-Host "User onboarding simulation complete."