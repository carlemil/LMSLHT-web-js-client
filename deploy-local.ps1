# Copy docs folder to local IIS site
$Target = "C:\inetpub\wwwroot\LMSLHT-web-js-client\docs"
if (-not (Test-Path $Target)) {
    New-Item -ItemType Directory -Path $Target | Out-Null
}
Copy-Item -Path "docs\*" -Destination $Target -Recurse -Force
Write-Host "Deployed to $Target"
