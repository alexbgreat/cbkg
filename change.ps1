Function Set-WallPaper($Value){
    Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value
    RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters, 1, True
}
$storagedir = $env:USERPROFILE
$wc = New-Object System.Net.WebClient
$url = "http://oneguyrambling.com/wp-content/uploads/2011/01/con-air.bmp"
$file = "$storagedir\background.bmp"
$wc.DownloadFile($url,$file)
Set-Wallpaper($file)