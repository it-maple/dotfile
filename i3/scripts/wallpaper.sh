#!/bin/bash

# 每60秒自动切换壁纸

killall feh

# while true;
# do
#     feh --bg-scale --no-fehbg --randomize ~/Pictures/wallpapers
#     sleep 1m
# done

feh --no-fehbg \
    --bg-fill ~/Pictures/wallpapers/mountain-cherry_1920x1080.jpg \
    --bg-fill ~/Pictures/wallpapers/snjyw_1920x1080.jpg
