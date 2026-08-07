$ErrorActionPreference = 'Stop'
$repo = Split-Path $PSScriptRoot -Parent
$lines = Get-Content "$repo\README.md" -Encoding UTF8

$green = [char]::ConvertFromUtf32(0x1F7E2)
$linkRe = [regex]'\[[^\]]*\]\((.*?)\)'

function Get-Link($cell) {
  $m = $linkRe.Match($cell)
  if ($m.Success) { return $m.Groups[1].Value } else { return $null }
}

$models = @()
$benches = @()
$mode = ''
foreach ($line in $lines) {
  if ($line -match '^### (20\d\d)') { $mode = 'model'; continue }
  if ($line -match '^## Benchmarks') { $mode = 'bench'; continue }
  if ($line -match '^## Related') { $mode = ''; continue }
  if (-not $line.StartsWith('| **')) { continue }
  $cells = $line.Trim('|').Split('|') | ForEach-Object { $_.Trim() }
  if ($cells.Count -lt 8) { continue }
  $name = ($cells[0] -replace '\*\*','')
  if ($mode -eq 'model') {
    $wcell = $cells[6]
    $hf = Get-Link $wcell
    if ($hf) { $weights = 'open' }
    elseif ($wcell.Contains($green)) { $weights = 'open' }
    else { $weights = 'closed' }
    $models += [ordered]@{
      name = $name; release = $cells[1]; organization = $cells[2]; venue = $cells[3]
      paper = Get-Link $cells[4]; code = Get-Link $cells[5]
      weights = $weights; huggingface = $hf; notes = $cells[7]
    }
  } elseif ($mode -eq 'bench') {
    $benches += [ordered]@{
      name = $name; release = $cells[1]; organization = $cells[2]; venue = $cells[3]
      paper = Get-Link $cells[4]; code = Get-Link $cells[5]
      data = Get-Link $cells[6]; focus = $cells[7]
    }
  }
}

ConvertTo-Json $models -Depth 3 | Out-File -Encoding utf8 "$repo\models.json"
ConvertTo-Json $benches -Depth 3 | Out-File -Encoding utf8 "$repo\benchmarks.json"
"models: $($models.Count)  benchmarks: $($benches.Count)"
