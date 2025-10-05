#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# --- Workspaces configuration by Xuan Truong ---

# GDK BACKEND. Đổi sang wayland hoặc x11 nếu gặp vấn đề
BACKEND=wayland

# Kiểm tra nếu rofi hoặc yad đang chạy và đóng chúng lại
if pidof rofi > /dev/null; then
  pkill rofi
fi

if pidof yad > /dev/null; then
  pkill yad
fi

# Khởi chạy yad với chiều rộng và chiều cao đã tính toán
GDK_BACKEND=$BACKEND yad \
    --center \
    --title="KooL Quick Cheat Sheet" \
    --no-buttons \
    --list \
    --column=Key: \
    --column=Description: \
    --column=Command: \
    --timeout-indicator=bottom \
"ESC" "close this app" "" " = " "SUPER KEY (Windows Key Button)" "(SUPER KEY)" \
" SHIFT K" "Tìm kiếm phím tắt" "(Tìm tất cả phím tắt qua rofi)" \
" SHIFT E" "Menu cài đặt Hyprland của KooL" "" \
"" "" "" \
" enter" "Terminal" "(kitty)" \
" SHIFT enter" "Terminal thả xuống" " Q để đóng" \
" B" "Mở trình duyệt" "(Trình duyệt mặc định)" \
" A" "Tổng quan Desktop" "(AGS - nếu đã chọn cài đặt)" \
" D" "Trình khởi chạy ứng dụng" "(rofi-wayland)" \
" E" "Mở trình quản lý tệp" "(Thunar)" \
" S" "Tìm kiếm Google bằng rofi" "(rofi)" \
" Q" "đóng cửa sổ đang hoạt động" "(không kill)" \
" Shift Q " "kill cửa sổ đang hoạt động" "(kill)" \
" ALT scroll chuột lên/xuống   " "Phóng to Desktop" "Kính lúp màn hình" \
" Alt V" "Trình quản lý Clipboard" "(cliphist)" \
" W" "Chọn hình nền" "(Menu hình nền)" \
" Shift W" "Chọn hiệu ứng hình nền" "(imagemagick + swww)" \
"CTRL ALT W" "Hình nền ngẫu nhiên" "(qua swww)" \
" CTRL ALT B" "Ẩn/Hiện Waybar" "waybar" \
" CTRL B" "Chọn kiểu waybar" "(kiểu waybar)" \
" ALT B" "Chọn bố cục waybar" "(bố cục waybar)" \
" ALT R" "Tải lại Waybar swaync Rofi" "KIỂM TRA THÔNG BÁO TRƯỚC!!!" \
" SHIFT N" "Mở bảng thông báo" "Trung tâm thông báo swaync" \
" Ctrl S" "chụp toàn màn hình" "(grim)" \
" Shift S" "chụp vùng chọn" "(swappy)" \
" Shift Print" "chụp vùng chọn" "(grim + slurp)" \
" CTRL Print" "chụp màn hình hẹn giờ 5 giây " "(grim)" \
" CTRL SHIFT Print" "chụp màn hình hẹn giờ 10 giây " "(grim)" \
"ALT Print" "Chụp cửa sổ đang hoạt động" "chỉ cửa sổ hiện tại" \
"CTRL ALT P" "menu nguồn" "(wlogout)" \
"CTRL ALT L" "khóa màn hình" "(hyprlock)" \
"CTRL ALT Del" "Thoát Hyprland" "(LƯU Ý: Hyprland sẽ thoát ngay lập tức)" \
" SHIFT F" "Toàn màn hình" "Chuyển sang chế độ toàn màn hình" \
" CTL F" "Giả toàn màn hình" "Chuyển sang chế độ giả toàn màn hình" \
" ALT L" "Chuyển đổi bố cục Dwindle | Master" "Bố cục Hyprland" \
" SPACEBAR" "Chuyển sang chế độ nổi" "cửa sổ đơn" \
" ALT SPACEBAR" "Chuyển tất cả cửa sổ sang chế độ nổi" "tất cả cửa sổ" \
" ALT O" "Bật/Tắt Blur" "làm mờ bình thường hoặc ít hơn" \
" CTRL O" "Bật/Tắt độ mờ đục" "chỉ cửa sổ đang hoạt động" \
" Shift A" "Menu hiệu ứng" "Chọn hiệu ứng qua rofi" \
" CTRL R" "Menu giao diện Rofi" "Chọn giao diện Rofi qua rofi" \
" CTRL Shift R" "Menu giao diện Rofi v2" "Chọn giao diện qua Theme Selector (đã chỉnh sửa)" \
" SHIFT G" "Chế độ chơi game" "TẮT hoặc BẬT tất cả hiệu ứng" \
" ALT E" "Biểu tượng cảm xúc Rofi" "Emoticon" \
" H" "Mở bảng phím tắt nhanh này" "" \
"" "" "" \
"More tips:" "https://github.com/JaKooLit/Hyprland-Dots/wiki" ""\
