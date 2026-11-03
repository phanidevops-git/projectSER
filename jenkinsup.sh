# 1. Download the correct unified RPM repo file
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/rpm-stable/jenkins.repo

# 2. Import the correct repository cryptographic key
sudo rpm --import https://jenkins.io

# 3. Upgrade packages using the native package manager
sudo dnf upgrade -y

# 4. Install the correct AWS-native Java 21 runtime and fonts
sudo dnf install fontconfig java-21-amazon-corretto -y

# 5. Install Jenkins
sudo dnf install jenkins -y

# 6. Reload systemd, enable Jenkins to start on boot, and start it right now
sudo systemctl daemon-reload
sudo systemctl enable --now jenkins

# 7. Print the status to ensure it says "active (running)"
sudo systemctl status jenkins

# 8. Output the initial unlock password for the setup wizard
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
