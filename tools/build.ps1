# EmpireCraft Build Script

$ProjectRoot = Split-Path $PSScriptRoot -Parent

$BuildFolder = Join-Path $ProjectRoot "build"
$ReleaseFolder = Join-Path $ProjectRoot "releases"

$Version = "0.1.0-alpha"

$ZipName = "EmpireCraft-$Version.zip"
$AddonName = "EmpireCraft-$Version.mcaddon"

# Remove previous build
if (Test-Path $BuildFolder) {
    Remove-Item $BuildFolder -Recurse -Force
}

New-Item -ItemType Directory -Path $BuildFolder | Out-Null

Copy-Item "$ProjectRoot\BP" $BuildFolder -Recurse
Copy-Item "$ProjectRoot\RP" $BuildFolder -Recurse

if (!(Test-Path $ReleaseFolder)) {
    New-Item -ItemType Directory -Path $ReleaseFolder | Out-Null
}

$ZipPath = Join-Path $ReleaseFolder $ZipName

if (Test-Path $ZipPath) {
    Remove-Item $ZipPath
}

Compress-Archive `
    -Path "$BuildFolder\*" `
    -DestinationPath $ZipPath

Rename-Item `
    $ZipPath `
    $AddonName

Remove-Item $BuildFolder -Recurse -Force

Write-Host ""
Write-Host "====================================="
Write-Host " EmpireCraft Build Complete!"
Write-Host "====================================="
Write-Host ""
Write-Host "Output:"
Write-Host "$ReleaseFolder\$AddonName"