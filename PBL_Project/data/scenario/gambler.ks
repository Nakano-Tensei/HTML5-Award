*gambler
[call storage="macro.ks"]
[cm]
[mask]
[bg storage="black.png" ]
[mask_off]
[position layer=message0 width=900 height=400 top=400 left=70 ]
[position layer=message0 page=fore frame="frame1.png" margint="65" marginl="50" marginr="90" marginb="60"]
[cm]
[freeimage layer=1 ]
[eval exp="resetDpointToZero()"]
[eval exp="resetMygoldToZero()"]

@layopt layer = message0 visible="true" 
...[r][l]
... ...[r][l]
... ... ...。[cm][l]

[bg storage="Western-Castle_noon.jpg" ]
はあ～～、まさかこのオレが迷宮にいくことになるなんて...。[l][cm]

[bg storage="fantasydrink1.jpg" ]
昨日、オレはいつものように酒場で飲んでいた。[l][r]
そしたら飲み仲間がきて...[l][r]
だんだん盛り上がって... ...[l][cm]

...朝起きたら素寒貧になってた。[l][cm]

[bg storage="Western-Castle_noon.jpg" ]
...というわけで、オレは金を稼ぐために迷宮に入ることになった。[l][r]

命がけの冒険になる。心の準備ができたらいくとしよう。[l][cm]

*check1_1
[cm]
[locate x=400 y=100]
[button graphic="return1.png" target="*select1_1" ][r]

[locate x=400 y=300]
[button graphic="go1.png" target="*select1_2" ][r]

[s]

*select1_1
[cm]
[eval exp="updateDpoint(1)"]
; Firestoreからdpoint値を取得して変数に格納
[eval exp="getDpointValue().then((value) => tyrano.plugin.kag.variable.tf.dpoint = value)"]
; dpointの値で条件分岐
[if exp="tf.dpoint >= 5"]
    [jump storage="DeadEnd.ks" target="*END_G1" ]
[else]
[delay speed="150" ]
    すこし時間をおいた。[l][cm]
    [resetdelay]
    [jump target="*select1_1_1" ]
[endif]
[s]

*select1_1_1
[cm]
[locate x=400 y=100]
[button graphic="return1.png" target="*select1_1" ][r]

[locate x=400 y=300]
[button graphic="go1.png" target="*select1_2" ][r]
[s]

*select1_2
[cm]
[freeimage layer="1" ]
[bg storage="cave1.jpg" ]
ー 迷宮入口 ー[l][cm]

ここから先は命の保証はない。慎重にいこう。[l][cm]
[locate x=400 y=200]
[button graphic="miwatasu.png" target="*select1_2_1" ][r]
[s]

*select1_2_1
[cm]
[getrand min="1" max="100"]
[if exp="tf.rand <= 80"][jump target="*select2_1_1"]
[else][jump target="*select2_1_2"]
[endif]
[s]

*select2_1_1
[chara_new name="suke_0" storage="suke_0.png" jname="スケルトン" ]
[chara_show name="suke_0" ]
スケルトンをみつけた！[l][r]
まだこちらには気づいていないようだ。[l][cm]

ふいうちを仕掛けるチャンスだ！[l][cm]

[locate x=400 y=100]
[button graphic="huiuti.png" target="*select2_2_1" ][r]

[locate x=400 y=300]
[button graphic="no_battle.png" target="*select2_2_2" ][r]

[s]

*select2_1_2
[cm]
[chara_new name="suke_0" storage="suke_0.png" jname="スケルトン" ]
[chara_show name="suke_0" ]
スケルトンがあらわれた！[l][cm]

[locate x=400 y=100]
[button graphic="attack.png" target="*select2_2_3" ][r]

[locate x=400 y=300]
[button graphic="no_battle.png" target="*select2_2_2" ][r]

[s]

*select2_2_1
[cm]
ふいうちをしかけた！[l][r]
[getrand min="1" max="100"]
[if exp="tf.rand <= 90"]
ふりかぶったナイフがほねを砕く！[l][r]
[jump target="*select2_2_3"]
[else]
気づかれた！ふいうちは失敗だ！[l][cm]
[jump target="*select2_1_2"]
[endif]
[s]

*select2_2_2
[cm]
[chara_hide name="suke_0" ]
...なんとかやりすごせたようだ。[l][r]
さきに進もう。[l][cm]
[jump target="*select2_3"]
[s]


*select2_2_3
[cm]
[chara_hide name="suke_0" ]
スケルトンをたおした！[l][r]
さきに進もう。[l][cm]
[jump target="*select2_3"]
[s]

*select2_3
[cm]
[bg storage="dungeon1.jpg" ]
道がふたつに分かれている。[l][r]
どちらに進もうか。[l][cm]

[locate x=400 y=100]
[button graphic="right.png" target="*select3_1" ][r]

[locate x=400 y=300]
[button graphic="left.png" target="*select3_3" ][r]
[s]

*select3_1
[call storage="macro.ks"]
[iscript]
f.mygold=0
[endscript]
[cm]
[chara_new name="box0" storage="box_0.png" jname="宝箱" ]
[chara_show name="box0"]
宝箱を見つけた！[l][cm]

しかし罠の可能性もある。[l][r]
開けるべきだろうか？[l][cm]

[locate x=400 y=100]
[button graphic="open.png" target="*select3_2_1" ][r]

[locate x=400 y=300]
[button graphic="noopen.png" target="*select3_2_2" ][r]
[s]

*select3_2_1
[cm]
[chara_hide name="box0" ]
宝箱を開けると中から少量の金が出てきた！[l][r]
[delay speed="150" ]
[eval exp="updateMygold(10)" ]
現在の所持金：[eval exp="getMygoldValue().then((value) => tyrano.plugin.kag.variable.tf.mygold = value)"] Ｇ[l][cm]
[jump target="*select3_2_2" ][l]
[s]

*select3_2_2
[cm]
[resetdelay]
分かれ道までもどろう。[l][cm]
[chara_hide name="box0" ]
[jump target="*select3_2_3" ]
[s]

*select3_2_3
[cm]
残る道はひとつだ。[l][cm]

[locate x=400 y=200]
[button graphic="left.png" target="*select3_3" ][r]
[s]

*select3_3
[cm]

[s]