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
[ptext name="chara_name_area" layer=message0 width="200" color=white x=130 y=420 size=26]
[chara_config ptext="chara_name_area"]
[eval exp="resetDpointToZero()"]
[eval exp="resetMygoldToZero()"]

@layopt layer = message0 visible="true" 
...[r][l]
... ...[r][l]
... ... ...。[cm][l]

[bg storage="Western-Castle_noon.jpg" ]
#あなた
はあ～～、まさかこのオレが迷宮にいくことになるなんて...。[l][cm]
#
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
@set_dpoint
; dpointの値で条件分岐
[if exp="tf.dpoint >= 5"]
    [jump storage="DeadEnd.ks" target="*END_G1" ]
[else]
    すこし時間をおいた。[l][r]
    [cm]
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
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[layopt layer=message0 visible=true]
[cm]
カランッ...カランッ...[r][l]
骨のぶつかり合う音が聞こえる！[r][l]
[cm]

[chara_new name="suke_A" storage="suke.png" jname="スケルトンA"]
[chara_show name="suke_A" ]
スケルトンがあらわれた！[r][l]
[cm]
なんてことはないあいてだ。[r][l]
どうするべきだろうか？[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="attack.png" target="*select1_2_1" ][r]

[locate x=750 y=300]
[button graphic="no_battle.png" target="*select1_2_2" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="*select1_2_3" ][r]
[s]

*select1_2_1
[cm]
[layopt layer=message0 visible=true]
[quake count=1 time=400]
バキィッ！！[r][l]
[cm]
あなたのナイフがスケルトンの骨を砕いた！[l][r]
骨の塊がバラバラとくずれていく。[l][r]
[chara_hide name="suke_A" ]
[cm]
スケルトンをたおした！[r][l]
[cm]
まだまだ先は長い。進もう。[r][l]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[jump target="*select1_3" ]
[s]

*select1_2_2
[cm]
[layopt layer=message0 visible=true]
あなたはてきに背をみせ逃走をはかった！[r][l]
しかし、スケルトンはその隙をのがさない！[r][l]
[cm]
[quake count=1 time=400]
ドスッ！！[r][l]
[cm]
あなたのカラダを矢がつらぬいた！[r][l]
[chara_hide name="suke_A" ]
[jump storage="DeadEnd.ks" target="*END_G2" ][l]
[s]

*select1_2_3
[cm]
[getrand min="1" max="100"]
[if exp="tf.rand <= 50"][jump target="*select1_2_1"]
[else][jump target="**select1_2_2"]
[endif]
[s]

*select1_3
[layopt layer=message0 visible=true]
[cm]
しばらく進むと階段があらわれた。[r][l]
この先は迷宮の上層だ。気を付けて進むとしよう。[r][l]
[cm]
[layopt layer=message0 visible=false]
[mask]
[bg storage="black.png" ]
[mask_off]
[jump target="*select2_1" ]
[s]

*select2_1
[cm]
[bg storage="cave1.jpg" ]
[layopt layer=message0 visible=true]
[cm]
ー 迷宮上層 ー[r][l]
[cm]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[layopt layer=message0 visible=true]
[cm]
#謎の声
おい、オマエ！[r][l]
#
[cm]
迷宮を進んでいると謎の男がとびだしてきた！[r][l]
[cm]
[chara_new name="tensei"  storage="tensei.png" jname="てんせい" ]
[chara_show name="tensei" ]
#謎の男
オマエ冒険者だろ？オマエ金欲しそうだな？[r][l]
#
[cm]
いきなり失礼な男だ。しかもすごくあやしい。[r][l]
[cm]
#てんせい
オレの名はてんせい。オマエと同じ冒険者さ！[r][l]
よろしくな！[r][l]
[cm]
今日は金に困ってるオマエにイイ情報を教えてやるよ！[r][l]
[cm]
#
#あなた
情報？[r][l]
[cm]
#
#てんせい
ああ、この先の分かれ道を右に行った先にオタカラがあるんだ！[r][l]
ただオレはみての通り手がふさがってて持って帰れねえ！[r][l]
[cm]
そこでオマエにくれてやる！[r][l]
いいだろ！[r][l]
#
[cm]
#あなた
そんな話を信じると思ってるのか？[r][l]
#
[cm]
#てんせい
じゃあな！[r][l]
#
[chara_hide name="tensei" ]
[cm]
そういうとてんせいは去っていった。[r][l]
[cm]
#あなた
なんだったんだ、アイツ...？[l][r]
しかし宝箱か...。覚えておこう。[r][l]
#
[cm]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[bg storage="dungeon1.jpg" ]
[layopt layer=message0 visible=true]
分かれ道だ。[r][l]
先程の男の言うとおり右にいくべきだろうか？[r][l]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="left.png" target="**select2_2_2" ][r]

[locate x=750 y=300]
[button graphic="right.png" target="**select2_2_1" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="**select2_2_3" ][r]
[s]

*select2_2_1
[cm]
[layopt layer=message0 visible=true]
オレは金が欲しい！[r][l]
あの男の言うとおり右に進むことにした。[r][l]
[cm]
[bg storage="cave1.jpg" ]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[layopt layer=message0 visible=true]
つきあたりに宝箱を見つけた。[l][r]
罠の可能性もあるが開けるべきだろうか？
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="open.png" target="*select2_2_1_1" ][r]

[locate x=750 y=300]
[button graphic="noopen.png" target="*select2_2_1_2" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="*select2_2_1_3" ][r]
[s]

*select2_2_1_1
[cm]
[layopt layer=message0 visible=true]
あなたは宝箱を開けた！[r][l]
[cm]
カチッ。[r][l]
...ドドドドド！！！[r][l]
ガラガラガラガラ！！！！！[r][l]
[cm]
ズシ―――ンッ！！！！！[r][l]
[cm]
[bg storage="black.png" ]
どうやら宝箱は罠だったようだ！[r][l]
崩落の仕掛けが作動して閉じ込められてしまった！[r][l]
[cm]
#謎の声
ふぇッ！バァーーーカ！バァーーーカ！[r][l]
#
[cm]
暗闇の奥から聞き覚えのある声が聞こえてきた。[r][l]
[cm]
#てんせい
[chara_new name="d_tensei" storage="dark_tensei.jpg" jname="てんせい" ]
[chara_show name="d_tensei" ]
オマエの持ってるオタカラ、大事に使ってやるぜ！[r][l]
ふぇあーーーッ！ハッハッハーーーァ！！！[r][l]
#
[cm]
[chara_hide name="d_tensei" ]
[jump storage="DeadEnd.ks" target="*END_G2" ]
[s]

*select2_2_1_2
[cm]
[layopt layer=message0 visible=true]
あなたが宝箱を開けるのに夢中になっているそのとき！[r][l]
[cm]
[quake count=1 time=400]
ドスン！！！[r][l]
[cm]
あなたの腹から剣が突き出てきた！[r][l]
[cm]
[bg storage="black.png" ]
#謎の声
ふぇッ！バァーーーカ！バァーーーカ！[r][l]
#
[cm]
視界が暗くなるなか、聞き覚えのある声が聞こえてきた。[r][l]
[cm]
#てんせい
[chara_new name="d_tensei" storage="dark_tensei.jpg" jname="てんせい" ]
[chara_show name="d_tensei" ]
オマエの持ってるオタカラ、大事に使ってやるぜ！[r][l]
ふぇあーーーッ！ハッハッハーーーァ！！！[r][l]
#
[cm]
[chara_hide name="d_tensei" ]
[jump storage="DeadEnd.ks" target="*END_G2" ]
[s]

*select2_2_1_3
[cm]
[getrand min="1" max="100"]
[if exp="tf.rand <= 80"][jump target="*select2_2_1_1"]
[else][jump target="*select2_2_1_2"]
[endif]
[s]

*select2_2_2
[cm]
[layopt layer=message0 visible=true]
やはりあの男はあやしい。[r][l]
罠だと考えたオレは左へ進むことにした。[r][l]
[cm]
[bg storage="cave1.jpg" ]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[layopt layer=message0 visible=true]
[s]

*select2_2_3
[cm]
[getrand min="1" max="100"]
[if exp="tf.rand <= 50"][jump target="*select2_2_1"]
[else][jump target="*select2_2_2"]
[endif]
[s]