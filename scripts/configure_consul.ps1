# disable Windows firewall
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
# install consul
choco install consul -y
