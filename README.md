doh-cancer
==========

The crawler for the cancer report from department of health

取得特定癌症報表：
# ex. perl loop.pl WR1_1$ctl138
perl loop.pl 則是取得所有癌症報表

===
分類
===

# WR1_1$ctl138 => 口腔、口咽及下咽
# WR1_1$ctl143 => 主唾液腺
# WR1_1$ctl148 => 鼻咽
# WR1_1$ctl153 => 消化器官及腹膜
# WR1_1$ctl158 => 呼吸系統及胸腔內器
# WR1_1$ctl163 => 骨、關節及關節軟骨
# WR1_1$ctl168 => 結締組織、皮下組織
# WR1_1$ctl173 => 皮膚
# WR1_1$ctl178 => 女性乳房
# WR1_1$ctl183 => 男性乳房
# WR1_1$ctl188 => 女性生殖器官
# WR1_1$ctl193 => 男性生殖器官
# WR1_1$ctl198 => 泌尿器官
# WR1_1$ctl203 => 眼及淚腺
# WR1_1$ctl208 => 中樞神經系統
# WR1_1$ctl213 => 內分泌腺
# WR1_1$ctl218 => 其他分界不明的部位
# WR1_1$ctl223 => 惡性淋巴瘤
# WR1_1$ctl228 => 不明原發部位
# WR1_1$ctl233 => 白血病
# WR1_1$ctl238 => 其他

# running trss.js:
# casperjs --ignore-ssl-errors=true --cookies-file=./foo.txt tree.js

v 0.2
Using casperjs over phantomjs to fetch the data (TODO)
