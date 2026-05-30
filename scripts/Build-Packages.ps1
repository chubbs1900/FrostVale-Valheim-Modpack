[CmdletBinding()]
param(
    [string]$SoloVersion = '3.0.6',
    [string]$ClientVersion = '3.0.6',
    [string]$ServerVersion = '1.0.0',
    [string]$OutputDirectory = 'dist'
)

$ErrorActionPreference = 'Stop'
$Root = Split-Path -Parent $PSScriptRoot
$OutputPath = Join-Path $Root $OutputDirectory

function Read-DependencyList {
    param([string]$Path)

    if (-not (Test-Path -LiteralPath $Path)) {
        throw "Missing dependency list: $Path"
    }

    return @(Get-Content -LiteralPath $Path |
        ForEach-Object { $_.Trim() } |
        Where-Object { $_ -and -not $_.StartsWith('#') })
}

function Write-ModpackManifest {
    param(
        [string]$PackageDirectory,
        [string]$Name,
        [string]$Version,
        [string]$Description,
        [string[]]$Dependencies
    )

    [ordered]@{
        name = $Name
        version_number = $Version
        website_url = 'https://github.com/chubbs1900/FrostVale-Valheim-Modpack'
        description = $Description
        dependencies = @($Dependencies)
    } | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath (Join-Path $PackageDirectory 'manifest.json') -Encoding ascii
}

function New-ModpackZip {
    param(
        [string]$PackageDirectory,
        [string]$Name,
        [string]$Version
    )

    if (-not (Test-Path -LiteralPath $OutputPath)) {
        New-Item -ItemType Directory -Path $OutputPath | Out-Null
    }

    $zipPath = Join-Path $OutputPath "$Name-$Version.zip"
    if (Test-Path -LiteralPath $zipPath) {
        Remove-Item -LiteralPath $zipPath -Force
    }

    $items = @(Get-ChildItem -LiteralPath $PackageDirectory -Force |
        Where-Object { $_.Extension -ne '.zip' })
    if ($items.Count -eq 0) {
        throw "No package files found in $PackageDirectory"
    }

    Compress-Archive -LiteralPath @($items.FullName) -DestinationPath $zipPath -CompressionLevel Optimal
    return $zipPath
}

$packages = @(
    [pscustomobject]@{
        Name = 'FrostVale_ModPack_3'
        Version = $SoloVersion
        Directory = Join-Path $Root 'packages\solo\FrostVale_ModPack_3'
        Dependencies = Join-Path $Root 'dependencies\solo.txt'
        Description = 'Balrond-first solo Valheim pack with QoL, conversion-lite progression, RtDOcean ocean life, UI helpers, and FrostVale world-gen tweaks.'
    },
    [pscustomobject]@{
        Name = 'FrostVale_ClientPack_3'
        Version = $ClientVersion
        Directory = Join-Path $Root 'packages\client\FrostVale_ClientPack_3'
        Dependencies = Join-Path $Root 'dependencies\client.txt'
        Description = 'FrostVale multiplayer player pack with Balrond-first gameplay, QoL, RtDOcean ocean life, VOIP, and required networking helpers.'
    },
    [pscustomobject]@{
        Name = 'FrostVale_ServerPack_3'
        Version = $ServerVersion
        Directory = Join-Path $Root 'packages\server\FrostVale_ServerPack_3'
        Dependencies = Join-Path $Root 'dependencies\server.txt'
        Description = 'Balrond-first Valheim server pack with QoL, conversion-lite progression, RtDOcean ocean life, Discord operations, networking helpers, and FrostVale world-gen tweaks.'
    }
)

foreach ($package in $packages) {
    $deps = Read-DependencyList -Path $package.Dependencies
    Write-ModpackManifest -PackageDirectory $package.Directory -Name $package.Name -Version $package.Version -Description $package.Description -Dependencies $deps
    $zip = New-ModpackZip -PackageDirectory $package.Directory -Name $package.Name -Version $package.Version
    Write-Host "Created $zip"
}
