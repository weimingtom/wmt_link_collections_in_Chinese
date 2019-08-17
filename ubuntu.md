* find file name and string    
  find . -name lib*  
  grep -r magic .    
  https://www.cnblogs.com/huninglei/p/5824205.html  

* **update software list**  
  sudo apt-get update  
  
* **list file**  
  dpkg -L "name"

* **remove**  
  sudo apt-get --purge remove "name"  

* **Edit .profile and modify PATH**  
  PATH="/usr/lib/go-1.10/bin/:$PATH"  

* git  
  sudo apt-get install git  

* g++  
  sudo apt-get install g++    
  
* libgc  
  sudo apt-get install libgc-dev  

* x11  
  sudo apt-get install libX11-dev libXext-dev libXtst-dev libXrender-dev libxmu-dev libxmuu-dev  
  
* kdevelop  
  sudo apt-get install kdevelop cmake  
  
* qt-sdk  
  sudo apt-get install qt-sdk  
  
* emacs  
  sudo apt-get install emacs24

* sfml  
  sudo apt-get install libsfml-dev  

* openssl  
  sudo apt-get install libssl-dev  

* ruby  
  sudo apt-get install ruby  

* nodejs  
  sudo apt-get install nodejs npm  
  npm cache clean  
  sudo npm update -g npm  

* swift  
  sudo apt-get install clang  
  gedit ~/.profile -> PATH="$HOME/swift/usr/bin:$PATH"  

* autoconf / autopoint  
  sudo apt-get install autoconf autopoint  

* ibus  
  sudo apt-get install libibus-1.0-dev  

* gtk3  
  sudo apt-get install libgtk-3-dev  

* openjdk7  
  sudo apt-get install default-jdk  

* gradle / mvn    
  sudo apt-get install gradle   

* git svn clone xxx  
  sudo apt-get install git-svn  

* readline  
  sudo apt-get install libreadline-dev  

* ncurses  
  sudo apt-get install libncurses-dev  

* valgrind  
  sudo apt-get install valgrind  

* libgtk-3-dev  
  sudo apt-get install libgtk-3-dev  

* sqlite3.h  
  sudo apt-get install libsqlite3-dev  

* google pinyin input method  
  sudo apt-get install ibus-googlepinyin  

* sdl2  
   sudo apt-get install libsdl2-dev  
   
* libelf  
   sudo apt-get install libelf-dev  

* glut  
  sudo apt-get install freeglut3-dev  

* sdl-mixer / ogg  
  sudo apt-get install libsdl-mixer1.2-dev  

* gtk2 / gtk+2.0  
  sudo apt-get install libgtk2.0-dev  

* vncserver  
  sudo apt-get install vnc4server  

* sshd  
  sudo apt-get install openssh-server  

* qemu-system-arm  
  sudo apt-get install qemu-system-arm  

* kpartx (sudo kpartx -a xxx.img)  
  sudo apt-get install kpartx  

* 7z  
  sudo apt-get install p7zip-full  

* filezilla (ftp client, GUI)      
  sudo apt-get install filezilla  

* ftp (ftp client, CLI)  
  sudo apt-get install ftp  

* hg (for bitbucket.org)    
  sudo apt-get install mercurial  
  
* fbi  
  sudo apt-get install fbi  

* gtkmm  
  sudo apt-get install libgtkmm-3.0 libgtkmm-3.0-dev  
  sudo apt-get install libgtkmm-2.4-dev  

* avian  
  locate jni.h  
  JAVA_HOME=/usr/lib/jvm/java-7-openjdk-i386 make  
  cd test  
  javac Hello.java  
  ../build/linux-i386/avian Hello  

* bison  
  sudo apt-get install bison  

* glfw2  
  sudo apt-get install libglfw2  

* -lXrandr    
  sudo apt-get install libxrandr-dev  

* telnetd  
  sudo apt install telnetd  
  sudo apt install xinetd  
  sudo service xinetd restart  
  telnet localhost 23  

* tftpd  
  sudo apt-get install tftpd-hpa tftp-hpa  
  sudo gedit /etc/default/tftpd-hpa  
  TFTP_DIRECTORY="/tftpboot"  
  sudo mkdir /tftpboot  
  sudo chmod -R 777 /tftpboot  
  sudo chown -R nobody /tftpboot  
  sudo service tftpd-hpa restart  
  echo "Hello,can you see me?" > /tftpboot/tftpTestFile  
  tftp localhost 69    
  tftp localhost -c get tftpTestFile  
  
* NFS  
  $ sudo apt-get install nfs-kernel-server  
  $ sudo apt-get install nfs-common  
  $ sudo gedit /etc/exports  
  <pre>/nfsroot *(rw,sync,no_root_squash)</pre>  
  sudo mkdir /nfsroot  
  $ sudo chmod -R 777 /nfsroot  
  $ sudo chown –R nobody /nfsroot  
  $ sudo /etc/init.d/nfs-kernel-server restart  
  (client)  
  $ sudo mount -t nfs 192.168.12.123:/nfsroot /mnt -o nolock  
  $ umount /mnt  
  
* cmake verbose  
  $ make VERBOSE=1  

* openwrt  
  $ sudo apt-get install g++ flex zlib1g-dev gawk subversion ncurses-dev  
