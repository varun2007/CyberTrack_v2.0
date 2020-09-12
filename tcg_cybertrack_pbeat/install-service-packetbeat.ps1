# delete service if it already exists
if (Get-Service tcg_cybertrack-pbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='tcg_cybertrack-pbeat'"
  $service.StopService()
  Start-Sleep -s 1
  $service.delete()
}

$workdir = Split-Path $MyInvocation.MyCommand.Path

# create new service
New-Service -name tcg_cybertrack_pbeat `
  -displayName tcg_cybertrack_pbeat `
  -binaryPathName "`"$workdir\packetbeat.exe`" -c `"$workdir\packetbeat.yml`" -path.home `"$workdir`" -path.data `"C:\ProgramData\packetbeat`" -path.logs `"C:\ProgramData\packetbeat\logs`""
