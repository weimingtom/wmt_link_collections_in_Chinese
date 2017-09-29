* m3u8 / hls to mp4  
ffmpeg -y -i "https://xxxx/playlist.m3u8?token=xxx"  -vcodec copy -acodec copy -bsf:a aac_adtstoasc "a.mp4"  

* mp4 to rtmp   
ffmpeg -re -i ../test.mp4 -ar 44100 -f flv rtmp://localhost:1935/live/stream  

* qwinff  
https://github.com/qwinff/qwinff  

* FFmpegYAG  
https://sourceforge.net/projects/ffmpegyag/  
