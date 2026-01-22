if ($args.Count -eq 0) {
    Write-Host "Usage: .\release-to-github.ps1 TAG-NAME"
    Write-Host "Example: .\release-to-github.ps1 1.0.0"
    exit 1
}
$tagName = $args[0]
gh release create $tagName ./release/*.uf2 --generate-notes --title $tagName --draft --prerelease
