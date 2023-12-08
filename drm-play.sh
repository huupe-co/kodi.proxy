#!/bin/bash
echo "export OVERRIDE_LA_URL='$2'"
echo "export HUULUHEADERS='$3'"
echo "WAYLAND_DISPLAY=wayland-1 XDG_RUNTIME_DIR=/run/user/1000 gst-play-1.0 '$1' --videosink 'h264parse ! nvv4l2decoder ! nvvidconv ! video/x-raw,width=(int)1920,height=(int)1080 ! waylandsink'"

#echo "gst-play-1.0 --source='souphttpsrc location=\"$1\" extra-headers='test,Authorization=(string)\"gggg\"'"
#gst-launch-1.0 souphttpsrc location="https://hls.rtst.co.za/video/france24/ovmaster.m3u8" extra-headers='test,Authorization=(string)\"Bearer\ eyJhbGci...token...psMshNg\"' ! filesink location="fetched/ovmaster.m3u8"
#export OVERRIDE_LA_URL='$2'
#WAYLAND_DISPLAY=wayland-1 XDG_RUNTIME_DIR=/run/user/1000 gst-play-1.0 '$1' --videosink "h264parse ! nvv4l2decoder ! nvvidconv ! video/x-raw,width=(int)1920,height=(int)1080 ! waylandsink"