# Import Jenkins signing key
sudo rpm --import https://pkg.jenkins.io/rpm-stable/jenkins.io-2026.key

# Install required dependency
sudo yum install -y fontconfig wget

# Download Jenkins RPM from fallback server
sudo wget -O /tmp/jenkins.rpm \
https://fallback.get.jenkins.io/rpm-stable/jenkins-2.580.2-1.noarch.rpm

# Install Jenkins
sudo dnf install -y /tmp/jenkins.rpm

# Start Jenkins
sudo systemctl enable --now jenkins

# Check status
sudo systemctl status jenkins

# Get admin password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
