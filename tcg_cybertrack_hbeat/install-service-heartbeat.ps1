# delete service if it already exists
if (Get-Service tcg_cybertrack_hbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='tcg_cybertrack_hbeat'"
  $service.StopService()
  Start-Sleep -s 1
  $service.delete()
}

$workdir = Split-Path $MyInvocation.MyCommand.Path

# create new service
New-Service -name tcg_cybertrack_hbeat `
  -displayName tcg_cybertrack_hbeat `
  -binaryPathName "`"$workdir\heartbeat.exe`" -c `"$workdir\heartbeat.yml`" -path.home `"$workdir`" -path.data `"C:\ProgramData\heartbeat`" -path.logs `"C:\ProgramData\heartbeat\logs`""
