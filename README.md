# hinh nen video mp4
yay -S mpvpaper<br>
ffmpeg -i 1.mp4 -vf "fps=30,scale=1080:-1:flags=lanczos,palettegen" palette.png<br>
ffmpeg -i 1.mp4 -i palette.png -filter_complex "fps=30,scale=1920:-1:flags=lanczos[x];[x][1:v]paletteuse=dither=sierra2_4a" output.gif<br>
nohup mpvpaper -o "--loop --no-audio" eDP-1 ~/Pictures/wallpapers/<video.mp4> >/dev/null 2>&1 &

# xuat man hinh roi
sudo pacman -S nvidia-dkms nvidia-utils nvidia-settings nvidia-prime

sudo cp -rn /home/truong/.config/etc/* /etc/

# tat alt firefox
ui.key.menuAccessKeyFocuses

# tu dong de xuat khi tim kiem firefox
<img width="1023" height="628" alt="Image" src="https://github.com/user-attachments/assets/0f10f5ab-c0d5-4893-8c6d-7e9ea9a6f39f" />

# pin 80%
sudo pacman -S tlp tlp-rdw
