$edgePath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
$inputFile = "apresentacao_print.html"
$outputFile = "apresentacao.pdf"

# Get absolute paths
$inputPath = (Resolve-Path $inputFile).Path
$outputPath = Join-Path (Get-Location) $outputFile

Write-Host "Generating PDF from $inputPath to $outputPath..."

& $edgePath --headless --print-to-pdf="$outputPath" --no-pdf-header-footer "$inputPath"

if (Test-Path $outputPath) {
    Write-Host "PDF generated successfully!"
} else {
    Write-Host "Failed to generate PDF."
}
