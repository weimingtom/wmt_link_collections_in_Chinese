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
  for Windows, use WinSCP: SCP 127.0.0.1 22 <user> <pass>    
  for VMWare, Select NAT Mode, NAT Setting, gate:192.168.184.2  
  port redirect:22 TCP 192.168.4.131 22 ssh (IP 131 is from ifconfig output in ubuntu, modify it)    
  subnet: 192.168.184.0 255.255.255.0  
  DHCP setting: 192.168.184.184 to 192.168.184.254  
  (manual start, normally not need: $ sudo /etc/init.d/ssh start)  

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

* https://blog.csdn.net/cloume/article/details/42425085  
  $ sudo apt-get install libstdc++6  
  $ sudo apt-get install lib32stdc++6  
  
* https://blog.csdn.net/ieeso/article/details/82216322  
  $ cat /etc/apt/sources.list   
  $ sudo leafpad /etc/apt/sources.list  
  https://www.cnblogs.com/arrive/p/9353994.html  

```
deb http://mirrors.163.com/debian/ stretch main non-free contrib
deb http://mirrors.163.com/debian/ stretch-updates main non-free contrib
deb http://mirrors.163.com/debian/ stretch-backports main non-free contrib
#deb-src http://mirrors.163.com/debian/ stretch main non-free contrib
#deb-src http://mirrors.163.com/debian/ stretch-updates main non-free contrib
#deb-src http://mirrors.163.com/debian/ stretch-backports main non-free contrib
deb http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib
#deb-src http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib
```

* create swap file  
  https://blog.csdn.net/mika001/article/details/72780953  
  https://blog.csdn.net/JiangBo_HIT/article/details/4480226  
  $ free  
  $ sudo dd if=/dev/zero of=swapfile bs=1M count=4096  
  $ chmod 600 swapfile  
  $ mkswap swapfile  
  $ sudo swapon swapfile  
  $ free  
  $ swapoff swapfile  
  $ rm swapfile  

* change python point  
  $ sudo apt-get install python-is-python2  
  OR    
  $ ll /usr/bin | grep python  
  $ sudo rm /usr/bin/python  
  $ sudo ln -s /usr/bin/python2 /usr/bin/python  
  $ ll /usr/bin | grep python  

* python3 and pip3  
  $ sudo apt-get install python3  
  $ sudo apt-get install python3-pip  

* python2 and pip2, TensorFlow CPU version 1.15.0 (no AVX2)        
  $ sudo apt-get install python2  
  $ wget https://bootstrap.pypa.io/get-pip.py  
  $ sudo python2 get-pip.py  
  $ pip install tensorflow-cpu==1.15.0  
  ($ pip install tensorflow-cpu==1.13.1)    
  ($ sudo python2 -m pip install tensorflow-cpu==1.15.0)  
  $ python2  

* TensorFlow CPU version, 2.3.1 (no AVX2, depend numpy)  
  $ pip3 install tensorflow-cpu==2.3.1    
  (Also support Python2 and TensorFlow 1.x high version, but not recommanded)  
  
* PyTorch CPU version, 1.7.1 (depend numpy)      
  $ pip3 install torch==1.7.1+cpu torchvision==0.8.2+cpu torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html  

* Android SDK install  
  Install Android Studio, custom install, uncheck AVD (Android Virtual Device)  
  Install lastest NDK using SDK Manager or Download NDK r18b (with ndk-depends)  

* gradlew, Android project CUI build (this is an example to build MACE)      
  (in /home/wmt/Android/Sdk/tools/bin/)  
  $ ./sdkmanager --licenses  
  input y  
  $ touch /home/wmt/.android/repositories.cfg  
  (patch ndk_patch.zip to NDK, from android-ndk-r16b, mips64el-linux-android-4.9 and mipsel-linux-android-4.9)  
  (modify ~/.bashrc)  
  export ANDROID_HOME=/home/wmt/Android/Sdk  
  export ANDROID_NDK_HOME=/home/wmt/android-ndk-r18b  
  (or android-ndk-r16b)  
  export JAVA_HOME=/home/wmt/android-studio/jre    
  $ ./gradlew clean  
  $ ./gradlew build  

* sudo, command not found  
  https://www.cnblogs.com/gaowengang/p/10802552.html  
  $ sudo gedit /etc/sudoers  
  (Defaults secure_path = /sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin)  

* JDK8 (only jre), OpenJDK8  
  sudo apt-get install openjdk-8-jdk  

* tomcat, listen on port 8080 and 80    
  ./startup.sh  
  ./shutdown.sh  
  ./catalina.sh run  
  https://serverfault.com/questions/112795/how-to-run-a-server-on-port-80-as-a-normal-user-on-linux  
  (java.net.SocketException: Permission denied)  
  (run with root user)  
  iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080  
  iptables -t nat -I OUTPUT -p tcp -d 127.0.0.1 --dport 80 -j REDIRECT --to-ports 8080  

* ftp for some linux version, FileZilla 425 Can't open data connection    
  ftp -p xxx.xxx.xxx.xxx  
  see https://blog.csdn.net/imshang/article/details/5522158  

* 树莓派部署java运行环境  
  https://www.cnblogs.com/hy162050430/p/9981867.html  

