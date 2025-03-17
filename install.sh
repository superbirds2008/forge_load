#!/bin/bash

# Prompt the user to enter the target value
read -p "请输入目标值: " target_value

# Create the systemd service file
cat <<EOL | sudo tee /etc/systemd/system/soss-monitor.service
[Unit]
Description=SOSS Monitor Service

[Service]
Environment="target=$target_value"
ExecStart=$(pwd)/soss-monitor-ubuntu-latest-x86.bin
Restart=always

[Install]
WantedBy=multi-user.target
EOL

# Reload systemd to apply the new service
sudo systemctl daemon-reload

# Enable the service to start on boot
sudo systemctl enable soss-monitor

# Start the service immediately
sudo systemctl start soss-monitor

echo "soss-monitor 服务已创建并启动。"