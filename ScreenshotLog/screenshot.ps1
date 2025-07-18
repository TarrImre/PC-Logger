$saveFolder = "C:\TXYLog"
if (-not (Test-Path $saveFolder)) {
    New-Item -Path $saveFolder -ItemType Directory
}

while ($true) {
    $timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
    $screenshotPath = "$saveFolder\screenshot_$timestamp.png"

    # Képernyõkép készítése a képernyõterületrõl és elmentése
    Add-Type -AssemblyName System.Windows.Forms
    Add-Type -AssemblyName System.Drawing
    $bounds = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds
    $bitmap = New-Object System.Drawing.Bitmap $bounds.Width, $bounds.Height
    $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
    $graphics.CopyFromScreen($bounds.Location, [System.Drawing.Point]::Empty, $bounds.Size)
    $bitmap.Save($screenshotPath, [System.Drawing.Imaging.ImageFormat]::Png)

    Start-Sleep -Seconds 10
}
