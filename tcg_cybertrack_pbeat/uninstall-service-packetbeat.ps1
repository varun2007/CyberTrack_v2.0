# delete service if it exists
if (Get-Service tcg_cybertrack_pbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='tcg_cybertrack_pbeat'"
  $service.delete()
}
