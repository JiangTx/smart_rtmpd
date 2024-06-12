@echo off
set /P vhost=<vhost.txt
d:
cd d:\ffmpeg\bin
ffmpeg -re -stream_loop -1 -i 1.mp4 -vcodec libx264  -tune zerolatency -preset ultrafast  -bsf:v h264_mp4toannexb  -g 15 -keyint_min 15 -profile:v baseline -level 3.1 -pix_fmt yuv420p -r 15 -acodec aac  -rtsp_transport udp -f rtsp rtsp://%vhost%:8554/live/stream

