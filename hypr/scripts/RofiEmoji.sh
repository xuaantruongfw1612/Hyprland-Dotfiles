#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# --- Workspaces configuration by Xuan Truong ---

# Variables
rofi_theme="$HOME/.config/rofi/config-emoji.rasi"
msg='** note ** 👀 Click or Return to choose || Ctrl V to Paste'

# Check if rofi is already running
if pidof rofi > /dev/null; then
  pkill rofi
fi

sed '1,/^# # DATA # #$/d' "$0" | \
rofi -i -dmenu -mesg "$msg" -config $rofi_theme | \
awk '{print $1}' | \
head -n 1 | \
tr -d '\n' | \
wl-copy

exit

# # DATA # #
😀 Grinning face — mặt cười tươi, vui vẻ chung.
😃 Grinning face with big eyes — cười toe toét, mắt mở to, rất vui.
😄 Grinning face with smiling eyes — cười rạng rỡ, mắt cười, thân thiện.
😁 Beaming face with smiling eyes — cười tít mắt, phấn khích.
😆 Grinning squinting face — cười nhắm tịt mắt, khoái chí.
😅 Grinning face with sweat — cười trừ/nhẹ nhõm, toát mồ hôi.
🤣 Rolling on the floor laughing — cười lăn lộn, siêu buồn cười.
😂 Face with tears of joy — cười ra nước mắt.
🙂 Slightly smiling face — mỉm cười nhẹ, thân thiện.
🙃 Upside-down face — mặt úp ngược, đùa cợt/trớ trêu.
😉 Winking face — nháy mắt, tinh nghịch/ẩn ý.
😊 Smiling face with smiling eyes — mỉm cười ấm áp, hài lòng.
😇 Smiling face with halo — mặt cười thiên thần, vô tội/ngoan.
🥰 Smiling face with hearts — mặt cười với tim, yêu mến/âu yếm.
😍 Smiling face with heart-eyes — mắt trái tim, mê tít/yêu thích.
🤩 Star-struck — choáng ngợp/ngưỡng mộ.
😘 Face blowing a kiss — hôn gió, trìu mến/cảm ơn.
😗 Kissing face — mặt hôn, thân mật.
☺️ Smiling face — mặt cười dịu, e thẹn/hạnh phúc.
😚 Kissing face with closed eyes — hôn mắt nhắm, trìu mến.
😙 Kissing face with smiling eyes — hôn với mắt cười, thân mật vui vẻ.
😋 Face savoring food — ngon tuyệt, thèm/đồ ăn ngon.
😛 Face with tongue — lè lưỡi, trêu đùa.
😜 Winking face with tongue — nháy mắt lè lưỡi, nghịch/ngốc nghếch.
🤪 Zany face — lầy lội/tưng tửng.
😝 Squinting face with tongue — lè lưỡi mắt nhắm, đùa quá trớn.
🤑 Money-mouth face — miệng tiền, “mùi tiền”/tham tiền.
🤗 Hugging face — ôm, an ủi/ủng hộ.
🤭 Face with hand over mouth — úi chà/giật mình/che miệng cười.
🤫 Shushing face — suỵt, giữ im lặng/bí mật.
🤔 Thinking face — suy nghĩ/cân nhắc.
🤐 Zipper-mouth face — khóa miệng, giữ bí mật/không nói.
🤨 Face with raised eyebrow — nhướng mày, nghi ngờ.
😐 Neutral face — bình thản, “meh”.
😑 Expressionless face — vô cảm, đơ/khó nói.
😶 Face without mouth — không nói nên lời/giữ im lặng.
😏 Smirking face — cười mỉa/cười đểu/đắc ý.
😒 Unamused face — không ấn tượng/khó chịu.
🙄 Face with rolling eyes — đảo mắt, chán nản/cà khịa.
😬 Grimacing face — nhăn nhó/khó xử.
🤥 Lying face — nói dối/mũi dài.
😌 Relieved face — thở phào/nhẹ nhõm.
😔 Pensive face — trầm tư/buồn.
😪 Sleepy face — buồn ngủ/mệt.
🤤 Drooling face — chảy dãi, thèm thuồng.
😴 Sleeping face — ngủ khò/rất buồn ngủ.
😷 Face with medical mask — đeo khẩu trang/ốm.
🤒 Face with thermometer — sốt/cảm.
🤕 Face with head bandage — băng đầu, bị thương.
🤢 Nauseated face — buồn nôn/ghê.
🤮 Face vomiting — nôn/ói.
🤧 Sneezing face — hắt hơi/dị ứng/cảm.
🥵 Hot face — nóng bức/quá nhiệt.
🥶 Cold face — lạnh cóng/đóng băng.
🥴 Woozy face — xây xẩm/chếnh choáng.
😵 Dizzy face — choáng/váng đầu.
🤯 Exploding head — nổ não/sốc tận óc.
🤠 Cowboy hat face — đội mũ cao bồi, phấn khởi/“yee-haw”.
🥳 Partying face — ăn mừng/tiệc tùng.
😎 Smiling face with sunglasses — ngầu/tự tin.
🤓 Nerd face — mọt sách/ấu trĩ đáng yêu.
🧐 Face with monocle — soi xét/tra xét/kỹ tính.
😕 Confused face — bối rối/khó hiểu.
😟 Worried face — lo lắng.
🙁 Slightly frowning face — hơi buồn/thất vọng.
☹️ Frowning face — buồn/chán nản.
😮 Face with open mouth — ngạc nhiên/“wow”.
😯 Hushed face — sững sờ/nín lặng.
😲 Astonished face — sửng sốt/choáng.
😳 Flushed face — đỏ mặt/ngại/ngượng.
🥺 Pleading face — van nài/năn nỉ/mắt cún con.
😦 Frowning face with open mouth — buồn kèm ngạc nhiên.
😧 Anguished face — đau khổ/bàng hoàng.
😨 Fearful face — sợ hãi/kinh hãi.
😰 Anxious face with sweat — lo âu toát mồ hôi.
😥 Sad but relieved face — buồn nhưng nhẹ nhõm.
😢 Crying face — rơi lệ/buồn bã.
😭 Loudly crying face — khóc to/nức nở.
😱 Face screaming in fear — hét lên vì sợ/hoảng sợ.
😖 Confounded face — bối rối/khổ sở/khó chịu.
😣 Persevering face — gắng chịu/kiên trì dù khó khăn.
😞 Disappointed face — thất vọng/buồn.
😓 Downcast face with sweat — buồn + toát mồ hôi/áp lực.
😩 Weary face — mệt mỏi/kiệt sức/buồn chán.
😫 Tired face — mệt rã rời/kêu than.
🥱 Yawning face — ngáp/buồn ngủ.
😤 Face with steam from nose — hầm hầm/tự ái/tự hào bốc hỏa.
😡 Pouting face — cáu kỉnh/tức giận.
😠 Angry face — giận dữ/khó chịu.
🤬 Face with symbols on mouth — chửi thề/tuôn lời tục tĩu.
😈 Smiling face with horns — cười gian/nham hiểm/quậy phá.
👿 Angry face with horns — quỷ dữ/giận dữ.
💀 Skull — đầu lâu/chết/chết chóc.
☠️ Skull and crossbones — đầu lâu xương chéo/độc hại/nguy hiểm chết người.
💩 Pile of poo — cục phân/thảm họa/tệ hại.
🤡 Clown face — mặt hề/nực cười/ngu ngốc.
👹 Ogre — yêu quái/ogre (mặt nạ đỏ Nhật)/đáng sợ.
👺 Goblin — yêu tinh/tengu (mặt nạ đỏ Nhật)/gian ác.
👻 Ghost — ma/ma quái/halloween.
👽 Alien — người ngoài hành tinh/kỳ quặc.
👾 Alien monster — quái vật ngoài hành tinh/phong cách trò chơi.
🤖 Robot — rô-bốt/máy móc.
😺 Grinning cat — mèo cười tươi/vui vẻ.
😸 Grinning cat with smiling eyes — mèo cười mắt híp.
😹 Cat with tears of joy — mèo cười ra nước mắt.
😻 Smiling cat with heart-eyes — mèo mắt trái tim/đang yêu.
😼 Cat with wry smile — mèo cười đểu/cười nhếch mép.
😽 Kissing cat — mèo hôn/trìu mến.
🙀 Weary cat — mèo hoảng sợ/kêu thét.
😿 Crying cat — mèo rơi lệ/buồn.
😾 Pouting cat — mèo bĩu môi/càu nhàu.
🙈 See-no-evil monkey — khỉ bịt mắt/không nhìn điều xấu.
🙉 Hear-no-evil monkey — khỉ bịt tai/không nghe điều xấu.
🙊 Speak-no-evil monkey — khỉ bịt miệng/không nói điều xấu.
💋 Kiss mark — dấu môi/hôn.
💌 Love letter — thư tình.
💘 Heart with arrow — trái tim trúng tên/yêu.
💝 Heart with ribbon — trái tim buộc nơ/quà tình yêu.
💖 Sparkling heart — trái tim lấp lánh.
💗 Growing heart — trái tim lớn dần/trào dâng.
💓 Beating heart — trái tim đập/thổn thức.
💞 Revolving hearts — trái tim xoay vòng/qua lại.
💕 Two hearts — hai trái tim/tình cảm đôi lứa.
💟 Heart decoration — trang trí trái tim/biểu tượng tim.
❣️ Heart exclamation — dấu cảm thán hình tim.
💔 Broken heart — trái tim tan vỡ.
❤️ Red heart — trái tim đỏ/tình yêu.
🧡 Orange heart — trái tim cam.
💛 Yellow heart — trái tim vàng.
💚 Green heart — trái tim xanh lá.
💙 Blue heart — trái tim xanh dương.
💜 Purple heart — trái tim tím.
🤎 Brown heart — trái tim nâu.
🖤 Black heart — trái tim đen/lạnh lùng/đen tối.
🤍 White heart — trái tim trắng/tinh khiết.
💯 Hundred points — 100 điểm/hoàn hảo.
💢 Anger symbol — ký hiệu giận dữ/bực bội.
💥 Collision — va chạm/nổ/bùng nổ.
💫 Dizzy — chóng mặt/ảo diệu/lấp lánh.
💦 Sweat droplets — giọt nước/mồ hôi/văng nước.
💨 Dashing away — vệt gió/chạy nhanh/buột hơi.
🕳️ Hole — cái hố/cú quê/ẩn náu.
💣 Bomb — bom/nổ/nguy hiểm.
💬 Speech balloon — bong bóng thoại/tin nhắn.
👁️‍🗨️ Eye in speech bubble — mắt trong bong bóng thoại/thông tin.
🗨️ Left speech bubble — bong bóng thoại trái/tin nhắn.
🗯️ Right anger bubble — bong bóng giận dữ/phụ đề phải.
💭 Thought balloon — bong bóng suy nghĩ/giấc mơ.
💤 Zzz — ngủ/tiếng ngáy/buồn ngủ.
👋 Waving hand — vẫy tay/chào/tạm biệt.
🤚 Raised back of hand — mu bàn tay giơ lên/chào/ra hiệu.
🖐️ Hand with fingers splayed — xòe tay/năm ngón.
✋ Raised hand — giơ tay/dừng/làm ơn dừng lại.
🖖 Vulcan salute — chào kiểu Vulcan/Star Trek.
👌 OK hand — tay OK/hoàn hảo/ổn.
🤏 Pinching hand — véo/nhỏ xíu/rất bé.
✌️ Victory hand — tay chữ V/hòa bình/chiến thắng.
🤞 Crossed fingers — bắt chéo ngón tay/cầu may.
🤟 Love-you gesture — ký hiệu “yêu bạn”.
🤘 Sign of the horns — “rock on”/ký hiệu sừng/quậy.
🤙 Call me hand — “gọi cho tôi”/shaka.
👈 Backhand index pointing left — chỉ trái.
👉 Backhand index pointing right — chỉ phải.
👆 Backhand index pointing up — chỉ lên.
🖕 Middle finger — ngón giữa/xúc phạm.
👇 Backhand index pointing down — chỉ xuống.
☝️ Index pointing up — giơ ngón trỏ lên/lưu ý.
👍 Thumbs up — thích/đồng ý/tuyệt.
👎 Thumbs down — không thích/không đồng ý.
✊ Raised fist — nắm đấm giơ cao/đoàn kết.
👊 Oncoming fist — đấm tới/đấm đối mặt.
🤛 Left-facing fist — đấm trái/đụng nắm tay.
🤜 Right-facing fist — đấm phải/đụng nắm tay.
👏 Clapping hands — vỗ tay/tán thưởng.
🙌 Raising hands — giơ tay ăn mừng/hoan hô.
👐 Open hands — dang tay/mở rộng/đón nhận.
🤲 Palms up together — chắp tay/hứng tay/cầu nguyện.
🤝 Handshake — bắt tay/thỏa thuận.
🙏 Folded hands — chắp tay/cầu nguyện/namaste/cầu mong.
✍️ Writing hand — tay viết/bút bi/ghi chép.
💅 Nail polish — sơn móng/tô điểm làm đẹp.
🤳 Selfie — chụp ảnh tự sướng.
💪 Flexed biceps — gồng cơ bắp/mạnh mẽ.
🦾 Mechanical arm — tay cơ học/hỗ trợ tiếp cận.
🦿 Mechanical leg — chân cơ học/hỗ trợ tiếp cận.
🦵 Leg — cái chân/đá.
🦶 Foot — bàn chân/dẫm/giậm.
👂 Ear — tai/nghe/âm thanh.
🦻 Ear with hearing aid — tai có máy trợ thính/tiếp cận.
👃 Nose — mũi/ngửi/hít.
🧠 Brain — não/bộ não/thông minh.
🦷 Tooth — răng/nha khoa.
🦴 Bone — xương/bộ xương.
👀 Eyes — đôi mắt/nhìn/dõi theo.
👁️ Eye — con mắt/nhìn/chăm chú.
👅 Tongue — lưỡi/đùa nghịch.
👄 Mouth — miệng/hôn.
👶 Baby — em bé/trẻ sơ sinh.
🧒 Child — trẻ em/trung tính giới.
👦 Boy — bé trai/thiếu niên.
👧 Girl — bé gái/thiếu nữ.
🧑 Person — người (trung tính giới).
👱 Person blond hair — người tóc vàng.
👨 Man — đàn ông/người cha/quý ông.
🧔 Man: beard — đàn ông có râu.
👨‍🦰 Man: red hair — đàn ông tóc đỏ.
👨‍🦱 Man: curly hair — đàn ông tóc xoăn.
👨‍🦳 Man: white hair — đàn ông tóc bạc/người lớn tuổi.
👨‍🦲 Man: bald — đàn ông hói.
👩 Woman — phụ nữ/cô/bà.
👩‍🦰 Woman: red hair — phụ nữ tóc đỏ.
🧑‍🦰 Person: red hair — người tóc đỏ (trung tính).
👩‍🦱 Woman: curly hair — phụ nữ tóc xoăn.
🧑‍🦱 Person: curly hair — người tóc xoăn (trung tính).
👩‍🦳 Woman: white hair — phụ nữ tóc bạc/người lớn tuổi.
🧑‍🦳 Person: white hair — người tóc bạc (trung tính).
👩‍🦲 Woman: bald — phụ nữ hói.
🧑‍🦲 Person: bald — người hói (trung tính).
👱‍♀️ Woman blond hair — phụ nữ tóc vàng.
👱‍♂️ Man blond hair — đàn ông tóc vàng.
🧓 Older person — người lớn tuổi (trung tính).
👴 Old man — ông lão/người già nam.
👵 Old woman — bà lão/người già nữ.
🙍 Person frowning — người cau mày/lo lắng.
🙍‍♂️ Man frowning — đàn ông cau mày/buồn/nản.
🙍‍♀️ Woman frowning — phụ nữ cau mày/buồn/nản.
🙎 Person pouting — người bĩu môi/khó chịu.
🙎‍♂️ Man pouting — đàn ông bĩu môi.
🙎‍♀️ Woman pouting — phụ nữ bĩu môi.
🙅 Person gesturing no — ra hiệu “không”/từ chối.
🙅‍♂️ Man gesturing no — đàn ông ra hiệu “không”.
🙅‍♀️ Woman gesturing no — phụ nữ ra hiệu “không”.
🙆 Person gesturing OK — ra hiệu “OK”/đồng ý.
🙆‍♂️ Man gesturing OK — đàn ông ra hiệu “OK”.
🙆‍♀️ Woman gesturing OK — phụ nữ ra hiệu “OK”.
💁 Person tipping hand — người nghiêng tay/ra vẻ “xin mời/thông tin đây”.
💁‍♂️ Man tipping hand — đàn ông “xin mời/thông tin đây”.
💁‍♀️ Woman tipping hand — phụ nữ “xin mời/thông tin đây”.
🙋 Person raising hand — giơ tay/đặt câu hỏi/tình nguyện.
🙋‍♂️ Man raising hand — đàn ông giơ tay.
🙋‍♀️ Woman raising hand — phụ nữ giơ tay.
🧏 Deaf person — người khiếm thính (tiếp cận).
🧏‍♂️ Deaf man — đàn ông khiếm thính.
🧏‍♀️ Deaf woman — phụ nữ khiếm thính.
🙇 Person bowing — cúi đầu/kính cẩn.
🙇‍♂️ Man bowing — đàn ông cúi chào.
🙇‍♀️ Woman bowing — phụ nữ cúi chào.
🤦 Person facepalming — đập trán/chán nản/thất vọng.
🤦‍♂️ Man facepalming — đàn ông đập trán.
🤦‍♀️ Woman facepalming — phụ nữ đập trán.
🤷 Person shrugging — nhún vai/không biết/không quan tâm lắm.
🤷‍♂️ Man shrugging — đàn ông nhún vai.
🤷‍♀️ Woman shrugging — phụ nữ nhún vai.
🧑‍⚕️ Health worker — nhân viên y tế.
👨‍⚕️ Man health worker — nhân viên y tế nam/bác sĩ/điều dưỡng nam.
👩‍⚕️ Woman health worker — nhân viên y tế nữ/bác sĩ/điều dưỡng nữ.
🧑‍🎓 Student — sinh viên/học sinh.
👨‍🎓 Man student — nam sinh/cử nhân nam.
👩‍🎓 Woman student — nữ sinh/cử nhân nữ.
🧑‍🏫 Teacher — giáo viên/giảng viên.
👨‍🏫 Man teacher — thầy giáo/giảng viên nam.
👩‍🏫 Woman teacher — cô giáo/giảng viên nữ.
🧑‍⚖️ Judge — thẩm phán.
👨‍⚖️ Man judge — thẩm phán nam.
👩‍⚖️ Woman judge — thẩm phán nữ.
🧑‍🌾 Farmer — nông dân.
👨‍🌾 Man farmer — nông dân nam/nông phu.
👩‍🌾 Woman farmer — nông dân nữ.
🧑‍🍳 Cook — đầu bếp/người nấu ăn.
👨‍🍳 Man cook — đầu bếp nam.
👩‍🍳 Woman cook — đầu bếp nữ.
🧑‍🔧 Mechanic — thợ máy/kỹ thuật viên.
👨‍🔧 Man mechanic — thợ máy nam/thợ sửa ống nước nam.
👩‍🔧 Woman mechanic — thợ máy nữ/thợ sửa ống nước nữ.
🧑‍🏭 Factory worker — công nhân nhà máy/lao động công xưởng.
👨‍🏭 Man factory worker — công nhân nam/nhà máy.
👩‍🏭 Woman factory worker — công nhân nữ/nhà máy.
🧑‍💼 Office worker — nhân viên văn phòng/kinh doanh.
👨‍💼 Man office worker — nhân viên văn phòng nam/quản lý nam.
👩‍💼 Woman office worker — nhân viên văn phòng nữ/quản lý nữ.
🧑‍🔬 Scientist — nhà khoa học/hóa học/sinh học/vật lý.
👨‍🔬 Man scientist — nhà khoa học nam/kỹ sư/nhà hóa-sinh-lý nam.
👩‍🔬 Woman scientist — nhà khoa học nữ/kỹ sư/nhà hóa-sinh-lý nữ.
🧑‍💻 Technologist — chuyên gia công nghệ/lập trình viên.
👨‍💻 Man technologist — lập trình viên nam/kỹ sư phần mềm nam.
👩‍💻 Woman technologist — lập trình viên nữ/kỹ sư phần mềm nữ.
🧑‍🎤 Singer — ca sĩ/nghệ sĩ biểu diễn.
👨‍🎤 Man singer — ca sĩ nam/nghệ sĩ giải trí nam.
👩‍🎤 Woman singer — ca sĩ nữ/nghệ sĩ giải trí nữ.
🧑‍🎨 Artist — nghệ sĩ/họa sĩ/sáng tạo.
👨‍🎨 Man artist — họa sĩ nam/nghệ sĩ nam.
👩‍🎨 Woman artist — họa sĩ nữ/nghệ sĩ nữ.
🧑‍✈️ Pilot — phi công.
👨‍✈️ Man pilot — phi công nam/phi hành gia nam (dân dụng).
👩‍✈️ Woman pilot — phi công nữ.
🧑‍🚀 Astronaut — phi hành gia.
👨‍🚀 Man astronaut — phi hành gia nam.
👩‍🚀 Woman astronaut — phi hành gia nữ.
🧑‍🚒 Firefighter — lính cứu hỏa.
👨‍🚒 Man firefighter — lính cứu hỏa nam.
👩‍🚒 Woman firefighter — lính cứu hỏa nữ.
👮 Police officer — cảnh sát/công an.
👮‍♂️ Man police officer — cảnh sát nam.
👮‍♀️ Woman police officer — cảnh sát nữ.
🕵️ Detective — thám tử/điệp viên.
🕵️‍♂️ Man detective — thám tử nam.
🕵️‍♀️ Woman detective — thám tử nữ.
💂 Guard — vệ binh/cận vệ.
💂‍♂️ Man guard — vệ binh nam (Hoàng gia Anh).
💂‍♀️ Woman guard — vệ binh nữ (Hoàng gia Anh).
👷 Construction worker — công nhân xây dựng/thợ xây.
👷‍♂️ Man construction worker — công nhân xây dựng nam.
👷‍♀️ Woman construction worker — công nhân xây dựng nữ.
🤴 Prince — hoàng tử.
👸 Princess — công chúa.
👳 Person wearing turban — người đội khăn xếp/khăn xếp truyền thống.
👳‍♂️ Man wearing turban — đàn ông đội khăn xếp.
👳‍♀️ Woman wearing turban — phụ nữ đội khăn xếp.
👲 Man with skullcap — đàn ông đội mũ chỏm.
🧕 Woman with headscarf — phụ nữ đội khăn trùm/hijab.
🤵 Man in tuxedo — chú rể/đàn ông mặc tuxedo.
👰 Bride with veil — cô dâu/đội khăn voan.
🤰 Pregnant woman — phụ nữ mang thai.
🤱 Breast-feeding — cho con bú/nuôi con bú mẹ.
👼 Baby angel — thiên thần bé nhỏ/có hào quang/cánh.
🎅 Santa Claus — ông già Noel.
🤶 Mrs. Claus — bà Noel.
🦸 Superhero — siêu anh hùng.
🦸‍♂️ Man superhero — siêu anh hùng nam.
🦸‍♀️ Woman superhero — siêu anh hùng nữ.
🦹 Supervillain — siêu phản diện.
🦹‍♂️ Man supervillain — siêu phản diện nam.
🦹‍♀️ Woman supervillain — siêu phản diện nữ.
🧙 Mage — pháp sư/thuật sĩ.
🧙‍♂️ Man mage — pháp sư nam/thuật sĩ nam.
🧙‍♀️ Woman mage — pháp sư nữ/phù thủy.
🧚 Fairy — nàng tiên/tiên nhỏ/có cánh.
🧚‍♂️ Man fairy — tiên nam.
🧚‍♀️ Woman fairy — tiên nữ.
🧛 Vampire — ma cà rồng.
🧛‍♂️ Man vampire — ma cà rồng nam/Dracula.
🧛‍♀️ Woman vampire — ma cà rồng nữ.
🧜 Merperson — người cá (trung tính).
🧜‍♂️ Merman — người cá nam.
🧜‍♀️ Mermaid — nàng tiên cá/người cá nữ.
🧝 Elf — yêu tinh/tiên tộc.
🧝‍♂️ Man elf — yêu tinh nam/tiên nam.
🧝‍♀️ Woman elf — yêu tinh nữ/tiên nữ.
🧞 Genie — thần đèn/tiên thần ban điều ước.
🧞‍♂️ Man genie — thần đèn nam.
🧞‍♀️ Woman genie — thần đèn nữ.
🧟 Zombie — thây ma/xác sống.
🧟‍♂️ Man zombie — xác sống nam.
🧟‍♀️ Woman zombie — xác sống nữ.
💆 Person getting massage — được mát-xa/thư giãn.
💆‍♂️ Man getting massage — đàn ông được mát-xa.
💆‍♀️ Woman getting massage — phụ nữ được mát-xa.
💇 Person getting haircut — cắt tóc/tạo kiểu tóc.
💇‍♂️ Man getting haircut — đàn ông cắt tóc.
💇‍♀️ Woman getting haircut — phụ nữ cắt tóc.
🚶 Person walking — đi bộ/di chuyển.
🚶‍♂️ Man walking — đàn ông đi bộ.
🚶‍♀️ Woman walking — phụ nữ đi bộ.
🧍 Person standing — đứng yên/đứng thẳng.
🧍‍♂️ Man standing — đàn ông đứng.
🧍‍♀️ Woman standing — phụ nữ đứng.
🧎 Person kneeling — quỳ/quỳ gối/tôn kính.
🧎‍♂️ Man kneeling — đàn ông quỳ.
🧎‍♀️ Woman kneeling — phụ nữ quỳ.
🧑‍🦯 Person with cane — người dùng gậy dò đường (mù/khuyết tật thị giác).
👨‍🦯 Man with cane — đàn ông dùng gậy dò đường.
👩‍🦯 Woman with cane — phụ nữ dùng gậy dò đường.
🧑‍🦼 Person in motorized wheelchair — người dùng xe lăn điện.
👨‍🦼 Man in motorized wheelchair — đàn ông dùng xe lăn điện.
👩‍🦼 Woman in motorized wheelchair — phụ nữ dùng xe lăn điện.
🧑‍🦽 Person in manual wheelchair — người dùng xe lăn tay.
👨‍🦽 Man in manual wheelchair — đàn ông dùng xe lăn tay.
👩‍🦽 Woman in manual wheelchair — phụ nữ dùng xe lăn tay.
🏃 Person running — chạy/di chuyển nhanh.
🏃‍♂️ Man running — đàn ông chạy.
🏃‍♀️ Woman running — phụ nữ chạy.
💃 Woman dancing — phụ nữ nhảy múa/vui vẻ.
🕺 Man dancing — đàn ông nhảy múa/sôi động.
🕴️ Man in suit levitating — người đàn ông mặc vest bay lơ lửng/nhảy cao.
👯 People with bunny ears — người đội tai thỏ/biểu diễn/hóa trang.
👯‍♂️ Men with bunny ears — đàn ông đội tai thỏ/biểu diễn.
👯‍♀️ Women with bunny ears — phụ nữ đội tai thỏ/biểu diễn.
🧖 Person in steamy room — xông hơi/phòng xông/hư giãn spa.
🧖‍♂️ Man in steamy room — đàn ông trong phòng xông hơi/sauna.
🧖‍♀️ Woman in steamy room — phụ nữ trong phòng xông hơi/sauna.
🧗 Person climbing — người leo núi/thể thao leo.
🧗‍♂️ Man climbing — đàn ông leo núi/leo đá.
🧗‍♀️ Woman climbing — phụ nữ leo núi/leo đá.
🤺 Person fencing — người đấu kiếm.
🏇 Horse racing — đua ngựa/cược đua.
⛷️ Skier — người trượt tuyết.
🏂 Snowboarder — người trượt ván tuyết.
🏌️ Person golfing — người chơi golf.
🏌️‍♂️ Man golfing — đàn ông chơi golf.
🏌️‍♀️ Woman golfing — phụ nữ chơi golf.
🏄 Person surfing — người lướt sóng.
🏄‍♂️ Man surfing — đàn ông lướt sóng.
🏄‍♀️ Woman surfing — phụ nữ lướt sóng.
🚣 Person rowing boat — chèo thuyền.
🚣‍♂️ Man rowing boat — đàn ông chèo thuyền.
🚣‍♀️ Woman rowing boat — phụ nữ chèo thuyền.
🏊 Person swimming — bơi lội.
🏊‍♂️ Man swimming — đàn ông bơi.
🏊‍♀️ Woman swimming — phụ nữ bơi.
⛹️ Person bouncing ball — người đập bóng/chơi bóng.
⛹️‍♂️ Man bouncing ball — đàn ông đập bóng.
⛹️‍♀️ Woman bouncing ball — phụ nữ đập bóng.
🏋️ Person lifting weights — nâng tạ/tập tạ.
🏋️‍♂️ Man lifting weights — đàn ông nâng tạ.
🏋️‍♀️ Woman lifting weights — phụ nữ nâng tạ.
🚴 Person biking — đạp xe.
🚴‍♂️ Man biking — đàn ông đạp xe.
🚴‍♀️ Woman biking — phụ nữ đạp xe.
🚵 Person mountain biking — đạp xe địa hình.
🚵‍♂️ Man mountain biking — đàn ông đạp xe địa hình.
🚵‍♀️ Woman mountain biking — phụ nữ đạp xe địa hình.
🤸 Person cartwheeling — nhào lộn/wheel nhào.
🤸‍♂️ Man cartwheeling — đàn ông nhào lộn.
🤸‍♀️ Woman cartwheeling — phụ nữ nhào lộn.
🤼 People wrestling — đấu vật.
🤼‍♂️ Men wrestling — đàn ông đấu vật.
🤼‍♀️ Women wrestling — phụ nữ đấu vật.
🤽 Person playing water polo — chơi bóng nước.
🤽‍♂️ Man playing water polo — đàn ông chơi bóng nước.
🤽‍♀️ Woman playing water polo — phụ nữ chơi bóng nước.
🤾 Person playing handball — chơi bóng ném.
🤾‍♂️ Man playing handball — đàn ông chơi bóng ném.
🤾‍♀️ Woman playing handball — phụ nữ chơi bóng ném.
🤹 Person juggling — tung hứng/biểu diễn cân bằng.
🤹‍♂️ Man juggling — đàn ông tung hứng/đa nhiệm.
🤹‍♀️ Woman juggling — phụ nữ tung hứng/đa nhiệm.
🧘 Person in lotus position — ngồi thiền tư thế hoa sen.
🧘‍♂️ Man in lotus position — đàn ông ngồi thiền (yoga/thiền định).
🧘‍♀️ Woman in lotus position — phụ nữ ngồi thiền (yoga/thiền định).
🛀 Person taking bath — tắm bồn/làm sạch.
🛌 Person in bed — nằm trên giường/nghỉ ngơi.
🧑‍🤝‍🧑 People holding hands — nắm tay/bạn bè.
👭 Women holding hands — hai phụ nữ nắm tay/cặp đôi/bạn thân.
👫 Woman and man holding hands — nữ và nam nắm tay/cặp đôi/hẹn hò.
👬 Men holding hands — hai đàn ông nắm tay/cặp đôi/bạn thân.
💏 Kiss — hôn/cặp đôi hôn.
👩‍❤️‍💋‍👨 Kiss: woman, man — nữ hôn nam.
👨‍❤️‍💋‍👨 Kiss: man, man — nam hôn nam.
👩‍❤️‍💋‍👩 Kiss: woman, woman — nữ hôn nữ.
💑 Couple with heart — cặp đôi với trái tim/yêu đương.
👩‍❤️‍👨 Couple with heart: woman, man — cặp đôi nữ-nam có trái tim.
👨‍❤️‍👨 Couple with heart: man, man — cặp đôi nam-nam có trái tim.
👩‍❤️‍👩 Couple with heart: woman, woman — cặp đôi nữ-nữ có trái tim.
👪 Family — gia đình/cha mẹ và con cái.
👨‍👩‍👦 Family: man, woman, boy — gia đình: bố, mẹ, con trai.
👨‍👩‍👧 Family: man, woman, girl — gia đình: bố, mẹ, con gái.
👨‍👩‍👧‍👦 Family: man, woman, girl, boy — gia đình: bố, mẹ, con gái, con trai.
👨‍👩‍👦‍👦 Family: man, woman, boy, boy — gia đình: bố, mẹ, 2 con trai.
👨‍👩‍👧‍👧 Family: man, woman, girl, girl — gia đình: bố, mẹ, 2 con gái.
👨‍👨‍👦 Family: man, man, boy — gia đình: 2 bố và con trai.
👨‍👨‍👧 Family: man, man, girl — gia đình: 2 bố và con gái.
👨‍👨‍👧‍👦 Family: man, man, girl, boy — gia đình: 2 bố, con gái, con trai.
👨‍👨‍👦‍👦 Family: man, man, boy, boy — gia đình: 2 bố, 2 con trai.
👨‍👨‍👧‍👧 Family: man, man, girl, girl — gia đình: 2 bố, 2 con gái.
👩‍👩‍👦 Family: woman, woman, boy — gia đình: 2 mẹ và con trai.
👩‍👩‍👧 Family: woman, woman, girl — gia đình: 2 mẹ và con gái.
👩‍👩‍👧‍👦 Family: woman, woman, girl, boy — gia đình: 2 mẹ, con gái, con trai.
👩‍👩‍👦‍👦 Family: woman, woman, boy, boy — gia đình: 2 mẹ, 2 con trai.
👩‍👩‍👧‍👧 Family: woman, woman, girl, girl — gia đình: 2 mẹ, 2 con gái.
👨‍👦 Family: man, boy — gia đình: bố và con trai.
👨‍👦‍👦 Family: man, boy, boy — gia đình: bố và 2 con trai.
👨‍👧 Family: man, girl — gia đình: bố và con gái.
👨‍👧‍👦 Family: man, girl, boy — gia đình: bố, con gái, con trai.
👨‍👧‍👧 Family: man, girl, girl — gia đình: bố và 2 con gái.
👩‍👦 Family: woman, boy — gia đình: mẹ và con trai.
👩‍👦‍👦 Family: woman, boy, boy — gia đình: mẹ và 2 con trai.
👩‍👧 Family: woman, girl — gia đình: mẹ và con gái.
👩‍👧‍👦 Family: woman, girl, boy — gia đình: mẹ, con gái, con trai.
👩‍👧‍👧 Family: woman, girl, girl — gia đình: mẹ và 2 con gái.
🗣️ Speaking head — cái đầu đang nói/phát ngôn.
👤 Bust in silhouette — chân dung bóng đen/người dùng.
👥 Busts in silhouette — nhóm người/bóng đen đôi.
👣 Footprints — dấu chân/theo dõi/bước đi.
🐵 Monkey face — mặt khỉ.
🐒 Monkey — con khỉ/chuối/xiếc.
🦍 Gorilla — khỉ đột.
🦧 Orangutan — đười ươi.
🐶 Dog face — mặt chó/c cún con.
🐕 Dog — con chó/thú cưng/bạn trung thành.
🦮 Guide dog — chó dẫn đường (hỗ trợ người mù).
🐕‍🦺 Service dog — chó dịch vụ/hỗ trợ.
🐩 Poodle — chó poodle.
🐺 Wolf — sói.
🦊 Fox — cáo.
🦝 Raccoon — gấu trúc Mỹ/chồn rửa.
🐱 Cat face — mặt mèo.
🐈 Cat — mèo.
🦁 Lion — sư tử.
🐯 Tiger face — mặt hổ.
🐅 Tiger — hổ.
🐆 Leopard — báo (báo hoa mai).
🐴 Horse face — mặt ngựa.
🐎 Horse — ngựa.
🦄 Unicorn — kỳ lân.
🦓 Zebra — ngựa vằn.
🦌 Deer — nai/hươu.
🐮 Cow face — mặt bò.
🐂 Ox — bò đực/ngu.
🐃 Water buffalo — trâu nước.
🐄 Cow — bò sữa/bò cái.
🐷 Pig face — mặt heo/lợn.
🐖 Pig — heo/lợn.
🐗 Boar — lợn rừng/heo rừng.
🐽 Pig nose — mũi heo.
🐏 Ram — cừu đực.
🐑 Ewe — cừu cái/lông cừu.
🐐 Goat — dê.
🐪 Camel — lạc đà (1 bướu).
🐫 Two-hump camel — lạc đà (2 bướu).
🦙 Llama — lạc đà không bướu/llama.
🦒 Giraffe — hươu cao cổ.
🐘 Elephant — voi.
🦏 Rhinoceros — tê giác.
🦛 Hippopotamus — hà mã.
🐭 Mouse face — mặt chuột.
🐁 Mouse — chuột.
🐀 Rat — chuột cống/chuột lớn.
🐹 Hamster — chuột hamster.
🐰 Rabbit face — mặt thỏ.
🐇 Rabbit — thỏ.
🐿️ Chipmunk — sóc chuột/chipmunk.
🦔 Hedgehog — nhím.
🦇 Bat — dơi.
🐻 Bear — gấu.
🐨 Koala — gấu túi koala.
🐼 Panda — gấu trúc/panda.
🦥 Sloth — lười (con lười).
🦦 Otter — rái cá.
🦨 Skunk — chồn hôi/skunk.
🦘 Kangaroo — chuột túi/kangaroo.
🦡 Badger — lửng/badger.
🐾 Paw prints — dấu chân thú.
🦃 Turkey — gà tây.
🐔 Chicken — gà nhà/gà mái.
🐓 Rooster — gà trống.
🐣 Hatching chick — gà con mới nở.
🐤 Baby chick — gà con.
🐥 Front-facing baby chick — gà con nhìn thẳng.
🐦 Bird — chim (chung).
🐧 Penguin — chim cánh cụt.
🕊️ Dove — bồ câu (hòa bình).
🦅 Eagle — đại bàng.
🦆 Duck — vịt.
🦢 Swan — thiên nga.
🦉 Owl — cú mèo/cú/tiếng kêu “hoot”.
🦩 Flamingo — hồng hạc.
🦚 Peacock — công (chim công).
🦜 Parrot — vẹt.
🐸 Frog — ếch.
🐊 Crocodile — cá sấu.
🐢 Turtle — rùa (nước/nghĩa rộng).
🦎 Lizard — thằn lằn.
🐍 Snake — rắn.
🐲 Dragon face — mặt rồng.
🐉 Dragon — rồng.
🦕 Sauropod — khủng long cổ dài (brachiosaurus/brontosaurus).
🦖 T-Rex — khủng long bạo chúa (tyrannosaurus).
🐳 Spouting whale — cá voi phun nước.
🐋 Whale — cá voi.
🐬 Dolphin — cá heo.
🐟 Fish — cá (nói chung).
🐠 Tropical fish — cá nhiệt đới.
🐡 Blowfish — cá nóc.
🦈 Shark — cá mập.
🐙 Octopus — bạch tuộc.
🐚 Spiral shell — vỏ sò xoắn/vỏ ốc.
🐌 Snail — ốc sên.
🦋 Butterfly — bướm.
🐛 Bug — sâu bọ/côn trùng.
🐜 Ant — kiến.
🐝 Honeybee — ong mật.
🐞 Lady beetle — bọ rùa.
🦗 Cricket — dế.
🕷️ Spider — nhện.
🕸️ Spider web — mạng nhện/tơ nhện.
🦂 Scorpion — bọ cạp.
🦟 Mosquito — muỗi.
🦠 Microbe — vi khuẩn/vi trùng/vi sinh vật.
💐 Bouquet — bó hoa.
🌸 Cherry blossom — hoa anh đào.
💮 White flower — huy hiệu/hoa trắng (kiểu Nhật).
🏵️ Rosette — huy hiệu hoa/trang trí hoa.
🌹 Rose — hoa hồng.
🥀 Wilted flower — hoa héo.
🌺 Hibiscus — hoa dâm bụt/hibiscus.
🌻 Sunflower — hoa hướng dương.
🌼 Blossom — hoa nở/hoa nhỏ màu vàng.
🌷 Tulip — hoa tulip.
🌱 Seedling — cây non/mầm cây.
🌲 Evergreen tree — cây lá kim/quanh năm xanh.
🌳 Deciduous tree — cây rụng lá.
🌴 Palm tree — cây cọ/cọ dừa.
🌵 Cactus — xương rồng.
🌾 Sheaf of rice — bó lúa.
🌿 Herb — thảo mộc/cỏ dại/thuốc nam.
☘️ Shamrock — cỏ ba lá (Ireland).
🍀 Four-leaf clover — cỏ bốn lá (may mắn).
🍁 Maple leaf — lá phong.
🍂 Fallen leaf — lá rụng.
🍃 Leaf fluttering — lá bay trong gió.
🍇 Grapes — nho.
🍈 Melon — dưa lưới.
🍉 Watermelon — dưa hấu.
🍊 Tangerine — quýt/cam quýt.
🍋 Lemon — chanh vàng.
🍌 Banana — chuối.
🍍 Pineapple — dứa/khóm/thơm.
🥭 Mango — xoài.
🍎 Red apple — táo đỏ.
🍏 Green apple — táo xanh.
🍐 Pear — lê.
🍑 Peach — đào.
🍒 Cherries — anh đào/cherry.
🍓 Strawberry — dâu tây.
🥝 Kiwi fruit — kiwi.
🍅 Tomato — cà chua.
🥥 Coconut — dừa.
🥑 Avocado — bơ.
🍆 Eggplant — cà tím.
🥔 Potato — khoai tây.
🥕 Carrot — cà rốt.
🌽 Ear of corn — bắp/ngô.
🌶️ Hot pepper — ớt cay.
🥒 Cucumber — dưa leo/dưa chuột.
🥬 Leafy green — rau lá xanh (cải, xà lách…).
🥦 Broccoli — bông cải xanh/súp lơ xanh.
🧄 Garlic — tỏi.
🧅 Onion — hành tây.
🍄 Mushroom — nấm.
🥜 Peanuts — đậu phộng/lạc.
🌰 Chestnut — hạt dẻ.
🍞 Bread — bánh mì.
🥐 Croissant — bánh sừng bò/croissant.
🥖 Baguette — bánh mì baguette.
🥨 Pretzel — bánh xoắn pretzel.
🥯 Bagel — bánh vòng bagel.
🥞 Pancakes — bánh kếp/pancake.
🧇 Waffle — bánh quế/waffle.
🧀 Cheese wedge — miếng phô mai.
🍖 Meat on bone — thịt còn xương.
🍗 Poultry leg — đùi gà/gà tây.
🥩 Cut of meat — miếng thịt cắt (bò, heo, cừu…).
🥓 Bacon — thịt xông khói/bacon.
🍔 Hamburger — bánh mì kẹp thịt/burger.
🍟 French fries — khoai tây chiên.
🍕 Pizza — pizza.
🌭 Hot dog — xúc xích kẹp bánh/hot dog.
🥪 Sandwich — bánh mì kẹp/sandwich.
🌮 Taco — taco.
🌯 Burrito — burrito.
🥙 Stuffed flatbread — bánh dẹt kẹp nhân (kiểu gyro).
🧆 Falafel — falafel/viên đậu gà chiên.
🥚 Egg — trứng.
🍳 Cooking — chảo trứng/nấu ăn.
🥘 Shallow pan of food — chảo nông món ăn (paella).
🍲 Pot of food — nồi thức ăn/súp.
🥣 Bowl with spoon — bát và thìa/cháo/ngũ cốc.
🥗 Green salad — salad rau xanh.
🍿 Popcorn — bắp rang.
🧈 Butter — bơ.
🧂 Salt — muối (lọ rắc).
🥫 Canned food — đồ hộp.
🍱 Bento box — cơm hộp bento (Nhật).
🍘 Rice cracker — bánh gạo (senbei).
🍙 Rice ball — cơm nắm/onigiri.
🍚 Cooked rice — cơm trắng/cơm chín.
🍛 Curry rice — cơm cà ri.
🍜 Steaming bowl — bát mì nóng/phở/mì Nhật.
🍝 Spaghetti — mì Ý/spaghetti.
🍠 Roasted sweet potato — khoai lang nướng.
🍢 Oden — lẩu oden/Nhật.
🍣 Sushi — sushi.
🍤 Fried shrimp — tôm chiên.
🍥 Fish cake with swirl — chả cá xoáy (narutomaki).
🥮 Moon cake — bánh trung thu.
🍡 Dango — bánh dango xiên Nhật.
🥟 Dumpling — sủi cảo/há cảo/mandu.
🥠 Fortune cookie — bánh quy may mắn.
🥡 Takeout box — hộp đồ mang về.
🦀 Crab — cua.
🦞 Lobster — tôm hùm.
🦐 Shrimp — tôm.
🦑 Squid — mực.
🦪 Oyster — hàu.
🍦 Soft ice cream — kem ốc quế mềm.
🍧 Shaved ice — đá bào.
🍨 Ice cream — kem.
🍩 Doughnut — bánh rán donut.
🍪 Cookie — bánh quy/cookie.
🎂 Birthday cake — bánh sinh nhật.
🍰 Shortcake — bánh bông lan kem/shortcake.
🧁 Cupcake — bánh cupcake.
🥧 Pie — bánh pie/bánh nướng nhân.
🍫 Chocolate bar — thanh sô-cô-la.
🍬 Candy — kẹo.
🍭 Lollipop — kẹo mút.
🍮 Custard — kem/tráng miệng custard.
🍯 Honey pot — hũ mật ong.
🍼 Baby bottle — bình sữa em bé.
🥛 Glass of milk — ly sữa.
☕ Hot beverage — đồ uống nóng/cà phê/trà.
🍵 Teacup without handle — chén trà không quai.
🍶 Sake — rượu sake (Nhật).
🍾 Bottle with popping cork — chai rượu bật nút/ăn mừng.
🍷 Wine glass — ly rượu vang.
🍸 Cocktail glass — ly cocktail.
🍹 Tropical drink — đồ uống nhiệt đới/cocktail.
🍺 Beer mug — cốc bia.
🍻 Clinking beer mugs — cụng cốc bia.
🥂 Clinking glasses — cụng ly/chúc mừng.
🥃 Tumbler glass — ly rượu mạnh/whisky.
🥤 Cup with straw — ly ống hút/nước ngọt.
🧃 Beverage box — hộp nước trái cây.
🧉 Mate — đồ uống mate (Nam Mỹ).
🧊 Ice — đá lạnh.
🥢 Chopsticks — đũa.
🍽️ Fork and knife with plate — nĩa và dao kèm đĩa/bữa ăn.
🍴 Fork and knife — nĩa và dao.
🥄 Spoon — thìa/muỗng.
🔪 Kitchen knife — dao làm bếp.
🏺 Amphora — bình cổ/amphora.
🌍 Globe showing Europe-Africa — địa cầu (Âu–Phi).
🌎 Globe showing Americas — địa cầu (châu Mỹ).
🌏 Globe showing Asia-Australia — địa cầu (Á–Úc).
🌐 Globe with meridians — địa cầu có kinh tuyến/internet/toàn cầu.
🗺️ World map — bản đồ thế giới.
🗾 Map of Japan — bản đồ Nhật Bản.
🧭 Compass — la bàn.
🏔️ Snow-capped mountain — núi tuyết phủ.
⛰️ Mountain — núi.
🌋 Volcano — núi lửa.
🗻 Mount Fuji — núi Phú Sĩ.
🏕️ Camping — cắm trại/lều trại.
🏖️ Beach with umbrella — bãi biển có ô.
🏜️ Desert — sa mạc.
🏝️ Desert island — đảo hoang.
🏞️ National park — công viên quốc gia.
🏟️ Stadium — sân vận động/địa điểm sự kiện.
🏛️ Classical building — tòa nhà cổ điển/đền đài.
🏗️ Building construction — công trường xây dựng.
🧱 Brick — gạch/khối gạch.
🏘️ Houses — khu nhà/dãy nhà.
🏚️ Derelict house — nhà hoang/xuống cấp.
🏠 House — ngôi nhà.
🏡 House with garden — nhà có vườn.
🏢 Office building — tòa nhà văn phòng.
🏣 Japanese post office — bưu điện Nhật.
🏤 Post office — bưu điện.
🏥 Hospital — bệnh viện.
🏦 Bank — ngân hàng.
🏨 Hotel — khách sạn.
🏩 Love hotel — khách sạn tình yêu.
🏪 Convenience store — cửa hàng tiện lợi.
🏫 School — trường học.
🏬 Department store — trung tâm thương mại/bách hóa.
🏭 Factory — nhà máy/công xưởng.
🏯 Japanese castle — lâu đài Nhật.
🏰 Castle — lâu đài/thành trì.
💒 Wedding — lễ cưới/nhà thờ cưới.
🗼 Tokyo Tower — tháp Tokyo.
🗽 Statue of Liberty — Tượng Nữ Thần Tự Do.
⛪ Church — nhà thờ Thiên Chúa giáo.
🕌 Mosque — nhà thờ Hồi giáo.
🛕 Hindu temple — đền Hindu.
🕍 Synagogue — giáo đường Do Thái.
⛩️ Shinto shrine — đền Thần đạo (Nhật).
🕋 Kaaba — Kaaba (Thánh địa Mecca).
⛲ Fountain — đài phun nước.
⛺ Tent — lều.
🌁 Foggy — sương mù.
🌃 Night with stars — đêm sao/thành phố về đêm.
🏙️ Cityscape — toàn cảnh thành phố.
🌄 Sunrise over mountains — bình minh trên núi.
🌅 Sunrise — bình minh/buổi sớm.
🌆 Cityscape at dusk — thành phố lúc hoàng hôn.
🌇 Sunset — hoàng hôn.
🌉 Bridge at night — cầu về đêm.
♨️ Hot springs — suối nước nóng/tắm onsen.
🎠 Carousel horse — ngựa gỗ quay/đu quay ngựa.
🎡 Ferris wheel — vòng đu quay (Ferris).
🎢 Roller coaster — tàu lượn siêu tốc/công viên.
💈 Barber pole — trụ tiệm cắt tóc.
🎪 Circus tent — lều xiếc/lễ hội.
🚂 Locomotive — đầu máy xe lửa.
🚃 Railway car — toa tàu.
🚄 High-speed train — tàu cao tốc.
🚅 Bullet train — tàu cao tốc Shinkansen.
🚆 Train — tàu hỏa.
🚇 Metro — tàu điện ngầm/MRT.
🚈 Light rail — tàu điện nhẹ.
🚉 Station — nhà ga.
🚊 Tram — tàu điện/xe điện bánh sắt.
🚝 Monorail — tàu một ray.
🚞 Mountain railway — tàu leo núi.
🚋 Tram car — toa xe điện.
🚌 Bus — xe buýt.
🚍 Oncoming bus — xe buýt đối diện.
🚎 Trolleybus — xe buýt điện nối dây.
🚐 Minibus — xe buýt nhỏ.
🚑 Ambulance — xe cứu thương.
🚒 Fire engine — xe cứu hỏa.
🚓 Police car — xe cảnh sát.
🚔 Oncoming police car — xe cảnh sát đối diện.
🚕 Taxi — taxi.
🚖 Oncoming taxi — taxi đối diện.
🚗 Automobile — ô tô/xe hơi.
🚘 Oncoming automobile — ô tô đối diện.
🚙 Sport utility vehicle — xe SUV.
🚚 Delivery truck — xe tải giao hàng.
🚛 Articulated lorry — xe đầu kéo/rơ-moóc.
🚜 Tractor — máy kéo/nông nghiệp.
🏎️ Racing car — xe đua/F1.
🏍️ Motorcycle — xe mô tô.
🛵 Motor scooter — xe tay ga.
🦽 Manual wheelchair — xe lăn tay.
🦼 Motorized wheelchair — xe lăn điện.
🛺 Auto rickshaw — xích lô máy/xe lam/tuk-tuk.
🚲 Bicycle — xe đạp.
🛴 Kick scooter — xe trượt scooter.
🛹 Skateboard — ván trượt.
🚏 Bus stop — trạm xe buýt.
🛣️ Motorway — đường cao tốc.
🛤️ Railway track — đường ray.
🛢️ Oil drum — thùng dầu.
⛽ Fuel pump — trạm xăng/cột bơm xăng.
🚨 Police car light — đèn xe khẩn cấp/còi hú.
🚥 Horizontal traffic light — đèn giao thông ngang.
🚦 Vertical traffic light — đèn giao thông dọc.
🛑 Stop sign — biển dừng.
🚧 Construction — rào công trường/cảnh báo.
⚓ Anchor — neo tàu.
⛵ Sailboat — thuyền buồm.
🛶 Canoe — xuồng/cano.
🚤 Speedboat — tàu cao tốc/ca nô nhanh.
🛳️ Passenger ship — tàu chở khách/du thuyền.
⛴️ Ferry — phà.
🛥️ Motor boat — tàu/thuyền máy.
🚢 Ship — tàu thủy.
✈️ Airplane — máy bay.
🛩️ Small airplane — máy bay nhỏ.
🛫 Airplane departure — máy bay cất cánh.
🛬 Airplane arrival — máy bay hạ cánh.
🪂 Parachute — dù lượn/nhảy dù.
💺 Seat — ghế ngồi/máy bay, xe.
🚁 Helicopter — trực thăng.
🚟 Suspension railway — tàu treo.
🚠 Mountain cableway — cáp treo núi.
🚡 Aerial tramway — cáp treo/toa treo.
🛰️ Satellite — vệ tinh.
🚀 Rocket — tên lửa.
🛸 Flying saucer — đĩa bay/UFO.
🛎️ Bellhop bell — chuông phục vụ/khách sạn.
🧳 Luggage — hành lý/va li.
⌛ Hourglass done — đồng hồ cát (xong).
⏳ Hourglass not done — đồng hồ cát (đang chạy).
⌚ Watch — đồng hồ đeo tay.
⏰ Alarm clock — đồng hồ báo thức.
⏱️ Stopwatch — đồng hồ bấm giờ.
⏲️ Timer — hẹn giờ.
🕰️ Mantelpiece clock — đồng hồ để bàn.
🕛 Twelve o’clock — 12 giờ.
🕧 Twelve-thirty — 12 giờ 30.
🕐 One o’clock — 1 giờ.
🕜 One-thirty — 1 giờ 30.
🕑 Two o’clock — 2 giờ.
🕝 Two-thirty — 2 giờ 30.
🕒 Three o’clock — 3 giờ.
🕞 Three-thirty — 3 giờ 30.
🕓 Four o’clock — 4 giờ.
🕟 Four-thirty — 4 giờ 30.
🕔 Five o’clock — 5 giờ.
🕠 Five-thirty — 5 giờ 30.
🕕 Six o’clock — 6 giờ.
🕡 Six-thirty — 6 giờ 30.
🕖 Seven o’clock — 7 giờ.
🕢 Seven-thirty — 7 giờ 30.
🕗 Eight o’clock — 8 giờ.
🕣 Eight-thirty — 8 giờ 30.
🕘 Nine o’clock — 9 giờ.
🕤 Nine-thirty — 9 giờ 30.
🕙 Ten o’clock — 10 giờ.
🕥 Ten-thirty — 10 giờ 30.
🕚 Eleven o’clock — 11 giờ.
🕦 Eleven-thirty — 11 giờ 30.
🌑 New moon — trăng non.
🌒 Waxing crescent moon — trăng lưỡi liềm đầu tháng.
🌓 First quarter moon — trăng bán nguyệt đầu tháng.
🌔 Waxing gibbous moon — trăng khuyết lớn dần.
🌕 Full moon — trăng tròn.
🌖 Waning gibbous moon — trăng khuyết nhỏ dần.
🌗 Last quarter moon — trăng bán nguyệt cuối tháng.
🌘 Waning crescent moon — trăng lưỡi liềm cuối tháng.
🌙 Crescent moon — trăng lưỡi liềm/ban đêm.
🌚 New moon face — mặt trăng non (mặt tối).
🌛 First quarter moon face — mặt trăng bán nguyệt (đầu).
🌜 Last quarter moon face — mặt trăng bán nguyệt (cuối).
🌡️ Thermometer — nhiệt kế/nhiệt độ.
☀️ Sun — mặt trời/nắng.
🌝 Full moon face — mặt trăng tròn có mặt.
🌞 Sun with face — mặt trời có mặt.
🪐 Ringed planet — hành tinh có vành (Sao Thổ).
⭐ Star — ngôi sao.
🌟 Glowing star — sao tỏa sáng.
🌠 Shooting star — sao băng.
🌌 Milky Way — dải Ngân Hà.
☁️ Cloud — mây.
⛅ Sun behind cloud — nắng sau mây.
⛈️ Cloud with lightning and rain — mưa giông sấm chớp.
🌤️ Sun behind small cloud — nắng kèm mây nhỏ.
🌥️ Sun behind large cloud — nắng kèm mây lớn.
🌦️ Sun behind rain cloud — nắng mưa xen kẽ.
🌧️ Cloud with rain — mưa rơi.
🌨️ Cloud with snow — có tuyết rơi.
🌩️ Cloud with lightning — có sấm chớp.
🌪️ Tornado — vòi rồng/lốc xoáy.
🌫️ Fog — sương mù.
🌬️ Wind face — gió thổi/lốc gió.
🌀 Cyclone — xoáy thuận/bão.
🌈 Rainbow — cầu vồng.
🌂 Closed umbrella — ô gập/ô đóng.
☂️ Umbrella — ô/dù.
☔ Umbrella with rain drops — ô dưới mưa.
⛱️ Umbrella on ground — ô cắm bãi biển.
⚡ High voltage — điện cao thế/sét/nhanh.
❄️ Snowflake — bông tuyết.
☃️ Snowman — người tuyết.
⛄ Snowman without snow — người tuyết không tuyết.
☄️ Comet — sao chổi.
🔥 Fire — lửa/nóng/bốc cháy.
💧 Droplet — giọt nước.
🌊 Water wave — sóng nước/biển.
🎃 Jack-o’-lantern — đèn bí ngô Halloween.
🎄 Christmas tree — cây thông Noel.
🎆 Fireworks — pháo hoa.
🎇 Sparkler — pháo que/sáng lấp lánh.
🧨 Firecracker — pháo nổ/pháo đùng.
✨ Sparkles — lấp lánh/tỏa sáng.
🎈 Balloon — bong bóng/khí cầu nhỏ.
🎉 Party popper — pháo giấy ăn mừng.
🎊 Confetti ball — quả cầu kim tuyến.
🎋 Tanabata tree — cây điều ước Tanabata.
🎍 Pine decoration — trang trí thông (Kadomatsu).
🎎 Japanese dolls — búp bê Nhật (Hina).
🎏 Carp streamer — cờ cá chép (Koinobori).
🎐 Wind chime — chuông gió.
🎑 Moon-viewing ceremony — lễ ngắm trăng (Tsukimi).
🧧 Red envelope — lì xì/phong bao đỏ.
🎀 Ribbon — ruy băng/nơ.
🎁 Wrapped gift — quà gói/hộp quà.
🎗️ Reminder ribbon — ruy băng nhận thức ủng hộ.
🎟️ Admission tickets — vé vào cửa.
🎫 Ticket — vé/sự kiện.
🎖️ Military medal — huân chương/quân sự.
🏆 Trophy — cúp/giải thưởng.
🏅 Sports medal — huy chương thể thao.
🥇 1st place medal — huy chương vàng/hạng nhất.
🥈 2nd place medal — huy chương bạc/hạng nhì.
🥉 3rd place medal — huy chương đồng/hạng ba.
⚽ Soccer ball — bóng đá.
⚾ Baseball — bóng chày.
🥎 Softball — bóng mềm.
🏀 Basketball — bóng rổ.
🏐 Volleyball — bóng chuyền.
🏈 American football — bóng bầu dục Mỹ.
🏉 Rugby football — bóng bầu dục.
🎾 Tennis — quần vợt.
🥏 Flying disc — đĩa bay/Frisbee.
🎳 Bowling — ném bowling.
🏏 Cricket — cric-kê.
🏑 Field hockey — khúc côn cầu sân cỏ.
🏒 Ice hockey — khúc côn cầu trên băng.
🥍 Lacrosse — lacrosse/gậy lưới.
🏓 Ping pong — bóng bàn.
🏸 Badminton — cầu lông.
🥊 Boxing glove — găng đấm bốc.
🥋 Martial arts uniform — võ phục (judo/karate/taekwondo).
🥅 Goal net — khung thành/lưới.
⛳ Flag in hole — cờ trên lỗ golf.
⛸️ Ice skate — giày trượt băng.
🎣 Fishing pole — cần câu.
🤿 Diving mask — mặt nạ lặn.
🎽 Running shirt — áo chạy bộ/số đua.
🎿 Skis — ván trượt tuyết.
🛷 Sled — xe trượt tuyết.
🥌 Curling stone — hòn đá curling.
🎯 Direct hit — hồng tâm/trúng đích.
🪀 Yo-yo — yo-yo.
🪁 Kite — diều.
🎱 Pool 8 ball — bi số 8/bida.
🔮 Crystal ball — quả cầu pha lê/tiên tri.
🧿 Nazar amulet — bùa mắt xanh (Nazar).
🎮 Video game — máy chơi game/tay cầm.
🕹️ Joystick — tay cầm cần điều khiển.
🎰 Slot machine — máy đánh bạc/slot.
🎲 Game die — xúc xắc.
🧩 Puzzle piece — mảnh ghép câu đố.
🧸 Teddy bear — gấu bông.
♠️ Spade suit — chất bích (♠).
♥️ Heart suit — chất cơ (♥).
♦️ Diamond suit — chất rô (♦).
♣️ Club suit — chất tép (♣).
♟️ Chess pawn — tốt cờ vua.
🃏 Joker — lá Joker.
🀄 Mahjong red dragon — quân hồng long (mạt chược).
🎴 Flower playing cards — bài hoa Hanafuda.
🎭 Performing arts — nghệ thuật biểu diễn/sân khấu.
🖼️ Framed picture — khung tranh/ảnh.
🎨 Artist palette — bảng màu/họa cụ.
🧵 Thread — chỉ/kim chỉ.
🧶 Yarn — cuộn len/sợi len.
👓 Glasses — kính mắt.
🕶️ Sunglasses — kính râm.
🥽 Goggles — kính bảo hộ.
🥼 Lab coat — áo blouse/áo phòng thí nghiệm.
🦺 Safety vest — áo phản quang/áo an toàn.
👔 Necktie — cà vạt.
👕 T-shirt — áo thun.
👖 Jeans — quần jean.
🧣 Scarf — khăn choàng.
🧤 Gloves — găng tay.
🧥 Coat — áo khoác.
🧦 Socks — tất/vớ.
👗 Dress — váy đầm.
👘 Kimono — kimono/áo truyền thống Nhật.
🥻 Sari — sari/áo truyền thống Ấn.
🩱 One-piece swimsuit — áo tắm liền mảnh.
🩲 Briefs — quần lót.
🩳 Shorts — quần short.
👙 Bikini — bikini/đồ bơi nữ.
👚 Women’s clothes — áo nữ/đồ nữ.
👛 Purse — ví nhỏ/túi cầm tay.
👜 Handbag — túi xách.
👝 Clutch bag — ví cầm tay/clutch.
🛍️ Shopping bags — túi mua sắm.
🎒 Backpack — ba lô.
👞 Men’s shoe — giày nam.
👟 Running shoe — giày thể thao/chạy.
🥾 Hiking boot — giày leo núi/đi phượt.
🥿 Flat shoe — giày bệt.
👠 High-heeled shoe — giày cao gót.
👡 Women’s sandal — dép/sandal nữ.
🩰 Ballet shoes — giày ba-lê.
👢 Women’s boot — bốt nữ.
👑 Crown — vương miện.
👒 Women’s hat — mũ nữ/mũ vành.
🎩 Top hat — mũ chóp/của quý ông.
🎓 Graduation cap — mũ tốt nghiệp.
🧢 Billed cap — mũ lưỡi trai.
⛑️ Rescue worker’s helmet — mũ cứu hộ.
📿 Prayer beads — tràng hạt/mala.
💄 Lipstick — son môi.
💍 Ring — nhẫn/cầu hôn/cưới.
💎 Gem stone — đá quý/kim cương/ngọc.
🔇 Muted speaker — loa tắt tiếng.
🔈 Speaker low volume — loa nhỏ.
🔉 Speaker medium volume — loa vừa.
🔊 Speaker high volume — loa to.
📢 Loudspeaker — loa phóng thanh.
📣 Megaphone — loa tay/còi loa.
📯 Postal horn — kèn bưu tín.
🔔 Bell — chuông/thông báo.
🔕 Bell with slash — tắt chuông/im lặng.
🎼 Musical score — bản nhạc/khuông nhạc.
🎵 Musical note — nốt nhạc.
🎶 Musical notes — giai điệu/nhiều nốt.
🎙️ Studio microphone — micro phòng thu.
🎚️ Level slider — cần gạt mức/slider.
🎛️ Control knobs — núm điều chỉnh.
🎤 Microphone — micro/loa đài.
🎧 Headphone — tai nghe.
📻 Radio — radio/phát thanh.
🎷 Saxophone — kèn saxophone.
🎸 Guitar — đàn guitar.
🎹 Musical keyboard — đàn phím/piano điện.
🎺 Trumpet — kèn trumpet.
🎻 Violin — vĩ cầm/violin.
🪕 Banjo — đàn banjo.
🥁 Drum — trống/bộ gõ.
📱 Mobile phone — điện thoại di động.
📲 Mobile phone with arrow — điện thoại có mũi tên (cuộc gọi đến).
☎️ Telephone — điện thoại bàn.
📞 Telephone receiver — tay nghe điện thoại.
📟 Pager — máy nhắn tin.
📠 Fax machine — máy fax.
🔋 Battery — pin/ắc quy.
🔌 Electric plug — phích cắm/ổ cắm.
💻 Laptop — máy tính xách tay.
🖥️ Desktop computer — máy tính để bàn.
🖨️ Printer — máy in.
⌨️ Keyboard — bàn phím.
🖱️ Computer mouse — chuột máy tính.
🖲️ Trackball — bi lăn/trackball.
💽 Computer disk — đĩa từ.
💾 Floppy disk — đĩa mềm.
💿 Optical disk — đĩa quang/CD/DVD.
📀 DVD — đĩa DVD.
🧮 Abacus — bàn tính.
🎥 Movie camera — máy quay phim.
🎞️ Film frames — dải phim/khung phim.
📽️ Film projector — máy chiếu phim.
🎬 Clapper board — bảng clap/quay phim.
📺 Television — tivi.
📷 Camera — máy ảnh.
📸 Camera with flash — máy ảnh có đèn flash.
📹 Video camera — máy quay video.
📼 Videocassette — băng video.
🔍 Magnifying glass tilted left — kính lúp trái.
🔎 Magnifying glass tilted right — kính lúp phải.
🕯️ Candle — nến.
💡 Light bulb — bóng đèn/ý tưởng.
🔦 Flashlight — đèn pin.
🏮 Red paper lantern — đèn lồng đỏ.
🪔 Diya lamp — đèn dầu diya.
📔 Notebook with decorative cover — sổ bìa trang trí.
📕 Closed book — sách đóng.
📖 Open book — sách mở.
📗 Green book — sách xanh.
📘 Blue book — sách xanh dương.
📙 Orange book — sách cam.
📚 Books — sách/văn học/thư viện.
📓 Notebook — sổ tay.
📒 Ledger — sổ cái/kế toán.
📃 Page with curl — trang giấy quăn.
📜 Scroll — cuộn giấy/cổ.
📄 Page facing up — trang giấy ngửa.
📰 Newspaper — báo.
🗞️ Rolled-up newspaper — báo cuộn.
📑 Bookmark tabs — thẻ chia/trang đánh dấu.
🔖 Bookmark — đánh dấu/sổ tay.
🏷️ Label — nhãn/mác.
💰 Money bag — túi tiền.
💴 Yen banknote — tờ yên Nhật.
💵 Dollar banknote — tờ đô la.
💶 Euro banknote — tờ euro.
💷 Pound banknote — tờ bảng Anh.
💸 Money with wings — tiền bay/hao tiền.
💳 Credit card — thẻ tín dụng.
🧾 Receipt — hóa đơn/biên lai.
💹 Chart increasing with yen — biểu đồ tăng (yên).
💱 Currency exchange — trao đổi tiền tệ/đổi tiền.
💲 Heavy dollar sign — ký hiệu đô la đậm.
✉️ Envelope — phong bì/thư.
📧 E-mail — thư điện tử.
📨 Incoming envelope — thư đến.
📩 Envelope with arrow — phong bì có mũi tên.
📤 Outbox tray — khay đi.
📥 Inbox tray — khay đến.
📦 Package — gói hàng/thùng carton.
📫 Closed mailbox with raised flag — hòm thư đóng (cờ dựng).
📪 Closed mailbox with lowered flag — hòm thư đóng (cờ hạ).
📬 Open mailbox with raised flag — hòm thư mở (cờ dựng).
📭 Open mailbox with lowered flag — hòm thư mở (cờ hạ).
📮 Postbox — thùng thư.
🗳️ Ballot box with ballot — thùng phiếu bầu.
✏️ Pencil — bút chì.
✒️ Black nib — ngòi bút/viết mực.
🖋️ Fountain pen — bút máy.
🖊️ Pen — bút bi.
🖌️ Paintbrush — cọ vẽ.
🖍️ Crayon — bút sáp màu.
📝 Memo — ghi nhớ/bản ghi.
💼 Briefcase — cặp tài liệu.
📁 File folder — thư mục/tập hồ sơ.
📂 Open file folder — thư mục mở.
🗂️ Card index dividers — bìa phân loại/thẻ mục lục.
📅 Calendar — lịch/ngày tháng.
📆 Tear-off calendar — lịch xé.
🗒️ Spiral notepad — sổ xoắn nhỏ.
🗓️ Spiral calendar — lịch xoắn.
📇 Card index — hộp thẻ mục lục.
📈 Chart increasing — biểu đồ tăng.
📉 Chart decreasing — biểu đồ giảm.
📊 Bar chart — biểu đồ cột.
📋 Clipboard — bảng kẹp giấy.
📌 Pushpin — ghim bấm/ghim đánh dấu.
📍 Round pushpin — ghim tròn/địa điểm.
📎 Paperclip — kẹp giấy.
🖇️ Linked paperclips — kẹp giấy nối.
📏 Straight ruler — thước thẳng.
📐 Triangular ruler — ê-ke/thước tam giác.
✂️ Scissors — kéo.
🗃️ Card file box — hộp lưu trữ thẻ/hồ sơ.
🗄️ File cabinet — tủ hồ sơ/tủ tài liệu.
🗑️ Wastebasket — thùng rác/giỏ rác.
🔒 Locked — khóa an toàn/ổ khóa.
🔓 Unlocked — đã mở khóa.
🔏 Locked with pen — khóa kèm bút/khóa ký (bí mật).
🔐 Locked with key — khóa và chìa/khóa riêng tư.
🔑 Key — chìa khóa/mật mã.
🗝️ Old key — chìa khóa cổ.
🔨 Hammer — búa/dụng cụ.
🪓 Axe — rìu/chặt/cắt.
⛏️ Pick — cuốc chim/đục.
⚒️ Hammer and pick — búa và đục/dụng cụ xây dựng.
🛠️ Hammer and wrench — búa và mỏ lết/dụng cụ sửa chữa.
🗡️ Dagger — dao găm.
⚔️ Crossed swords — kiếm bắt chéo.
🔫 Pistol — súng lục.
🏹 Bow and arrow — cung tên.
🛡️ Shield — khiên/bảo hộ.
🔧 Wrench — mỏ lết/vặn ốc.
🔩 Nut and bolt — ốc và bu lông.
⚙️ Gear — bánh răng/cài đặt.
🗜️ Clamp — kẹp/bàn ép.
⚖️ Balance scale — cân đĩa/công lý.
🦯 Probing cane — gậy dò đường (khiếm thị).
🔗 Link — liên kết/xích vòng.
⛓️ Chains — xiềng xích/xích sắt.
🧰 Toolbox — hộp dụng cụ.
🧲 Magnet — nam châm/hút từ.
⚗️ Alembic — bình chưng cất/alembic.
🧪 Test tube — ống nghiệm.
🧫 Petri dish — đĩa petri/nuôi cấy.
🧬 DNA — ADN/di truyền.
🔬 Microscope — kính hiển vi.
🔭 Telescope — kính thiên văn.
📡 Satellite antenna — ăng-ten vệ tinh.
💉 Syringe — ống tiêm/tiêm thuốc.
🩸 Drop of blood — giọt máu/kinh nguyệt/vết thương.
💊 Pill — viên thuốc.
🩹 Adhesive bandage — băng dán y tế.
🩺 Stethoscope — ống nghe.
🚪 Door — cánh cửa/lối vào.
🛏️ Bed — giường/nghỉ ngơi.
🛋️ Couch and lamp — ghế sofa và đèn.
🪑 Chair — ghế.
🚽 Toilet — bồn cầu/nhà vệ sinh.
🚿 Shower — vòi sen/tắm.
🛁 Bathtub — bồn tắm.
🪒 Razor — dao cạo.
🧴 Lotion bottle — chai dưỡng/kem chống nắng.
🧷 Safety pin — ghim băng/ghim tã.
🧹 Broom — chổi/quét dọn.
🧺 Basket — giỏ/rổ/giỏ giặt.
🧻 Roll of paper — cuộn giấy/giấy vệ sinh.
🧼 Soap — xà phòng/bánh xà phòng.
🧽 Sponge — miếng bọt biển/mút lau.
🧯 Fire extinguisher — bình chữa cháy.
🛒 Shopping cart — xe đẩy mua sắm/giỏ hàng.
🚬 Cigarette — thuốc lá/hút thuốc.
⚰️ Coffin — quan tài/tang lễ.
⚱️ Funeral urn — bình tro cốt.
🗿 Moai — tượng Moai/đá đảo Phục Sinh.
🏧 ATM sign — ký hiệu ATM/máy rút tiền.
🚮 Litter in bin sign — ký hiệu vứt rác vào thùng.
🚰 Potable water — nước uống được/vòi nước sạch.
♿ Wheelchair symbol — ký hiệu xe lăn/tiếp cận.
🚹 Men’s room — nhà vệ sinh nam.
🚺 Women’s room — nhà vệ sinh nữ.
🚻 Restroom — nhà vệ sinh/chung.
🚼 Baby symbol — ký hiệu em bé/chăm trẻ.
🚾 Water closet — nhà vệ sinh (WC).
🛂 Passport control — kiểm soát hộ chiếu.
🛃 Customs — hải quan.
🛄 Baggage claim — nhận hành lý.
🛅 Left luggage — gửi hành lý.
⚠️ Warning — cảnh báo/nguy hiểm.
🚸 Children crossing — trẻ em qua đường/cảnh báo trường học.
⛔ No entry — cấm vào.
🚫 Prohibited — cấm/không cho phép.
🚳 No bicycles — cấm xe đạp.
🚭 No smoking — cấm hút thuốc.
🚯 No littering — cấm xả rác.
🚱 Non-potable water — nước không uống được.
🚷 No pedestrians — cấm người đi bộ.
📵 No mobile phones — cấm dùng điện thoại.
🔞 No one under 18 — cấm dưới 18 tuổi.
☢️ Radioactive — phóng xạ/nguy hiểm.
☣️ Biohazard — sinh học nguy hại.
⬆️ Up arrow — mũi tên lên/trên cùng.
↗️ Up-right arrow — mũi tên chéo lên phải.
➡️ Right arrow — mũi tên sang phải.
↘️ Down-right arrow — mũi tên chéo xuống phải.
⬇️ Down arrow — mũi tên xuống/dưới cùng.
↙️ Down-left arrow — mũi tên chéo xuống trái.
⬅️ Left arrow — mũi tên trái/quay lại.
↖️ Up-left arrow — mũi tên chéo lên trái.
↕️ Up-down arrow — mũi tên lên xuống/dọc.
↔️ Left-right arrow — mũi tên trái phải/ngang.
↩️ Right arrow curving left — mũi tên phải cong sang trái/quay lại.
↪️ Left arrow curving right — mũi tên trái cong sang phải/quay lại.
⤴️ Right arrow curving up — mũi tên phải cong lên.
⤵️ Right arrow curving down — mũi tên phải cong xuống.
🔃 Clockwise vertical arrows — vòng lặp đồng hồ/đồng bộ.
🔄 Counterclockwise arrows — vòng lặp ngược/đổi mới.
🔙 Back arrow — mũi tên “Back”/quay lại.
🔚 End arrow — mũi tên “End”/kết thúc.
🔛 On arrow — mũi tên “On”/bật.
🔜 Soon arrow — mũi tên “Soon”/sắp.
🔝 Top arrow — mũi tên “Top”/đầu trang.
🛐 Place of worship — nơi thờ tự/nhà thờ/đền chùa.
⚛️ Atom symbol — biểu tượng nguyên tử.
🕉️ Om — ký hiệu Om (Ấn Độ giáo/Phật giáo).
✡️ Star of David — Ngôi sao David (Do Thái giáo).
☸️ Wheel of Dharma — Bánh xe Pháp (Dharmachakra).
☯️ Yin yang — âm dương/cân bằng.
✝️ Latin cross — thánh giá Kitô giáo.
☦️ Orthodox cross — thánh giá Chính Thống.
☪️ Star and crescent — trăng sao Hồi giáo.
☮️ Peace symbol — biểu tượng hòa bình.
🕎 Menorah — chân đèn Menorah (Hanukkah).
🔯 Dotted six-pointed star — sao sáu cánh chấm (hexagram).
♈ Aries — Bạch Dương.
♉ Taurus — Kim Ngưu.
♊ Gemini — Song Tử.
♋ Cancer — Cự Giải.
♌ Leo — Sư Tử.
♍ Virgo — Xử Nữ.
♎ Libra — Thiên Bình.
♏ Scorpio — Bọ Cạp.
♐ Sagittarius — Nhân Mã.
♑ Capricorn — Ma Kết.
♒ Aquarius — Bảo Bình.
♓ Pisces — Song Ngư.
⛎ Ophiuchus — Xà Phu.
🔀 Shuffle tracks button — nút trộn bài/ngẫu nhiên.
🔁 Repeat button — lặp lại.
🔂 Repeat single button — lặp một bài.
▶️ Play button — phát/phát phải.
⏩ Fast forward — tua nhanh.
⏭️ Next track — bài tiếp.
⏯️ Play/Pause — phát/tạm dừng.
◀️ Reverse button — phát trái/lùi.
⏪ Fast reverse — tua ngược nhanh.
⏮️ Last track — bài trước.
🔼 Upwards button — nút lên/đỉnh.
⏫ Fast up — lên nhanh.
🔽 Downwards button — nút xuống.
⏬ Fast down — xuống nhanh.
⏸️ Pause button — tạm dừng.
⏹️ Stop button — dừng.
⏺️ Record button — ghi.
⏏️ Eject button — đẩy đĩa.
🎦 Cinema — rạp chiếu phim/màn ảnh.
🔅 Dim button — nút giảm sáng.
🔆 Bright button — nút tăng sáng.
📶 Antenna bars — cột sóng/độ mạnh tín hiệu.
📳 Vibration mode — chế độ rung.
📴 Mobile phone off — tắt điện thoại/im lặng.
♀️ Female sign — ký hiệu nữ.
♂️ Male sign — ký hiệu nam.
⚕️ Medical symbol — biểu tượng y tế.
♾️ Infinity — vô cực.
♻️ Recycling symbol — tái chế/bảo vệ môi trường.
⚜️ Fleur-de-lis — hoa bách hợp (fleur-de-lis).
🔱 Trident emblem — đinh ba/biểu tượng đinh ba.
📛 Name badge — thẻ tên/phù hiệu.
🔰 Japanese symbol for beginner — biểu tượng người mới (shoshinsha).
⭕ Hollow red circle — vòng tròn đỏ rỗng.
✅ Check mark button — nút dấu kiểm/đồng ý.
☑️ Check box with check — ô đánh dấu có tích.
✔️ Check mark — dấu tích/đúng.
✖️ Multiplication sign — dấu nhân.
❌ Cross mark — dấu X/sai/hủy.
❎ Cross mark button — nút dấu X.
➕ Plus sign — dấu cộng.
➖ Minus sign — dấu trừ.
➗ Division sign — dấu chia.
➰ Curly loop — vòng lượn lạ/ngoằn ngoèo.
➿ Double curly loop — vòng lượn kép/băng cassette.
〽️ Part alternation mark — ký hiệu luân phiên/nhạc/biểu đồ.
✳️ Eight-spoked asterisk — hoa thị tám cánh.
✴️ Eight-pointed star — sao tám cánh.
❇️ Sparkle — sao lấp lánh.
‼️ Double exclamation mark — hai dấu chấm than.
⁉️ Exclamation question mark — chấm than hỏi.
❓ Question mark — dấu hỏi.
❔ White question mark — dấu hỏi trắng.
❕ White exclamation mark — dấu chấm than trắng.
❗ Exclamation mark — dấu chấm than.
〰️ Wavy dash — gạch lượn sóng.
©️ Copyright — bản quyền.
®️ Registered — nhãn hiệu đăng ký.
™️ Trade mark — thương hiệu/nhãn hiệu.
*️⃣ Keycap star — phím sao.
0️⃣-9️⃣ Keycap digits — phím số 0–9.
🔟 Keycap 10 — phím số 10.
🔠 Input Latin uppercase — nhập chữ Latin hoa.
🔡 Input Latin lowercase — nhập chữ Latin thường.
🔢 Input numbers — nhập số.
🔣 Input symbols — nhập ký hiệu.
🔤 Input Latin letters — nhập chữ Latin.
🅰️ A button — nút chữ A.
🆎 AB button — nút AB.
🅱️ B button — nút chữ B.
🆑 CL button — nút CL.
🆒 Cool button — nút “cool/ngầu”.
🆓 Free button — nút “miễn phí”.
ℹ️ Information — thông tin.
🆔 ID button — nút “ID/định danh”.
Ⓜ️ Circled M — chữ M trong vòng tròn.
🆕 New button — nút “mới”.
🆖 NG button — nút “NG/không đạt”.
🅾️ O button — nút chữ O.
🆗 OK button — nút “OK/đồng ý”.
🅿️ P button — nút chữ P/đỗ xe (Parking).
🆘 SOS button — nút SOS/khẩn cấp.
🆙 Up button — nút “lên/tăng”.
🆚 VS button — nút “đối đầu/VS”.
🈁 Japanese “here” button — nút “ở đây” (Nhật).
🈂️ Japanese “service charge” — phí dịch vụ (Nhật).
🈷️ Japanese “monthly amount” — số tiền hàng tháng (Nhật/Hán).
🈶 Japanese “not free of charge” — không miễn phí (Nhật/Hán).
🈯 Japanese “reserved” — đặt chỗ/chỉ định.
🉐 Japanese “bargain” — món hời/ưu đãi.
🈹 Japanese “discount” — giảm giá/chiết khấu.
🈚 Japanese “free of charge” — miễn phí.
🈲 Japanese “prohibited” — cấm/hạn chế.
🉑 Japanese “acceptable” — chấp nhận/OK.
🈸 Japanese “application” — đơn xin/ứng dụng.
🈴 Japanese “passing grade” — đạt điểm/qua môn.
🈳 Japanese “vacancy” — còn chỗ trống.
㊗️ Japanese “congratulations” — chúc mừng.
㊙️ Japanese “secret” — bí mật.
🈺 Japanese “open for business” — mở cửa kinh doanh.
🈵 Japanese “no vacancy” — hết chỗ.
🔴 Red circle — vòng tròn đỏ.
🟠 Orange circle — vòng tròn cam.
🟡 Yellow circle — vòng tròn vàng.
🟢 Green circle — vòng tròn xanh lá.
🔵 Blue circle — vòng tròn xanh dương.
🟣 Purple circle — vòng tròn tím.
🟤 Brown circle — vòng tròn nâu.
⚫ Black circle — vòng tròn đen.
⚪ White circle — vòng tròn trắng.
🟥 Red square — hình vuông đỏ.
🟧 Orange square — hình vuông cam.
🟨 Yellow square — hình vuông vàng.
🟩 Green square — hình vuông xanh lá.
🟦 Blue square — hình vuông xanh dương.
🟪 Purple square — hình vuông tím.
🟫 Brown square — hình vuông nâu.
⬛ Black large square — vuông lớn đen.
⬜ White large square — vuông lớn trắng.
◼️ Black medium square — vuông trung đen.
◻️ White medium square — vuông trung trắng.
◾ Black medium-small square — vuông vừa-nhỏ đen.
◽ White medium-small square — vuông vừa-nhỏ trắng.
▪️ Black small square — vuông nhỏ đen.
▫️ White small square — vuông nhỏ trắng.
🔶 Large orange diamond — kim cương cam lớn.
🔷 Large blue diamond — kim cương xanh lớn.
🔸 Small orange diamond — kim cương cam nhỏ.
🔹 Small blue diamond — kim cương xanh nhỏ.
🔺 Red triangle pointed up — tam giác đỏ hướng lên.
🔻 Red triangle pointed down — tam giác đỏ hướng xuống.
💠 Diamond with a dot — kim cương chấm giữa.
🔘 Radio button — nút chọn tròn.
🔳 White square button — nút vuông trắng.
🔲 Black square button — nút vuông đen.
🏁 Chequered flag — cờ đích/đua xe.
🚩 Triangular flag — cờ tam giác/cắm mốc.
🎌 Crossed flags — cờ bắt chéo (Nhật).
🏴 Black flag — cờ đen.
🏳️ White flag — cờ trắng/đầu hàng.
🏳️‍🌈 Rainbow flag - lgbt - gay - less — cờ cầu vồng/tự hào.
🏴‍☠️ Pirate flag — cờ hải tặc/đầu lâu xương chéo.
🇦🇨 Flag Ascension Island — Đảo Ascension
🇦🇩 Flag Andorra — Andorra
🇦🇪 Flag United Arab Emirates — Các Tiểu vương quốc Ả Rập Thống nhất
🇦🇫 Flag Afghanistan — Afghanistan
🇦🇬 Flag Antigua and Barbuda — Antigua và Barbuda
🇦🇮 Flag Anguilla — Anguilla
🇦🇱 Flag Albania — Albania
🇦🇲 Flag Armenia — Armenia
🇦🇴 Flag Angola — Angola
🇦🇶 Flag Antarctica — Nam Cực
🇦🇷 Flag Argentina — Argentina
🇦🇸 Flag American Samoa — Samoa thuộc Mỹ
🇦🇹 Flag Austria — Áo
🇦🇺 Flag Australia — Úc
🇦🇼 Flag Aruba — Aruba
🇦🇽 Flag Åland Islands — Quần đảo Åland
🇦🇿 Flag Azerbaijan — Azerbaijan
🇧🇦 Flag Bosnia and Herzegovina — Bosnia và Herzegovina
🇧🇧 Flag Barbados — Barbados
🇧🇩 Flag Bangladesh — Bangladesh
🇧🇪 Flag Belgium — Bỉ
🇧🇫 Flag Burkina Faso — Burkina Faso
🇧🇬 Flag Bulgaria — Bulgaria
🇧🇭 Flag Bahrain — Bahrain
🇧🇮 Flag Burundi — Burundi
🇧🇯 Flag Benin — Benin
🇧🇱 Flag Saint Barthélemy — Saint Barthélemy
🇧🇲 Flag Bermuda — Bermuda
🇧🇳 Flag Brunei — Brunei
🇧🇴 Flag Bolivia — Bolivia
🇧🇶 Flag Caribbean Netherlands — Caribbean Netherlands
🇧🇷 Flag Brazil — Brazil
🇧🇸 Flag Bahamas — Bahamas
🇧🇹 Flag Bhutan — Bhutan
🇧🇻 Flag Bouvet Island — Đảo Bouvet
🇧🇼 Flag Botswana — Botswana
🇧🇾 Flag Belarus — Belarus
🇧🇿 Flag Belize — Belize
🇨🇦 Flag Canada — Canada
🇨🇨 Flag Cocos (Keeling) Islands — Quần đảo Cocos (Keeling)
🇨🇩 Flag DR Congo (Kinshasa) — Cộng hòa Dân chủ Công gốc (Kinshasa)
🇨🇫 Flag Central African Republic — Cộng hòa Trung Phi
🇨🇬 Flag Congo (Brazzaville) — Cộng hòa Congo (Brazzaville)
🇨🇭 Flag Switzerland — Thụy Sĩ
🇨🇮 Flag Côte d’Ivoire — Bờ Biển Ngà
🇨🇰 Flag Cook Islands — Quần đảo Cook
🇨🇱 Flag Chile — Chile
🇨🇲 Flag Cameroon — Cameroon
🇨🇳 Flag China — Trung Quốc
🇨🇴 Flag Colombia — Colombia
🇨🇵 Flag Clipperton Island — Đảo Clipperton
🇨🇷 Flag Costa Rica — Costa Rica
🇨🇺 Flag Cuba — Cuba
🇨🇻 Flag Cabo Verde — Cabo Verde
🇨🇼 Flag Curaçao — Curaçao
🇨🇽 Flag Christmas Island — Đảo Giáng Sinh
🇨🇾 Flag Cyprus — Síp
🇨🇿 Flag Czechia — Cộng hòa Séc
🇩🇪 Flag Germany — Đức
🇩🇬 Flag Diego Garcia — Diego Garcia
🇩🇯 Flag Djibouti — Djibouti
🇩🇰 Flag Denmark — Đan Mạch
🇩🇲 Flag Dominica — Dominica
🇩🇴 Flag Dominican Republic — Cộng hòa Dominica
🇩🇿 Flag Algeria — Algeria
🇪🇦 Flag Ceuta & Melilla — Ceuta & Melilla
🇪🇨 Flag Ecuador — Ecuador
🇪🇪 Flag Estonia — Estonia
🇪🇬 Flag Egypt — Ai Cập
🇪🇭 Flag Western Sahara — Tây Sahara
🇪🇷 Flag Eritrea — Eritrea
🇪🇸 Flag Spain — Tây Ban Nha
🇪🇹 Flag Ethiopia — Ethiopia
🇪🇺 Flag European Union — Liên minh châu Âu
🇫🇮 Flag Finland — Phần Lan
🇫🇯 Flag Fiji — Fiji
🇫🇰 Flag Falkland Islands — Quần đảo Falkland (Malvinas)
🇫🇲 Flag Micronesia — Liên bang Micronesia
🇫🇴 Flag Faroe Islands — Quần đảo Faroe
🇫🇷 Flag France — Pháp
🇬🇦 Flag Gabon — Gabon
🇬🇧 Flag United Kingdom — Vương quốc Anh
🇬🇩 Flag Grenada — Grenada
🇬🇪 Flag Georgia — Gruzia (Georgia)
🇬🇫 Flag French Guiana — Guiana thuộc Pháp
🇬🇬 Flag Guernsey — Guernsey
🇬🇭 Flag Ghana — Ghana
🇬🇮 Flag Gibraltar — Gibraltar
🇬🇱 Flag Greenland — Greenland
🇬🇲 Flag Gambia — Gambia
🇬🇳 Flag Guinea — Guinea
🇬🇵 Flag Guadeloupe — Guadeloupe
🇬🇶 Flag Equatorial Guinea — Guinea Xích Đạo
🇬🇷 Flag Greece — Hy Lạp
🇬🇸 Flag South Georgia & South Sandwich Islands — Nam Georgia & Quần đảo Nam Sandwich
🇬🇹 Flag Guatemala — Guatemala
🇬🇺 Flag Guam — Guam
🇬🇼 Flag Guinea-Bissau — Guinea-Bissau
🇬🇾 Flag Guyana — Guyana
🇭🇰 Flag Hong Kong SAR China — Hồng Kông (Trung Quốc)
🇭🇲 Flag Heard & McDonald Islands — Đảo Heard & McDonald
🇭🇳 Flag Honduras — Honduras
🇭🇷 Flag Croatia — Croatia
🇭🇹 Flag Haiti — Haiti
🇭🇺 Flag Hungary — Hungary
🇮🇨 Flag Canary Islands — Quần đảo Canary
🇮🇩 Flag Indonesia — Indonesia
🇮🇪 Flag Ireland — Ireland
🇮🇱 Flag Israel — Israel
🇮🇲 Flag Isle of Man — Đảo Man
🇮🇳 Flag India — Ấn Độ
🇮🇴 Flag British Indian Ocean Territory — Lãnh thổ Ấn Độ Dương thuộc Anh
🇮🇶 Flag Iraq — Iraq
🇮🇷 Flag Iran — Iran
🇮🇸 Flag Iceland — Iceland
🇮🇹 Flag Italy — Ý
🇯🇪 Flag Jersey — Jersey
🇯🇲 Flag Jamaica — Jamaica
🇯🇴 Flag Jordan — Jordan
🇯🇵 Flag Japan — Nhật Bản
🇰🇪 Flag Kenya — Kenya
🇰🇬 Flag Kyrgyzstan — Kyrgyzstan
🇰🇭 Flag Cambodia — Cambodia (Campuchia)
🇰🇮 Flag Kiribati — Kiribati
🇰🇲 Flag Comoros — Comoros
🇰🇳 Flag St Kitts & Nevis — Saint Kitts và Nevis
🇰🇵 Flag North Korea — Triều Tiên (Bắc Hàn)
🇰🇷 Flag South Korea — Hàn Quốc (Nam Hàn)
🇰🇼 Flag Kuwait — Kuwait
🇰🇾 Flag Cayman Islands — Quần đảo Cayman
🇰🇿 Flag Kazakhstan — Kazakhstan
🇱🇦 Flag Laos — Lào
🇱🇧 Flag Lebanon — Liban
🇱🇨 Flag Saint Lucia — Saint Lucia
🇱🇮 Flag Liechtenstein — Liechtenstein
🇱🇰 Flag Sri Lanka — Sri Lanka
🇱🇷 Flag Liberia — Liberia
🇱🇸 Flag Lesotho — Lesotho
🇱🇹 Flag Lithuania — Lithuania
🇱🇺 Flag Luxembourg — Luxembourg
🇱🇻 Flag Latvia — Latvia
🇱🇾 Flag Libya — Libya
🇲🇦 Flag Morocco — Ma Rốc (Ma-rốc)
🇲🇨 Flag Monaco — Monaco
🇲🇩 Flag Moldova — Moldova
🇲🇪 Flag Montenegro — Montenegro
🇲🇫 Flag Saint Martin — Saint Martin
🇲🇬 Flag Madagascar — Madagascar
🇲🇭 Flag Marshall Islands — Quần đảo Marshall
🇲🇰 Flag North Macedonia — Bắc Macedonia
🇲🇱 Flag Mali — Mali
🇲🇲 Flag Myanmar — Myanmar
🇲🇳 Flag Mongolia — Mông Cổ
🇲🇴 Flag Macao SAR China — Ma Cao (Trung Quốc)
🇲🇵 Flag Northern Mariana Islands — Quần đảo Bắc Mariana
🇲🇶 Flag Martinique — Martinique
🇲🇷 Flag Mauritania — Mauritania
🇲🇸 Flag Montserrat — Montserrat
🇲🇹 Flag Malta — Malta
🇲🇺 Flag Mauritius — Mauritius
🇲🇻 Flag Maldives — Maldives
🇲🇼 Flag Malawi — Malawi
🇲🇽 Flag Mexico — Mexico
🇲🇾 Flag Malaysia — Malaysia
🇲🇿 Flag Mozambique — Mozambique
🇳🇦 Flag Namibia — Namibia
🇳🇨 Flag New Caledonia — Tân Caledonia
🇳🇪 Flag Niger — Niger
🇳🇫 Flag Norfolk Island — Đảo Norfolk
🇳🇬 Flag Nigeria — Nigeria
🇳🇮 Flag Nicaragua — Nicaragua
🇳🇱 Flag Netherlands — Hà Lan
🇳🇴 Flag Norway — Na Uy
🇳🇵 Flag Nepal — Nepal
🇳🇷 Flag Nauru — Nauru
🇳🇺 Flag Niue — Niue
🇳🇿 Flag New Zealand — New Zealand
🇴🇲 Flag Oman — Oman
🇵🇦 Flag Panama — Panama
🇵🇪 Flag Peru — Peru
🇵🇫 Flag French Polynesia — Polynésie thuộc Pháp
🇵🇬 Flag Papua New Guinea — Papua New Guinea
🇵🇭 Flag Philippines — Philippines
🇵🇰 Flag Pakistan — Pakistan
🇵🇱 Flag Poland — Ba Lan
🇵🇲 Flag Saint Pierre & Miquelon — Saint Pierre và Miquelon
🇵🇳 Flag Pitcairn Islands — Quần đảo Pitcairn
🇵🇷 Flag Puerto Rico — Puerto Rico
🇵🇸 Flag Palestinian Territories — Lãnh thổ Palestine
🇵🇹 Flag Portugal — Bồ Đào Nha
🇵🇼 Flag Palau — Palau
🇵🇾 Flag Paraguay — Paraguay
🇶🇦 Flag Qatar — Qatar
🇷🇪 Flag Réunion — Réunion
🇷🇴 Flag Romania — Romania
🇷🇸 Flag Serbia — Serbia
🇷🇺 Flag Russia — Nga
🇷🇼 Flag Rwanda — Rwanda
🇸🇦 Flag Saudi Arabia — Ả Rập Xê Út
🇸🇧 Flag Solomon Islands — Quần đảo Solomon
🇸🇨 Flag Seychelles — Seychelles
🇸🇩 Flag Sudan — Sudan
🇸🇪 Flag Sweden — Thụy Điển
🇸🇬 Flag Singapore — Singapore
🇸🇭 Flag Saint Helena, Ascension & Tristan da Cunha — Saint Helena, Ascension & Tristan da Cunha
🇸🇮 Flag Slovenia — Slovenia
🇸🇯 Flag Svalbard & Jan Mayen — Svalbard & Jan Mayen
🇸🇰 Flag Slovakia — Slovakia
🇸🇱 Flag Sierra Leone — Sierra Leone
🇸🇲 Flag San Marino — San Marino
🇸🇳 Flag Senegal — Senegal
🇸🇴 Flag Somalia — Somalia
🇸🇷 Flag Suriname — Suriname
🇸🇸 Flag South Sudan — Nam Sudan
🇸🇹 Flag São Tomé and Príncipe — São Tomé và Príncipe
🇸🇻 Flag El Salvador — El Salvador
🇸🇽 Flag Sint Maarten — Sint Maarten (Hà Lan)
🇸🇾 Flag Syria — Syria
🇸🇿 Flag Eswatini — Eswatini
🇹🇦 Flag Tristan da Cunha — Tristan da Cunha
🇹🇨 Flag Turks and Caicos Islands — Quần đảo Turks và Caicos
🇹🇩 Flag Chad — Tchad (T Chad)
🇹🇫 Flag French Southern Territories — Lãnh thổ phương Nam thuộc Pháp
🇹🇬 Flag Togo — Togo
🇹🇭 Flag Thailand — Thái Lan
🇹🇯 Flag Tajikistan — Tajikistan
🇹🇰 Flag Tokelau — Tokelau
🇹🇱 Flag Timor-Leste — Đông Timor
🇹🇲 Flag Turkmenistan — Turkmenistan
🇹🇳 Flag Tunisia — Tunisia
🇹🇴 Flag Tonga — Tonga
🇹🇷 Flag Türkiye (Turkey) — Thổ Nhĩ Kỳ
🇹🇹 Flag Trinidad and Tobago — Trinidad và Tobago
🇹🇻 Flag Tuvalu — Tuvalu
🇹🇼 Flag Taiwan — Đài Loan
🇹🇿 Flag Tanzania — Tanzania
🇺🇦 Flag Ukraine — Ukraine
🇺🇬 Flag Uganda — Uganda
🇺🇲 Flag U.S. Outlying Islands — Các đảo hải ngoại Hoa Kỳ
🇺🇳 Flag United Nations — Liên Hiệp Quốc
🇺🇸 Flag United States — Hoa Kỳ (Mỹ)
🇺🇾 Flag Uruguay — Uruguay
🇺🇿 Flag Uzbekistan — Uzbekistan
🇻🇦 Flag Vatican City — Vatican
🇻🇨 Flag Saint Vincent and the Grenadines — Saint Vincent và Grenadines
🇻🇪 Flag Venezuela — Venezuela
🇻🇬 Flag British Virgin Islands — Quần đảo Virgin thuộc Anh
🇻🇮 Flag U.S. Virgin Islands — Quần đảo Virgin thuộc Mỹ
🇻🇳 Flag Vietnam — Việt Nam
🇻🇺 Flag Vanuatu — Vanuatu
🇼🇫 Flag Wallis and Futuna — Wallis và Futuna
🇼🇸 Flag Samoa — Samoa
🇽🇰 Flag Kosovo — Kosovo
🇾🇪 Flag Yemen — Yemen
🇾🇹 Flag Mayotte — Mayotte
🇿🇦 Flag South Africa — Nam Phi
🇿🇲 Flag Zambia — Zambia
🇿🇼 Flag Zimbabwe — Zimbabwe
🏴 Flag England — Anh (England)
🏴 Flag Scotland — Scotland (Scotland)
🏴 Flag Wales — Wales
🥲 Smiling face with tear — cười rơi lệ/vừa vui vừa buồn.
🥸 Disguised face — cải trang/kính mũi ria.
🤌 Pinched fingers — chụm tay/“ý gì vậy”.
🫀 Anatomical heart — trái tim giải phẫu.
🫁 Lungs — phổi/hô hấp.
🥷 Ninja — ninja/ninjutsu.
🤵‍♂️ Man in tuxedo — đàn ông mặc tuxedo.
🤵‍♀️ Woman in tuxedo — phụ nữ mặc tuxedo.
👰‍♂️ Man with veil — đàn ông đội khăn voan (cưới).
👰‍♀️ Woman with veil — phụ nữ đội khăn voan (cô dâu).
👩‍🍼 Woman feeding baby — phụ nữ cho bé bú/bú bình.
👨‍🍼 Man feeding baby — đàn ông cho bé bú/bú bình.
🧑‍🍼 Person feeding baby — người cho bé bú/bú bình.
🧑‍🎄 Mx Claus — nhân vật Claus trung tính/giáng sinh.
🫂 People hugging — ôm nhau/chăm sóc.
🐈‍⬛ Black cat — mèo đen/điềm gở/may rủi.
🦬 Bison — bò rừng/bò bison.
🦣 Mammoth — voi ma mút/ngà lớn.
🦫 Beaver — hải ly/gặm nhấm.
🐻‍❄️ Polar bear — gấu trắng Bắc Cực.
🦤 Dodo — chim dodo (tuyệt chủng).
🪶 Feather — lông vũ.
🦭 Seal — hải cẩu.
🪲 Beetle — bọ cánh cứng.
🪳 Cockroach — gián.
🪰 Fly — ruồi.
🪱 Worm — giun/sâu.
🪴 Potted plant — cây chậu/cây trong nhà.
🫐 Blueberries — việt quất xanh.
🫒 Olive — ô liu.
🫑 Bell pepper — ớt chuông.
🫓 Flatbread — bánh dẹt/bánh mì phẳng.
🫔 Tamale — tamale/bánh ngô gói.
🫕 Fondue — lẩu phô mai/fondue.
🫖 Teapot — ấm trà.
🧋 Bubble tea — trà sữa trân châu/boba.
🪨 Rock — đá/tảng đá.
🪵 Wood — gỗ/khúc gỗ.
🛖 Hut — túp lều/nhà chòi.
🛻 Pickup truck — xe bán tải.
🛼 Roller skate — giày trượt patin.
🪄 Magic wand — đũa phép.
🪅 Piñata — piñata (đập kẹo).
🪆 Nesting dolls — búp bê Matryoshka.
🪡 Sewing needle — kim khâu.
🪢 Knot — nút thắt/dây.
🩴 Thong sandal — dép xỏ ngón.
🪖 Military helmet — mũ quân đội/mũ chiến.
🪗 Accordion — đàn accordion.
🪘 Long drum — trống dài/trống truyền thống.
🪙 Coin — đồng xu/tiền xu.
🪃 Boomerang — boomerang.
🪚 Carpentry saw — cưa mộc/cưa gỗ.
🪛 Screwdriver — tua vít/vít vặn.
🪝 Hook — móc/neo móc (dụng cụ).
🪜 Ladder — thang.
🛗 Elevator — thang máy.
🪞 Mirror — gương/phản chiếu.
🪟 Window — cửa sổ/quang cảnh.
🪠 Plunger — dụng cụ thông tắc/bơm cầu.
🪤 Mouse trap — bẫy chuột.
🪣 Bucket — xô/thùng đựng nước.
🪥 Toothbrush — bàn chải đánh răng/vệ sinh răng miệng.
🪦 Headstone — bia mộ/mộ chí.
🪧 Placard — bảng hiệu/bảng thông báo.
⚧️ Transgender symbol — biểu tượng người chuyển giới/LGBTQ.
🏳️‍⚧️ Transgender flag — cờ chuyển giới/LGBTQ.
😶‍🌫️ Face in clouds — mặt trong mây/mơ màng/mịt mù.
😮‍💨 Face exhaling — thở phào/thở dài/kiệt sức.
😵‍💫 Face with spiral eyes — mắt xoắn/choáng váng/buồn nôn/bối rối.
❤️‍🔥 Heart on fire — trái tim bùng cháy/đam mê.
❤️‍🩹 Mending heart — trái tim đang lành/băng bó/chữa lành.
🧔‍♂️ Man: beard — đàn ông có râu.
🧔‍♀️ Woman: beard — phụ nữ có râu.
🫠 Melting face — mặt tan chảy/nóng chảy/thẹn.
🫢 Face with hand over mouth — che miệng/mí mật/sốc.
🫣 Face with peeking eye — hé mắt/lo sợ/ngượng.
🫡 Saluting face — mặt chào kiểu quân đội/kính chào.
🫥 Dotted line face — mặt nét chấm/ẩn hình/cô đơn.
🫤 Face with diagonal mouth — miệng xéo/hoài nghi/bối rối/bất mãn.
🥹 Face holding back tears — kìm nước mắt/xúc động/biết ơn.
🫱 Rightwards hand — bàn tay hướng phải/đưa/trao.
🫲 Leftwards hand — bàn tay hướng trái/đưa/trao.
🫳 Palm down hand — úp bàn tay/hạ xuống/thả.
🫴 Palm up hand — ngửa bàn tay/nâng/đòi hỏi.
🫰 Hand with index and thumb crossed — ngón tay chụm hình tim/tiền/đắt đỏ.
🫵 Index pointing at viewer — chỉ vào bạn/tuyển chọn.
🫶 Heart hands — tạo hình trái tim/yêu thương/ủng hộ.
🫦 Biting lip — cắn môi/tán tỉnh/lo lắng/đau.
🫅 Person with crown — người đội vương miện/vương giả.
🫃 Pregnant man — người đàn ông mang thai.
🫄 Pregnant person — người mang thai (trung tính).
🧌 Troll — quỷ lùn/troll/sinh vật huyền bí.
🪸 Coral — san hô/rạn san hô.
🪷 Lotus — hoa sen/thiền/tĩnh tâm.
🪹 Empty nest — tổ trống.
🪺 Nest with eggs — tổ có trứng.
🫘 Beans — đậu/hạt đậu.
🫗 Pouring liquid — rót chất lỏng/đổ nước.
🫙 Jar — hũ/lọ/chum (đựng sốt).
🛝 Playground slide — cầu trượt/sân chơi.
🛞 Wheel — bánh xe.
🛟 Ring buoy — phao cứu sinh/phao tròn.
🪬 Hamsa — bùa Hamsa/bảo hộ/tôn giáo.
🪩 Mirror ball — quả cầu gương/đĩa nhạc/dance.
🪫 Low battery — pin yếu/cạn.
🩼 Crutch — nạng/hỗ trợ đi lại.
🩻 X-ray — ảnh X-quang/khung xương.
🫧 Bubbles — bong bóng/xà phòng/sủi bọt.
🪪 Identification card — thẻ căn cước/thẻ ID.
🟰 Heavy equals sign — dấu bằng đậm (toán học).
