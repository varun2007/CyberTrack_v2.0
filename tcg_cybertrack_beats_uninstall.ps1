#Winlogbeat
Stop-Service tcg_cybertrack_wbeat
if (Get-Service tcg_cybertrack_wbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='tcg_cybertrack_wbeat'"
  $service.delete()
}
#Auditbeat
Stop-Service tcg_cybertrack_abeat
if (Get-Service tcg_cybertrack_abeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='tcg_cybertrack_abeat'"
  $service.delete()
}
#Packetbeat
Stop-Service tcg_cybertrack_pbeat
if (Get-Service tcg_cybertrack_pbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='tcg_cybertrack_pbeat'"
  $service.delete()
}
#Heartbeat
Stop-Service tcg_cybertrack_hbeat
if (Get-Service tcg_cybertrack_hbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='tcg_cybertrack_hbeat'"
  $service.delete()
}
#Metrictbeat
Stop-Service tcg_cybertrack_mbeat
if (Get-Service tcg_cybertrack_mbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='tcg_cybertrack_mbeat'"
  $service.delete()
}

Remove-Item 'C:\Program Files (x86)\TCG CyberTrack' -Recurse