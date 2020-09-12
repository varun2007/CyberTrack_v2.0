# delete service if it already exists
if (Get-Service tcg_cybertrack_mbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='tcg_cybertrack_mbeat'"
  $service.StopService()
  Start-Sleep -s 1
  $service.delete()
}

$workdir = Split-Path $MyInvocation.MyCommand.Path

# create new service
New-Service -name tcg_cybertrack_mbeat `
  -displayName tcg_cybertrack_mbeat `
  -binaryPathName "`"$workdir\metricbeat.exe`" -c `"$workdir\metricbeat.yml`" -path.home `"$workdir`" -path.data `"C:\ProgramData\metricbeat`" -path.logs `"C:\ProgramData\metricbeat\logs`""
