$compress = @{
    Path = "./info.toml", "./src"
    CompressionLevel = "Fastest"
    DestinationPath = "./CamUnlock.zip"
}
Compress-Archive @compress -Force

Move-Item -Path "./CamUnlock.zip" -Destination "./CamUnlock.op" -Force

Write-Host("✅ Done!")