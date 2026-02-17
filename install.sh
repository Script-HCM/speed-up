sysctl net.ipv4.tcp_congestion_control
sudo tee -a /etc/sysctl.conf <<EOF
net.core.rmem_max=67108864
net.core.wmem_max=67108864
net.ipv4.tcp_rmem=4096 87380 67108864
net.ipv4.tcp_wmem=4096 65536 67108864
net.ipv4.tcp_mtu_probing=1
net.ipv4.tcp_fastopen=3
net.ipv4.tcp_slow_start_after_idle=0
EOF
sudo sysctl -p
sudo reboot
