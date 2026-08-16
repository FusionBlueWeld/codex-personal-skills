$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$skillDestination = Join-Path $env:USERPROFILE ".codex\skills"
$skillNames = @(
    "mobishiro-slides",
    "flat-noline"
)

New-Item -ItemType Directory -Path $skillDestination -Force | Out-Null

foreach ($skillName in $skillNames) {
    $source = Join-Path $repoRoot $skillName
    $destination = Join-Path $skillDestination $skillName

    if (-not (Test-Path -LiteralPath $source -PathType Container)) {
        throw "Skill folder was not found: $source"
    }

    New-Item -ItemType Directory -Path $destination -Force | Out-Null
    Get-ChildItem -LiteralPath $source -Force | ForEach-Object {
        Copy-Item -LiteralPath $_.FullName -Destination $destination -Recurse -Force
    }

    Write-Host "Installed $skillName -> $destination"
}

Write-Host "Restart Codex to load the skills."
