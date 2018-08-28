# ffmpeg

[ffmpeg 中文文档](http://wiki.11ten.net/Resources/ffmpeg-%E4%B8%AD%E6%96%87%E6%96%87%E6%A1%A3.html)

### 改变视频播放速度
要强制输入文件的帧频（仅对原始格式有效），以240 FPS读入文件，以每秒24帧的帧速率输出：
ffmpeg -r 240 -i input.m2v -r 24 output.avi

### 多张截图：
每隔一秒截一张图
ffmpeg -i out.mp4 -f image2 -vf fps=fps=1 out%d.png
每隔20秒截一张图
ffmpeg -i out.mp4 -f image2 -vf fps=fps=1/20 out%d.png

