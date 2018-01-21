* m3u8 / hls to mp4  
$ ffmpeg -y -i "https://xxxx/playlist.m3u8?token=xxx"  -vcodec copy -acodec copy -bsf:a aac_adtstoasc "a.mp4"  

* mp4 to rtmp   
$ ffmpeg -re -i ../test.mp4 -ar 44100 -f flv rtmp://localhost:1935/live/stream  
http://stackoverflow.com/questions/29018606/android-stream-camera-as-rtmp-stream  

* mp3 to wav, smaller size  
pcm, sample rate 8KHz or 16KHz, 
used for speech recognition, for example xunfei   
signed 16bit little endian, mono  
$ ffmpeg -i 01.mp3 -ar 16000 -ac 1 -acodec pcm_s16le 01.wav 

* qwinff  
https://github.com/qwinff/qwinff  

* FFmpegYAG  
https://sourceforge.net/projects/ffmpegyag/  

* ffmpeg-20151219-git-2dba040-win32-static  

* ffmpeg-2.8.4 / (not used) ffmpeg-2.6.3  

* ffmpeg-libav-tutorial  
https://github.com/leandromoreira/ffmpeg-libav-tutorial  

* 百度语音识别-开发文档，音频文件转码  
http://yuyin.baidu.com/docs/asr/58  
