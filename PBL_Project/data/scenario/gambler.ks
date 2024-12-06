*gambler

[cm]
[mask]
[bg storage="black.png" ]
[mask_off]
[position layer=message0 width=900 height=400 top=400 left=70 ]
[position layer=message0 page=fore frame="frame1.png" margint="65" marginl="50" marginr="90" marginb="60"]
[cm]
[freeimage layer=1 ]

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
すこし時間をおいた。[l]
[jump target="*check1_1"  ]
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
/*ここにモンスター出現の効果音*/
[chara_new name="suke" storage="suke.png" jname="スケルトン" ]
[chara_show name="suke" ]
スケルトンをみつけた！[l][r]
まだこちらには気づいていないようだ。[l][cm]

ふいうちを仕掛けるチャンスだ！[l][cm]

[locate x=400 y=100]
[button graphic="huiuti.png" target="*select2_2_1" ][r]

[locate x=400 y=300]
[button graphic="no_battle.png" target="*select2_2" ][r]

[s]

*select2_1_2
[cm]
[chara_new name="suke" storage="suke.png" jname="スケルトン" ]
[chara_show name="suke" ]
スケルトンがあらわれた！[l][cm]

[locate x=400 y=100]
[button graphic="attack.png" target="*select2_2" ][r]

[locate x=400 y=300]
[button graphic="no_battle.png" target="*select2_2" ][r]

[s]

*select2_2_1
[cm]
ふいうちをしかけた！[l][r]




*select2_2
[cm]
あいつが、滅海王...！？[l][cm]

