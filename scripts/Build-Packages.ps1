[CmdletBinding()]
param(
    [string]$Version = '3.1.0',
    [string]$OutputDirectory = 'dist'
)

# Standalone builder for the FrostVale_ModPack_3 Thunderstore zip from a clone of
# THIS repo only. It does not contact Thunderstore and does not change versions;
# it packages whatever is currently staged at the repo root (manifest.json,
# icon.png, README, CHANGELOG, LICENSE, plugins/, docs/, assets/).
#
# The authoritative builder is P:\valheim\scripts\Build-Modpacks.ps1, which
# resolves latest versions and regenerates manifest.json + dependencies/frostvale.txt.

$ErrorActionPreference = 'Stop'
$Root = Split-Path -Parent $PSScriptRoot
$OutputPath = Join-Path $Root $OutputDirectory

$manifestPath = Join-Path $Root 'manifest.json'
if (-not (Test-Path -LiteralPath $manifestPath)) {
    throw "manifest.json not found at repo root. Run P:\valheim\scripts\Build-Modpacks.ps1 first."
}

# Keep manifest version in sync with the requested release version.
$manifest = Get-Content -LiteralPath $manifestPath -Raw | ConvertFrom-Json
$manifest.version_number = $Version
$manifest | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $manifestPath -Encoding ascii

if (-not (Test-Path -LiteralPath $OutputPath)) {
    New-Item -ItemType Directory -Path $OutputPath | Out-Null
}

$zipPath = Join-Path $OutputPath "FrostVale_ModPack_3-$Version.zip"
if (Test-Path -LiteralPath $zipPath) { Remove-Item -LiteralPath $zipPath -Force }

$exclude = @('.git', '.gitignore', 'dist', 'packages', 'scripts', 'dependencies')
$items = @(Get-ChildItem -LiteralPath $Root -Force |
    Where-Object { $exclude -notcontains $_.Name -and $_.Extension -ne '.zip' })
if ($items.Count -eq 0) { throw "No package files found in $Root" }

Compress-Archive -LiteralPath @($items.FullName) -DestinationPath $zipPath -CompressionLevel Optimal
Write-Host "Created $zipPath"
