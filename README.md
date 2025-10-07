# hinh nen video mp4
yay -S mpvpaper<br>
ffmpeg -i 1.mp4 -vf "fps=30,scale=1080:-1:flags=lanczos,palettegen" palette.png<br>
ffmpeg -i 1.mp4 -i palette.png -filter_complex "fps=30,scale=1920:-1:flags=lanczos[x];[x][1:v]paletteuse=dither=sierra2_4a" output.gif<br>
nohup mpvpaper -o "--loop --no-audio" eDP-1 ~/Pictures/wallpapers/<video.mp4> >/dev/null 2>&1 &

# xuat man hinh roi
sudo pacman -S nvidia-dkms nvidia-utils nvidia-settings nvidia-prime
