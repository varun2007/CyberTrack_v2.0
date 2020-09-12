."C:\Program Files (x86)\TCG CyberTrack\npcap-0.9992.exe"
."C:\Program Files (x86)\TCG CyberTrack\Sysmon.exe" -i
#Winlogbeat
#Copy-Item 'tcg_cybertrack_wbeat' -Recurse -Destination 'C:\Program Files\tcg_cybertrack_wbeat'
."C:\Program Files (x86)\TCG CyberTrack\tcg_cybertrack_wbeat\install-service-winlogbeat.ps1"
Start-Service tcg_cybertrack_wbeat
sc.exe config tcg_cybertrack_wbeat start= delayed-auto 

#Packetbeat
#Copy-Item 'tcg_cybertrack_pbeat' -Recurse -Destination 'C:\Program Files\tcg_cybertrack_pbeat'
."C:\Program Files (x86)\TCG CyberTrack\tcg_cybertrack_pbeat\install-service-packetbeat.ps1"
Start-Service tcg_cybertrack_pbeat
sc.exe config tcg_cybertrack_pbeat start= delayed-auto

#Heartbeat
#Copy-Item 'tcg_cybertrack_hbeat' -Recurse -Destination 'C:\Program Files\tcg_cybertrack_hbeat'
."C:\Program Files (x86)\TCG CyberTrack\tcg_cybertrack_hbeat\install-service-heartbeat.ps1"
Start-Service tcg_cybertrack_hbeat
sc.exe config tcg_cybertrack_hbeat start= delayed-auto

#Metrictbeat
#Copy-Item 'tcg_cybertrack_mbeat' -Recurse -Destination 'C:\Program Files\tcg_cybertrack_mbeat'
."C:\Program Files (x86)\TCG CyberTrack\tcg_cybertrack_mbeat\install-service-metricbeat.ps1"
Start-Service tcg_cybertrack_mbeat
sc.exe config tcg_cybertrack_wbeat start= delayed-auto