* ~/.Xauthority locked (UI login failed)    
press ctrl+Alt+F1  
$ startx  
/home/<User>/.Xauthority locked  
$ sudo cp /home/<User Name>/.Xauthority /home/  
$ sudo rm /home/<User Name>/.Xauthority  
$ startx (or restart machine)  
see https://blog.csdn.net/qq_20480611/article/details/48029689  

* vnc  
see http://www.cnblogs.com/lanxuezaipiao/p/3724958.html  
$ sudo apt-get install vnc4server  
$ vncserver  
$ gedit ~/.vnc/xstartup  
$ vncserver -kill :1  
$ vncserver :1  
($ ifconfig)  
(vmware: NAT: 5901,TCP,192.168.184.131,5901,vnc)  
(vncviewer: 127.0.0.1:1)  
see https://blog.csdn.net/wwq_1111/article/details/46502873  
$ sudo apt-get install gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal  
(need if no window title)  

* ssh  
see https://jingyan.baidu.com/article/9c69d48fb9fd7b13c8024e6b.html  

* 7z split    
tar cf - film | 7z a -si film.tar.7z -v80m  
7z x -so film.tar.7z.001 | tar xf -  
see http://blog.sina.com.cn/s/blog_142aca4390102x8tg.html  

* unzip  
//see https://zhidao.baidu.com/question/489644957084823332.html  
unzip filename.zip  
zip filename.zip files  
tar: tar –xvf  
gz: gzip -d or gunzip  
tar.gz, *.tgz: tar –xzf  
bz2: bzip2 -d or bunzip2  
tar.bz2: tar –xjf  
Z: uncompress  
tar.Z: tar –xZf  
rar: unrar e  
zip: unzip  

* onscripter build  
sudo apt-get install libsdl1.2-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsdl-gfx1.2-dev liblua5.1-0-dev libbz2-dev libfontconfig1-dev libavifile-0.7-dev libsmpeg-dev   
//see https://blog.csdn.net/AGrapier/article/details/50378531  

* Could not get lock /var/lib/dpkg/lock  
//see http://www.cnblogs.com/yun6853992/p/9343816.html  
$ sudo rm /var/lib/dpkg/lock  
$ sudo dpkg --configure -a  
$ sudo apt update  

* bash: ./test.sh: /bin/sh^M: bad interpreter: No such file or directory  
$ vim xxx  
:set ff=unix  
:wq  

