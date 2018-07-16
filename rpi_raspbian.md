## First installing raspbian    
树莓派3b到手了，我用最原始的方法装系统（我烧录的是带桌面的树莓派系统），  
就是不搞什么网线，直接接鼠标键盘和显示器去装（于是这块板插了四根线，电源、鼠标、键盘、显示器），  
设置好wifi密码并且固定ip地址（右键可以设置，但它不会立刻生效，甚至下次打开填写的内容会变空白，所以设置好后要立刻重启），  
然后设置开机CLI，开启ssh，设置locale和键盘语言（这些默认的都不正确，我改成亚洲上海和美国英语）。  
全部搞完后把线全拔了，只剩下电源线（就是安卓数据线），不过ssh连不上，  
后来才明白原来电源线不能用太差的，如果太差的话会导致红灯闪烁和熄灭系统启动失败，  
最后我用手柄的数据线就可以正常ssh了（看到红灯长亮就是正常了）  

## Raspbian experience （2018-07-11）  
最开始运行树莓派的时候跟qemu是不同的，日志很少，它会有一个提示和树莓派logo（可能是扩展容量），重启后树莓派就跟qemu差不多了，有很长的日志。  
另外总是提示under-voltage detected（欠电压），可能跟我用的电源线（安卓数据线）有关。。。  
不过跑起来很顺畅，跟桌面版的raspbian差不多流畅，图形界面下cpu用很少，发热也不是很严重（虽然我没实际测试过）  
另外我要吐槽一下树莓派3b的HDMI口实在太紧了，如果不插紧的话根本没办法输出到显示器上。。。  
所以插好之后可以整个板举起来，跟吃雪糕似得  

## Config  
* PIXEL desktop -> Preferences -> Respberry Pi Configuration  
System: Boot: To CLI  
Interfaces: SSH: Enabled  
Localisation: Locale: en, US, UTF-8   
Localisation: Timezone: Asia, Shanghai  
Localisation: Keyboard: United States, English (US)  


* wifi rightclick menu -> Network Settings   
Fixed IP address, need reboot  

* Expand Filesystem  
$ sudo raspi-config  
Advancd Options -> Expand Filesystem  
$ df -h  

## 树莓派更新镜像源于镜像源推荐  
https://blog.csdn.net/cduan/article/details/52594374   
$ sudo cp /etc/apt/sources.list /etc/apt/sources.list.old  
$ sudo nano /etc/apt/sources.list  
deb http://mirrordirector.raspbian.org/raspbian/ wheezy main contrib non-free rpi  
->  
http://mirrors.aliyun.com/raspbian/raspbian/  
CTRL+O  
CTRL+X  
$ sudo apt-get update  

## Tools  
* ftp client  
$ sudo apt-get install ftp  
$ ftp 192.168.1.181  

* vncserver    
$ sudo apt-get install tightvncserver  
$ vncserver :1  
$ vncserver -kill :1   

## Cross Compile (Windows)    
http://www.cnblogs.com/findumars/p/4878475.html  
http://gnutoolchains.com/raspberry/  

## Search software package execute file  
$ dpkg -L xxx  

## VBA  
$ sudo apt-get install visualboyadvance visualboyadvance-gtk  
$ vba xxx.gba  
$ gvba  

## ftp  
https://blog.csdn.net/la9998372/article/details/77886806  
$ sudo apt-get install ftp  

## vncserver  
$ sudo apt-get install tightvncserver  

## telnet  
$ sudo apt-get install telnet  

## mysql  
* Change root password  
https://blog.csdn.net/a791693310/article/details/80612573  
$ sudo apt-get install mysql-server  
$ sudo mysql -uroot  
  mysql> USE mysql;  
  mysql> UPDATE user SET password=PASSWORD('123456') WHERE user='root';  
  mysql> UPDATE user SET plugin='mysql_native_password' WHERE user='root';  
  mysql> FLUSH PRIVILEGES;  
  mysql> exit;  
* Remote login  
https://blog.csdn.net/faryang/article/details/50788795  
修改/etc/mysql/my.cnf文件  
$ nano /etc/mysql/my.cnf  
找到下面这行，并用#注释掉，  
  bind-address        = 127.0.0.1  
3.2登录mysql，输入下面命令  
  <pre>mysql> grant all privileges on *.* to username@"%" identified by "password";</pre>    
  (username一般是root，password是新的密码)  
  mysql> FLUSH PRIVILEGES;  

## sys/types.h (not need)   
**NOTE:NOT NEED**  
https://blog.csdn.net/david_xtd/article/details/8883687  
$ sudo apt-get install libc6-dev  

## Build avian  
$ git clone https://github.com/ReadyTalk/avian  
$ cd avian  
$ find / -name "types.h"  
/usr/include/i386-linux-gnu/sys/types.h  
(search sys/types.h)   
$ find / -name "jni.h"  
/usr/lib/jvm/oracle-java8-jdk-i386/include/jni.h  
(search JAVA_HOME)  
$ JAVA_HOME=/usr/lib/jvm/oracle-java8-jdk-i386 make build-arch=i386  
$ cd test  
$ javac Hello.java  
$ ../build/linux-i386/avian Hello  

## Apache2 and PHP7  
* Install  
https://www.raspberrypi.org/documentation/remote-access/web-server/apache.md  
$ sudo apt-get install libapache2-mod-php  
$ sudo apt-get install php-mysql  
$ sudo service apache2 restart  
* Enable write permission  
$ cat /etc/apache2/apache2.conf  
$ cat /etc/apache2/envvars  
group: www-data  
user: www-data  
<pre>$ sudo chown -R www-data:www-data /var/www/html</pre>    

## cannot open shared object file  
export LD_LIBRARY_PATH=/where/you/install/lib:$LD_LIBRARY_PATH  
sudo ldconfig  

## shutdown  
http://shumeipai.nxez.com/2013/08/25/raspberry-pi-how-to-safely-shutdown-restart.html  
$ sudo shutdown -h now  
$ sudo halt  
$ sudo poweroff  
$ sudo init 0  

## restart  
$ sudo reboot  
$ shutdown -r now  
$ shutdown -r 18:23:52  

## uname  
$ uname -m  
$ uname -a  
