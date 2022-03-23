function heuvpn
  security find-generic-password -a $USER -s "Heureka VPN" -w | sudo openconnect vpn.hadmin.cz --authgroup office-devel --user=martin.hanzik --passwd-on-stdin -b --pid-file /var/run/openconnect.pid
end

