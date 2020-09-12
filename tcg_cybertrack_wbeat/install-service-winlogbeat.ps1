# delete service if it already exists
if (Get-Service tcg_cybertrack_wbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='tcg_cybertrack_wbeat'"
  $service.StopService()
  Start-Sleep -s 1
  $service.Delete()
}

$workdir = Split-Path $MyInvocation.MyCommand.Path

# create new service
New-Service -name tcg_cybertrack_wbeat `
  -displayName tcg_cybertrack_wbeat `
  -binaryPathName "`"$workdir\winlogbeat.exe`" -c `"$workdir\winlogbeat.yml`" -path.home `"$workdir`" -path.data `"C:\ProgramData\winlogbeat`" -path.logs `"C:\ProgramData\winlogbeat\logs`""
