sudo apt-get update
sudo apt-get install -y bash coreutils findutils curl binfmt-support cron
echo "Downloading Exagear"

wget https://archive.org/download/exagear-desktop_202111/exagear_3428-1_armhf.deb
wget https://archive.org/download/exagear-desktop_202111/exagear-dsound-server_010_armhf.deb
wget https://archive.org/download/exagear-desktop_202111/exagear-guest-debian-9_3428_all.deb
echo "Installing Exagear"
sudo dpkg -i exagear_3428-1_armhf.deb
sudo dpkg -i exagear-dsound-server_010_armhf.deb
sudo dpkg -i exagear-guest-debian-9_3428_all.deb
# Uncomment these lines if you ar running 64-bit and comment the above 7 ones.
#wget https://archive.org/download/exagear-desktop_202111/exagear_3428-1_arm64.deb
#wget https://archive.org/download/exagear-desktop_202111/exagear-dsound-server_010_arm64.deb
#wget https://archive.org/download/exagear-desktop_202111/exagear-guest-debian-9_3428_all.deb
#echo "Installing Exagear"
#sudo dpkg -i exagear_3428-1_arm64.deb
#sudo dpkg -i exagear-dsound-server_010_arm64.deb
#sudo dpkg -i exagear-guest-debian-9_3428_all.deb

echo "Applying Patch"
curl https://archive.org/download/exagear-desktop_202111/patch.sh | sudo bash
echo "Finishing Up..."
sudo apt autoremove -y
