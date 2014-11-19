#as per http://askubuntu.com/questions/14629/how-do-i-enable-the-partner-repository
sed -i "/^# deb .*partner/ s/^# //" /etc/apt/sources.list
#end as per


#as per http://howtoubuntu.org/things-to-do-after-installing-ubuntu-14-04-trusty-tahr
echo "Downloading GetDeb and PlayDeb" &&
wget http://archive.getdeb.net/install_deb/getdeb-repository_0.1-1~getdeb1_all.deb http://archive.getdeb.net/install_deb/playdeb_0.3-1~getdeb1_all.deb &&
echo "Installing GetDeb" &&
sudo dpkg -i getdeb-repository_0.1-1~getdeb1_all.deb &&
echo "Installing PlayDeb" &&
sudo dpkg -i playdeb_0.3-1~getdeb1_all.deb &&
echo "Deleting Downloads" &&
rm -f getdeb-repository_0.1-1~getdeb1_all.deb &&
rm -f playdeb_0.3-1~getdeb1_all.deb

sudo add-apt-repository -y ppa:videolan/stable-daily
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
sudo add-apt-repository -y ppa:gnome3-team/gnome3
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager

echo 'deb http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
echo 'deb-src http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc|sudo apt-key add -

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

sudo apt-get install synaptic vlc gimp gimp-data gimp-plugin-registry gimp-data-extras y-ppa-manager bleachbit openjdk-7-jre oracle-java8-installer flashplugin-installer unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller libxine1-ffmpeg mencoder flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview libmpeg3-1 mpeg3-utils mpegdemux liba52-dev mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 totem-mozilla icedax lame libmad0 libjpeg-progs libdvdcss2 libdvdread4 libdvdnav4 libswscale-extra-2 ubuntu-restricted-extras ubuntu-wallpapers*

echo "Cleaning Up" &&
sudo apt-get -f install &&
sudo apt-get autoremove &&
sudo apt-get -y autoclean &&
#end as per

sudo apt-get install chromium-browser -y
sudo apt-get install git -y
sudo apt-get install tree -y

#as per http://play0ad.com/download/linux/#a0A.D.providedpackages
sudo add-apt-repository ppa:wfg/0ad
sudo apt-get update
sudo apt-get install 0ad -y
#end as per

#as per https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-14-04
sudo apt-get update
sudo apt-get install apache2 -y
sudo apt-get install mysql-server php5-mysql -y
sudo mysql_install_db
sudo mysql_secure_installation
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt -y
sudo service apache2 restart
sudo apt-get install phpmyadmin
#end as per

#as per http://dev.mysql.com/downloads/repo/apt/
wget http://dev.mysql.com/get/mysql-apt-config_0.3.2-1ubuntu14.04_all.deb
sudo dpkg -i mysql-apt-config_0.3.2-1ubuntu14.04_all.deb
sudo apt-get update
sudo apt-get install mysql-workbench -y
#end as per

#as per http://www.sysads.co.uk/2014/06/install-skype-4-3-in-ubuntu-14-04/
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install gdebi -y
wget download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
sudo gdebi skype-ubuntu-precise_4.3.0.37-1_i386.deb
#end as per
