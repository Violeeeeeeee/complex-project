# Builds Word (.docx) versions of the Markdown documents in docs/analysis and docs/scrum.
# Markdown is the source of truth; the generated files go to docs/export (not committed).
# Requires pandoc: winget install --id JohnMacFarlane.Pandoc
# Usage (from the repository root):  .\scripts\build-docs.ps1

$ErrorActionPreference = "Stop"

if (-not (Get-Command pandoc -ErrorAction SilentlyContinue)) {
    Write-Error "pandoc not found. Install it with: winget install --id JohnMacFarlane.Pandoc"
}

$out = "docs/export"
New-Item -ItemType Directory -Force $out | Out-Null

$reference = "docs/templates/reference.docx"   # optional: Word file with your styles
$extra = @()
if (Test-Path $reference) { $extra += @("--reference-doc", $reference) }

Get-ChildItem -Path docs/analysis, docs/scrum -Filter *.md -Recurse |
    Where-Object { $_.Name -notlike "_*" -and $_.Name -ne "README.md" -and $_.FullName -notmatch "[\\/](ai-simulation|transcripts)[\\/]" } |
    ForEach-Object {
        $target = Join-Path $out ($_.BaseName + ".docx")
        pandoc $_.FullName -f markdown -t docx -o $target @extra
        Write-Host "Built $target"
    }
