#STEP-1: Installing Git and Maven
yum install git maven -y

#STEP-2: Repo Information (jenkins.io --> download -- > redhat)
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/rpm/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/rpm-stable/jenkins.io-2026.key



#STEP-3: Download Java 21 and Jenkins
sudo dnf install java-21-amazon-corretto -y
sudo dnf install jenkins -y

#STEP-4: Start and check the JENKINS Status
systemctl start jenkins.service
systemctl status jenkins.service

#STEP-5: Auto-Start Jenkins
chkconfig jenkins on
