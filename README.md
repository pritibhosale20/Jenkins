# Jenkins Installation on Amazon Linux 

**Step 1: Download the Installation Script**  
Download the `install_jenkins_Alinux.sh` file to your server:  
```bash
wget https://raw.githubusercontent.com/pritibhosale20/Jenkins/main/install_jenkins_Alinux.sh
```
**Step 2: Make the Script Executable**
```
chmod +x install_jenkins_Alinux.sh
```
**Step 3: Run the Installation Script**
```
./install_jenkins_Alinux.sh
```
**Convert the Script to Unix Format (Fix Line Endings)**
```
sudo yum install -y dos2unix
dos2unix install_jenkins_Alinux.sh
```
**Step 4: Retrieve the Jenkins Initial Admin Password**
```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
**Step 5: Resize /tmp Filesystem (If Jenkins requires more space for temporary files, resize /tmp)**
```
sudo mount -o remount,size=2G /tmp
```
**To make this change persistent, edit /etc/fstab**
```
sudo nano /etc/fstab
```
**Add the following line:**
```
tmpfs /tmp defaults,size=2G,noatime,nosuid 0 0
```
**Then remount /tmp**
```
sudo mount -o remount /tmp
```
**Step 6: Restart Jenkins**
```
sudo service jenkins restart

