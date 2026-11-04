# SPDX-License-Identifier: MIT
[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [ValidateSet('Thin', 'Max')]
    [string]$Variant,

    [Parameter(Mandatory)]
    [ValidatePattern('^[A-Za-z0-9][A-Za-z0-9._-]*$')]
    [string]$Version
)

$ErrorActionPreference = 'Stop'
$projectRoot = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..'))
$sourceDir = Join-Path $projectRoot "models/$Variant"
if (-not (Test-Path -LiteralPath $sourceDir -PathType Container)) {
    throw "Missing STL input folder: $sourceDir"
}
$models = @(Get-ChildItem -LiteralPath $sourceDir -File -Recurse |
    Where-Object { $_.Extension -ieq '.stl' })
if ($models.Count -eq 0) {
    throw "No STL files found for $Variant. An empty model archive will not be created."
}
if (@($models | Where-Object Length -eq 0).Count -gt 0) {
    throw 'An STL input is empty. Supply the final models before packaging.'
}

$requiredFiles = @('LICENSE', 'ATTRIBUTION.md', 'README.md', 'README.cs.md')
foreach ($name in $requiredFiles) {
    if (-not (Test-Path -LiteralPath (Join-Path $projectRoot $name) -PathType Leaf)) {
        throw "Required distribution file is missing: $name"
    }
}
$releaseDir = Join-Path $projectRoot 'releases'
$archivePath = Join-Path $releaseDir "hp-ipaq-hx4700-$Variant-$Version.zip"
if (Test-Path -LiteralPath $archivePath) {
    throw "Archive already exists: $archivePath"
}

# Write only explicitly selected distribution files; local files stay local.
Add-Type -AssemblyName System.IO.Compression
$archive = $null
$stream = [IO.File]::Open($archivePath, [IO.FileMode]::CreateNew)
try {
    $archive = [IO.Compression.ZipArchive]::new($stream, [IO.Compression.ZipArchiveMode]::Create)
    $entries = @()
    foreach ($name in $requiredFiles) {
        $entries += @{ Path = (Join-Path $projectRoot $name); Name = $name }
    }
    foreach ($model in $models) {
        $relativeName = $model.FullName.Substring($sourceDir.Length + 1).Replace('\', '/')
        $entries += @{ Path = $model.FullName; Name = "models/$Variant/$relativeName" }
    }
    foreach ($item in $entries) {
        $entry = $archive.CreateEntry($item.Name, [IO.Compression.CompressionLevel]::Optimal)
        $inputStream = [IO.File]::OpenRead($item.Path)
        $outputStream = $entry.Open()
        try { $inputStream.CopyTo($outputStream) }
        finally {
            $outputStream.Dispose()
            $inputStream.Dispose()
        }
    }
}
finally {
    if ($null -ne $archive) { $archive.Dispose() }
    $stream.Dispose()
}

Write-Output "Created $archivePath"
