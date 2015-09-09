# wmt_link_collections_in_Chinese
Link collections for me, in Chinese

## 创作基本原则  

* **创新就是不做多此一举的事情**  

* **艺术源于想象力和现实的碰撞**  

* **美没有标准，不是所有人都喜欢美**  

* **创作的乐趣在于分享，不在于自私**  

## 游戏常用表现手法  

* 规则过渡动画（Rule image）  
(1) 说明：  
场景转换图像文件，来源于kirikiri和类似视觉小说游戏引擎的概念    
(2) 我的实现（基于gles2）：  
https://github.com/weimingtom/RuleTransitionDemo  

* 缓动公式（Tween，Easing，补间动画）  
(1) 说明：  
来源于Flash的概念，一切浮点数属性皆可缓动（汗）    
(2) 我的实现（基于Java AWT）：  
https://github.com/weimingtom/FireTreeFrame  
(3) Tweener  
https://code.google.com/p/tweener/  
(4) Robert Penner's Easing Functions    
http://robertpenner.com/easing/  

* 图片混合（Blending, blend mode）  
(1) 说明：  
来源于Photoshop图层的概念  
(2) TODO:  

* 寻路算法（Path finding）  

* 斜45度算法（Isometric）  
(1) 说明：  
一些MMO Flash游戏的经典地图视角（例如偷菜），通常伴随着寻路算法    
(2) Mars, Land of No Mercy   
http://sourceforge.net/projects/mars/  


* 打字机效果  
(1) 说明：  
来源于kirikiri和类似视觉小说游戏引擎的概念    
(2) SRGNovelGameTexts  
https://github.com/kazu0620/SRGNovelGameTexts  
(3) gear1554 / CCLabelAttributedBMFontTest  
https://github.com/gear1554/CCLabelAttributedBMFontTest  
http://anz-note.tumblr.com/post/78738162338/cocos2d-x-v3rpg%E9%A2%A8%E3%81%AB%E6%96%87%E5%AD%97%E3%82%921%E6%96%87%E5%AD%97%E3%81%9A%E3%81%A4%E8%A1%A8%E7%A4%BA-%CF%89%EF%BD%B6%EF%BE%9E%EF%BD%B5%EF%BD%B0  
http://survive-engineer.hatenablog.com/entry/2014/02/13/013103  


* 视差滚动（Parallax Scrolling）

* 回旋木马（Carousel，轮播）  
(1) Bootstrap carousel   
http://getbootstrap.com/javascript/#carousel  

## 二次元创作  

* pixiv  
http://www.pixiv.net  

* TINAMI  
http://www.tinami.com  

* 半次元绘画频道  
http://bcy.net/illust/  

* bilibili画友  
http://h.bilibili.com  

## 移动网站设计  

* Mobile | Tablet Emulator  
http://emulator.mobilewebsitesubmit.com  

* 莫贝网  
http://www.mobileui.cn  

* RunJS - 在线编辑、展示、分享、交流你的 JavaScript 代码  
http://runjs.cn  

## Android应用模板（顾己及人，只可借鉴界面思路和代码，切勿抄袭，慎之）

* wordpress-mobile/WordPress-Android  
https://github.com/wordpress-mobile/WordPress-Android 

* GeekZooStudio/ECMobile_Android  
https://github.com/GeekZooStudio/ECMobile_Android  

* hwy1782/myWeixin  
https://github.com/hwy1782/myWeixin  
无线通（闭源，需反编译）  
http://www.wandoujia.com/apps/cn.jpbirdy.myweixin  

## 游戏开发教程和介绍    
* Coding-Game-Intro  
https://github.com/albertz/Coding-Game-Intro  

## 好看的游戏界面皮肤  
* begui  
https://code.google.com/p/begui/  

* imgui  
 https://github.com/ocornut/imgui  

* dayongxie/MyGUI(需要它专用的cocos2d-x才可编译成功)  
https://github.com/dayongxie/MyGUI  
https://github.com/dayongxie/cocos2d-x  

* TGUI  
https://github.com/texus/TGUI  
https://code.google.com/p/erica/  

* LingJiJian/Tui-x  
https://github.com/LingJiJian/Tui-x  

* Jason-lee-c/CocosWidget  
https://github.com/Jason-lee-c/CocosWidget  

* 9miao/CrossApp（这个不是用于游戏的，仅供参考）  
https://github.com/9miao/CrossApp  

* OtterUI（带时间轴编辑器）  
https://github.com/Twolewis/OtterUI  
http://www.twolewis.com/projects/otterui/help-1.3.6.3/index.html  

## 前端node.js开发工具  
npm install -g clean-css  
npm install -g uglify-js  
npm install -g jshint  

type ^  
	..\mobile\css\bootstrap.css ^  
	 | cleancss --s0 -o ..\mobile\css\mobile.min.css  
pause  

call uglifyjs ^  
	..\mobile\js\jquery.min.js ^  
	-c -m -o ..\mobile\js\mobile.min.js  
pause  

## 服务器编程  
* memcached  
http://memcached.org  

* EQ2Emulator  
http://sourceforge.net/projects/eq2emulator/  

* mysql-proxy（lua脚本驱动）  
http://dev.mysql.com/downloads/mysql-proxy/  

## TODO  

