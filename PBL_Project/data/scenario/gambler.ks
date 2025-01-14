*gambler
[plugin name="popopo"]
[call storage="macro.ks"]
[popopo frequency="C"]
[cm]
[mask]
[fadeoutbgm time=3000]
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
[eval exp="resettpointToZero()"]

@layopt layer = message0 visible="true" 
...[r][l]
... ...[r][l]
... ... ...。[cm][l]
[bg storage="fantasydrink1.jpg" ]
ある日の酒場、[r][l]
冒険者たちがこんな会話をしていた。[r][l]
[cm]
#男Aの声
なあ知ってるか？[r][l]
迷宮のウワサ！[r][l]
#
[cm]
#男Bの声
なんだそりゃ？[r][l]
また盗賊の話じゃないだろうな？[r][l]
#
[cm]
#男Aの声
ちげーって！[r][l]
じつはあの迷宮の一番下にはとんでもねえ怪物と財宝が眠ってるらしいぜ？[r][l]
#
[cm]
#男Bの声
うへぇーー、そりゃすげぇ！[r][l]
けど俺たちにゃムリだろーな！[r][l]
#
[cm]
[quake count=1 time=400]
#あなた
財宝！？その話ホントか！！？[r][l]
#
[cm]
そのとき、男たちの会話に喰い付いた者がいた。[r][l]
そう、あなたのことだ。[r][l]
金に飢えているあなたがこんなおいしい話を聞き逃すハズがない。[l][r]
[cm]
#男Bの声
うおッ！？なんだおまえ！！？[r][l]
#
[cm]
#あなた
情報感謝する！[r][l]
[cm]
#
あなたはいい話を聴いたと思いながら店を出た。[r][l]
[cm]
[bg storage="Western-Castle_noon.jpg" ]
...というわけで、あなたは大金を求めて迷宮に入ることにした。[l][r]

命がけの冒険になる。心の準備ができたらいくとしよう。[l][cm]

*check1_1
[cm]
[locate x=400 y=100]
[button graphic="return1.png" target="*select1_1" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=400 y=300]
[button graphic="go1.png" target="*select1_2" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

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
[eval exp="updatetpoint(1)"]
[locate x=400 y=100]
[button graphic="return1.png" target="*select1_1" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=400 y=300]
[button graphic="go1.png" target="*select1_2" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select1_2
[cm]
[freeimage layer="1" ]
[bg storage="cave10.png" ]
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
どうする？[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="attack.png" target="*select1_2_1" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="nigeru.png" target="*select1_2_2" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="*select1_2_3" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
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
[playbgm storage="8bit-ME_Victory01.ogg" loop="false" ]
スケルトンをたおした！[r][l]
ゴールドを手に入れた！[r][l]
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
[jump storage="DeadEnd.ks" target="*Dead" ][l]
[s]

*select1_2_3
[cm]
[eval exp="updatetpoint(1)"]
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
[bg storage="cave10.png" ]
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
[chara_new name="tensei"  storage="tensei.png" jname="ワナー" ]
[chara_show name="tensei" ]
#謎の男
オマエ冒険者だろ？オマエ金欲しそうだな？[r][l]
#
[cm]
いきなり失礼な男だ。しかもすごくあやしい。[r][l]
[cm]
#ワナー
オレの名はワナー。オマエと同じ冒険者さ！[r][l]
よろしくな！[r][l]
[cm]
今日は金に困ってるオマエにイイ情報を教えてやるよ！[r][l]
[cm]
#
#あなた
情報？[r][l]
[cm]
#
#ワナー
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
#ワナー
じゃあな！[r][l]
#
[chara_hide name="tensei" ]
[cm]
そういうとワナーは去っていった。[r][l]
[cm]
#あなた
なんだったんだ、アイツ...？[l][r]
しかし宝箱か...。覚えておこう。[r][l]
#
[cm]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[bg storage="cave.jpg" ]
[layopt layer=message0 visible=true]
分かれ道だ。[r][l]
先程の男の言うとおり右にいくべきだろうか？[r][l]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="left.png" target="**select2_2_2" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="right.png" target="**select2_2_1" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="**select2_2_3" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select2_2_1
[cm]
[layopt layer=message0 visible=true]
オレは金が欲しい！[r][l]
あの男の言うとおり右に進むことにした。[r][l]
[cm]
[bg storage="cave10.png" ]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[layopt layer=message0 visible=true]
つきあたりに宝箱を見つけた。[l][r]
罠の可能性もあるが開けるべきだろうか？
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="open.png" target="*select2_2_1_1" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="noopen.png" target="*select2_2_1_2" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="*select2_2_1_3" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
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
#ワナー
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
#ワナー
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
[eval exp="updatetpoint(1)"]
[getrand min="1" max="100"]
[if exp="tf.rand <= 50"][jump target="*select2_2_1_1"]
[else][jump target="*select2_2_1_2"]
[endif]
[s]

*select2_2_2
[cm]
[layopt layer=message0 visible=true]
やはりあの男はあやしい。[r][l]
罠だと考えたオレは左へ進むことにした。[r][l]
[cm]
[bg storage="cave10.png" ]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[layopt layer=message0 visible=true]
しばらく進むと階段があらわれた。[r][l]
が...!![r][l]
[cm]
#謎の声
ギィィッ！！[r][l]
バサッバサッ！！[r][l]
#
[cm]
[chara_new name="gago" storage="gago.png" jname="ガーゴイル" width="600" height="600" ]
[chara_show name="gago" ]
階段の守護者、ガーゴイルがあらわれた！[r][l]
[cm]
なかなかの強敵だ。[r][l]
どうする？[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="attack.png" target="*select2_3_1" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="nigeru.png" target="*select2_3_2" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="*select2_3_3" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select2_2_3
[cm]
[eval exp="updatetpoint(1)"]
[getrand min="1" max="100"]
[if exp="tf.rand <= 50"][jump target="*select2_2_1"]
[else][jump target="*select2_2_2"]
[endif]
[s]

*select2_3_1
[layopt layer=message0 visible=true]
[cm]
あなたはナイフでこうげきをしかけた！[r][l]
[cm]
[quake count=1 time=400]
ギャリィッ！！[r][l]
しかし、石のような皮膚に阻まれダメージが通らない！[r][l]
[cm]
#ガーゴイル
ギャギャギィッ！！ガァッ！！！[r][l]
[cm]
[quake count=1 time=400]
#
ガーゴイルの鋭い爪があなたの身体を引き裂く！[r][l]
[chara_hide name="gago" ]
[jump storage="DeadEnd.ks" target="*END_G2" ]
[s]

*select2_3_2
[layopt layer=message0 visible=true]
[cm]
こいつにはかてない！[r][l]
あなたは一目散ににげだした！[r][l]
[cm]
#ガーゴイル
グルギャァッ！！[r][l]
#
[cm]
ガーゴイルはあなたを倒すべく追ってきている！[r][l]
あなたはどうする？[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="attack.png" target="*select2_3_1" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="nigeru.png" target="*select2_3_2" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="*select2_3_4" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select2_3_3
[cm]
[eval exp="updatetpoint(1)"]
[getrand min="1" max="100"]
[if exp="tf.rand <= 50"][jump target="*select2_3_1"]
[else][jump target="*select2_3_2"]
[endif]
[s]

*select2_3_4
[layopt layer=message0 visible=true]
[cm]
あなたはとっさに持っていたゴールドをガーゴイルへと投げつけた！[r][l]
[cm]
#ガーゴイル
グギャ！？ガルァア！！[r][l]
[cm]
[chara_hide name="gago" ]
#
ガーゴイルはゴールドを夢中になって追いかけ始めた！[r][l]
この隙に先に進めそうだ！[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=400 y=300]
[button graphic="saki.png" target="*select2_4" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select2_4
[cm]
[quake count=6 time=3000]
[layopt layer=message0 visible=true]
なんとかまけたようだ。[r][l]
この先は迷宮の中層だ。気を付けて進むとしよう。[r][l]
[cm]
[layopt layer=message0 visible=false]
[mask]
[bg storage="black.png" ]
[mask_off]
[jump target="*select3_1" ]
[s]

*select3_1
[bg storage="cave10.png" ]
[layopt layer=message0 visible=true]
[cm]
ー 迷宮中層 ー[r][l]
[cm]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[layopt layer=message0 visible=true]
[cm]
[bg storage="cave11.jpg" ]
しばらく進むと開けた場所にでた。[r][l]
[cm]
どうやらここは休憩所らしい。[r][l]
何人かの冒険者が休息をとっているのがみえる。[r][l]
[cm]
ここならしばらく休むことができそうだ。[r][l]
すこし休んでいこうか？[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="yasumu.png" target="*select3_2_1" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="saki.png" target="*select3_2_2" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="*select3_2_3" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select3_2_1
[layopt layer=message0 visible=true]
[cm]
ここまでの道中で疲れがたまっている。[r][l]
あなたは休むことにした。[r][l]
[cm]
しばらく休んでいると冒険者たちの会話が聞こえてきた。[r][l]
[cm]
#男の声A
... ...それでよ、いま迷宮にこの国の騎士様が来てるらしいんだよ。[r][l]
#
[cm]
#男の声B
へー！あのドラゴンを倒したってウワサの？[r][l]
ならこの迷宮もすぐ攻略されちまうなあ。[r][l]
#
[cm]
#男の声C
オレはイヤだぜ！報酬がもらえなくなるじゃねえか！[r][l]
[cm]
#男の声A
安心しな！お前じゃ天地がひっくり返っても怪物にゃ勝てねえよ！[r][l]
#
[cm]
#あなた
そんなやつがいるのか...先を越されないように急がないとな。[r][l]
#
[cm]
あなたはカラダを休めるとともに、気を引き締めなおした！[r][l]
[cm]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[jump target="*select3_3_1"]
[s]

*select3_2_2
[layopt layer=message0 visible=true]
[cm]
こんなところで休んでいるひまは無い！[r][l]
あなたは先を急ぐことにした。[r][l]
[cm]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[jump target="*select3_3_2"]
[s]

*select3_2_3
[cm]
[eval exp="updatetpoint(1)"]
[getrand min="1" max="100"]
[if exp="tf.rand <= 50"][jump target="*select3_2_1"]
[else][jump target="*select3_2_2"]
[endif]
[s]

*select3_3_1
[cm]
[bg storage="cave10.png" ]
[layopt layer=message0 visible=true]
[cm]
休息を終え、先を進んでいると階段が見えてきた！[r][l]
...が、[r][l]
そのまえに大きなモンスターの亡骸が転がっていた。[l][r]
[cm]
#あなた
もしかしてさっき聞いた騎士様ってやつの仕業か？[r][l]
#
[cm]
まあいい...。[r][l]
この先は迷宮の下層だ。気を引き締めて進むとしよう。[r][l]
[cm]
[layopt layer=message0 visible=false]
[mask]
[bg storage="black.png" ]
[mask_off]
[jump target="*select4_1" ]
[s]

*select3_3_2
[bg storage="cave10.png" ]
[layopt layer=message0 visible=true]
[cm]
あなたが先を進んでいると階段が見えてきた！[r][l]
...が、[r][l]
[cm]
#叫び声
ガララアァッ！！！[r][l]
#
[cm]
[chara_new name="deathknight" storage="deathknight.png" jname="デスナイト" height="600" width="600" ]
[chara_show name="deathknight" ]
階段の番人、デスナイトがあらわれた！[r][l]
[cm]
かなりの強敵だ！[r][l]
どうする？[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="attack.png" target="*select3_3_2_1" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="nigeru.png" target="*select3_3_2_2" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="*select3_3_2_3" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select3_3_2_1
[cm]
[layopt layer=message0 visible=true]
[cm]
あなたはナイフで切りかかった！[r][l]
[quake count=1 time=400]
しかし、それよりも早くデスナイトの剣があなたを切り裂いた！[r][l]
[cm]
[chara_hide name="deathknight" ]
[jump storage="DeadEnd.ks" target="*END_G2" ]
[s]

*select3_3_2_2
[layopt layer=message0 visible=true]
[cm]
あなたは背を向け一目散ににげだした！[r][l]
[quake count=1 time=400]
しかし、デスナイトの剣があなたを切り裂いた！[r][l]
[cm]
[chara_hide name="deathknight" ]
[jump storage="DeadEnd.ks" target="*END_G2" ]
[s]

*select3_3_2_3
[cm]
[eval exp="updatetpoint(1)"]
[getrand min="1" max="100"]
[if exp="tf.rand <= 50"][jump target="*select3_3_2_1"]
[else][jump target="*select3_3_2_2"]
[endif]
[s]

*select4_1
[bg storage="cave10.png" ]
[layopt layer=message0 visible=true]
[cm]
ー 迷宮下層 ー[r][l]
[cm]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[layopt layer=message0 visible=true]
[cm]
#叫び声
グヴァアーー！！助けてくれぇえーー！！！[r][l]
#
[cm]
しばらく歩いていると何処からか叫び声が聞こえてきた！[r][l]
[cm]
#あなた
今のは人の声だ！[r][l]
#
[cm]
声の聞こえた方に向かってみると驚くべき光景が！[r][l]
なんと数人の冒険者が一人の男に暴行を加えていたのだ！[r][l]
しかも！その男をあなたは知っている！[r][l]
[cm]
[chara_show name="tensei" ]
#ワナー
ヒギィエェー！！許してくれよォーー！！！[r][l]
#
[cm]
#冒険者A
ふざけやがってこのクソ盗賊が！！[r][l]
[quake count=1 time=400]
#
[cm]
#冒険者B
よくも騙そうとしてくれたなァ！！[r][l]
[quake count=1 time=400]
#
[cm]
#冒険者C
くたばれェッ！！[r][l]
[quake count=1 time=400]
#
[cm]
[chara_hide name="tensei" ]
#あなた
おい、いったいどうしたんだ？[r][l]
#
[cm]
冒険者のひとりが事情を説明してくれた。[r][l]
どうやらこのワナーという男は盗賊らしく、冒険者たちも騙されかけたらしい。[r][l]
いまは制裁を加えているところだそうだ。[l][r]
[cm]
#冒険者A
どうだ？あんたも参加するかい？[r][l]
[cm]
#
集団リンチに誘われた。どうしようか？[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="sanka.png" target="*select4_2_1" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="minogasu.png" target="*select4_2_2" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=100 y=500]
[button graphic="musi.png" target="*select4_2_3" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=500]
[button graphic="unmei.png" target="*select4_2_4" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select4_2_1
[cm]
[layopt layer=message0 visible=true]
悪党は滅びるべきだ！あなたは集団リンチに参加した！[r][l]
[cm]
#冒険者A
くたばれぇーーッ！！[r][l]
[quake count=1 time=400]
#
[cm]
#冒険者B
おらぁーーッ！！[r][l]
[quake count=1 time=400]
#
[cm]
#冒険者C
ボケコラーッ！！[r][l]
[quake count=1 time=400]
#
[cm]
#あなた
オラァッ！！オラァッッ！！！[r][l]
[quake count=1 time=400]
#
[cm]
#ワナー
グワァアーーーーッ！！！[r][l]
[quake count=1 time=400]
#
[cm]
[playbgm storage="8bit-ME_Victory01.ogg" loop="false" ]
あなた達の暴行によって悪党は動かなくなった！[r][l]
[cm]
#あなた
ふうーー、すっきりしたぜ！[r][l]
[cm]
#
あなたは冒険者達とかたい握手をしてから別れた。[r][l]
大金があなたを待っている。先に進もう。[r][l]
[cm]
[jump target="*select4_3" ]
[s]

*select4_2_2
[cm]
[layopt layer=message0 visible=true]
[cm]
#あなた
この男も反省しているはずだ。そのぐらいでやめたらどうだ？[r][l]
#
[cm]
あなたは暴行をやめるように説得した！[r][l]
[cm]
#冒険者A
チィッ！！お人よしが！！[r][l]
[quake count=1 time=400]
#
[cm]
#冒険者B
運がよかったなテメェ！！！[r][l]
[quake count=1 time=400]
#
[cm]
#冒険者C
クソがァッ！！！[r][l]
[quake count=1 time=400]
#
[cm]
冒険者達は去っていった！[r][l]
[cm]
[chara_show name="tensei" ]
#あなた
おいあんた！大丈夫か！[r]
#
[cm]
#ワナー
ア、アンタ！！助けてくれてありがとう！！！[r][l]
[cm]
さっきは騙そうとして悪かったな！[r][l]
じゃあな！！！[r][l]
[cm]
[chara_hide name="tensei" ]
#
ワナーはそう言うとすごい速さで去っていった！[r][l]
[cm]
[eval exp="updatetpoint(7)"]
#あなた
相変わらずなんなんだ、あいつは？[r][l]
#
[cm]
いまはとにかく先を急ごう。[r][l]
[cm]
[jump target="*select4_3" ]
[s]

*select4_2_3
[cm]
[layopt layer=message0 visible=true]
[cm]
#あなた
悪いがそんなことに構っているヒマはないんだ。[r][l]
[cm]
#
そういうとあなたは先を急いだ。[r][l]
[cm]
[jump target="*select4_3" ]
[s]

*select4_2_4
[cm]
[eval exp="updatetpoint(1)"]
[getrand min="1" max="100"]
[if exp="tf.rand <= 50"][jump target="*select4_2_1"]
[else][jump target="*select4_2_2"]
[endif]
[s]

*select4_3
[cm]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[layopt layer=message0 visible=true]
[cm]
キィィン！！ギャリィ！！！[r][l]
どこからか戦闘音が聞こえてきた。[r][l]
向かってみよう。[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=400 y=300]
[button graphic="saki.png" target="*select4_4" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select4_4
[cm]
[quake count=6 time=3000]
[layopt layer=message0 visible=true]
[cm]
[chara_new name="suke2" storage="suke.png" ]
[chara_new name="suke3" storage="suke.png" ]
[chara_new name="suke4" storage="suke.png" ]
[chara_show name="suke2" left=50 top=200]
[chara_show name="suke3" left=400 top=200]
[chara_show name="suke4" left=750 top=200]
そこでは複数のスケルトン達が戦闘を繰り広げていた！[r][l]
[cm]
[chara_hide name="suke4" ]
[chara_hide name="suke3" ]
[chara_hide name="suke2" ]
[chara_new name="knight" storage="knight1.png" jname="騎士" ]
[chara_show name="knight" ]
対峙しているのはたったひとりだ！[r][l]
すぐに加勢しなければ！[r][l]
[cm]
[chara_hide name="knight" ]
[layopt layer=message0 visible=false]
[locate x=400 y=300]
[button graphic="attack.png" target="*select4_5" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select4_5
[cm]
[layopt layer=message0 visible=true]
#あなた
うおおおお！！！！！[r][l]
[cm]
#
[layopt layer=message0 visible=false]
[quake count=6 time=3000]
[chara_show name="suke3" ]
[quake count=1 time=400]
[cm]
[layopt layer=message0 visible=true]
ズバァッ！！！[r][l]
[cm]
[chara_hide name="suke3" ]
スケルトンをたおした！[r][l]
[cm]
[layopt layer=message0 visible=false]
[chara_show name="knight" ]
[layopt layer=message0 visible=true]
[cm]
#騎士
そこの冒険者！[r][l]
何者か知らぬが、助太刀感謝する！[r][l]
#
[cm]
#あなた
あんたこそ、無事でよかったよ。[r][l]
あんたがウワサの騎士サマか？[r][l]
#
[cm]
#騎士
おそらくその通りだ。[r][l]
ところで冒険者よ。[r][l]
貴様はこの先に行くつもりか？[r][l]
#
[cm]
#あなた
その通りだ！[r][l]
この先の財宝はオレのものだ！[r][l]
#
[cm]
#騎士
...財宝、か。[r][l]
... ...フム。[r][l]
[cm]
...よし、先程助けてもらった礼だ。[r][l]
貴様に報奨金をくれてやる。[r][l]
だからこのままおとなしく家に帰るんだ。[r][l]
#
[cm]
騎士は金を渡す代わりに手を引くことを要求してきた。[r][l]
どうしようか？[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="uketoru.png" target="*select4_6" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="kyohi.png" target="*select4_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="*select4_8" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select4_6
[cm]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*END_G3" ]
[s]

*select4_7
[cm]
[layopt layer=message0 visible=true]
#あなた
そんなはした金いらない！[r][l]
オレは大金のためにここまできたんだ！[r][l]
こんなところで退いてたまるか！[r][l]
#
[cm]
#騎士
...そうか。[r][l]
まあいい。[r][l]
[cm]
ならば勝手についてくるがいい。[r][l]
どうせ死ぬだけだがな。[r][l]
#
[cm]
[chara_hide name="knight" ]
そういうと騎士は階段を降りていった。[r][l]
[cm]
#あなた
待て！[r][l]
#
[cm]
あなたは追いかけるように騎士に続いていく。[r][l]
[cm]
[layopt layer=message0 visible=false]
[quake count=6 time=3000]
[jump target="*select5_1" ]
[s]

*select4_8
[cm]
[eval exp="updatetpoint(1)"]
[getrand min="1" max="100"]
[if exp="tf.rand <= 50"][jump target="*select4_6"]
[else][jump target="*select4_7"]
[endif]
[s]

*select5_1
[mask]
[bg storage="black.png" ]
[mask_off]
[bg storage="caveend.png" ]
[layopt layer=message0 visible=true]
[cm]
ー 最深部 ー[r][l]
[cm]
[layopt layer=message0 visible=false]
[quake count=3 time=3000]
[layopt layer=message0 visible=true]
迷宮の最深部は異様な気配で満ちていた。[r][l]
死を感じさせ、背筋を冷たくする圧倒的な圧。[r][l]
その持ち主は部屋の中心にいた。[r][l]
[cm]
[chara_new name="boss" storage="boss1.png" jname="怪物" ]
[chara_show name="boss" ]
#怪物
[quake count=15 time=1000]
■■■■■■■■■■■■■■■■■■■！！！！！！[l]
#
[chara_hide name="boss" ]
[cm]
#あなた
こいつが、怪物か...！！！[r][l]
#
[cm]
[chara_new name="knight" storage="knight1.png" jname="騎士" ]
[chara_show name="knight" ]
#騎士
でかい...！！しかし、勝たねば！！！[r][l]
#
[chara_hide name="knight" ]
[cm]
[layopt layer=message0 visible=false]
[jump target="*select5_1_1" ]
[s]

*select5_1_1
[cm]
[mask]
[bg storage="caveend.png" ]
[chara_new name="knight" storage="knight1.png" jname="騎士" ]
[chara_new name="boss" storage="boss1.png" jname="怪物" ]
[mask_off]
[playbgm storage="8bit-Battle03_loop.ogg" ]
[layopt layer=message0 visible=true]
[chara_show name="boss" ]
#怪物
[quake count=15 time=1000]
■■■■■■■■■■■■■■■■■■■！！！！！！[l]
#
[cm]
迷宮の怪物があらわれた！[r][l]
[cm]
...強敵だ。どうする？[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="attack.png" target="*select5_2" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="nigeru.png" target="*select5_3" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="*select5_4" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select5_2
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]


*select5_3
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_4
[cm]
[layopt layer=message0 visible=true]
#怪物
[quake count=7 time=500]
■■■■■■■■■■■■■■■！！！！！[l]
#
[cm]
あなたのすぐ横を怪物の手がかすめた！[r][l]
[cm]
あたればまず間違いなく命はない！[r][l]
[cm]
[chara_new name="knight" storage="knight1.png" jname="騎士" ]
[chara_show name="knight" ]
#騎士
うおおおおお！！！[r][l]
[cm]
#
[quake count=1 time=200]
#騎士
ッ...！なんて固い皮膚だ！これでは攻撃が通らん！[r][l]
#
[cm]
[chara_hide name="knight" ]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="attack.png" target="*select5_5" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="nigeru.png" target="*select5_6" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=550]
[button graphic="unmei.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select5_5
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_6
[cm]
[layopt layer=message0 visible=true]
あなたは怪物を引き付けるように逃げ回り始めた！[r][l]
[cm]
#怪物
[quake count=7 time=500]
■■■■■■■■■■■■■■！！！！！[l]
#
[cm]
怪物があなたを追い始めた！[r][l]
[cm]
#騎士
よし！私が弱点を探す！そのまま引き付けておけ！[r][l]
#
[cm]
怪物の猛攻を避け続けろ！[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="left.png" target="*select5_8" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="right.png" target="*select5_9" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=500]
[button graphic="saki.png" target="*select5_10" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select5_7
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_8
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_9
[cm]
[layopt layer=message0 visible=true]
#怪物
[quake count=7 time=500]
■■■■■■■■■■■■■■■！！！！！[l]
#
[cm]
回避した！[r][l]
怪物の猛攻を避け続けろ！[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="left.png" target="*select5_11" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="right.png" target="*select5_12" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=500]
[button graphic="saki.png" target="*select5_13" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select5_10
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_11
[cm]
[layopt layer=message0 visible=true]
#怪物
[quake count=7 time=500]
■■■■■■■■■■■■■■■！！！！！[l]
#
[cm]
回避した！[r][l]
怪物の猛攻を避け続けろ！[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="left.png" target="*select5_14" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="right.png" target="*select5_15" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=500]
[button graphic="saki.png" target="*select5_16" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select5_12
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_13
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_14
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_15
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_16
[cm]
[layopt layer=message0 visible=true]
#怪物
[quake count=7 time=500]
■■■■■■■■■■■■■■■！！！！！[l]
#
[cm]
回避した！[r][l]
怪物の猛攻を避け続けろ！[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="left.png" target="*select5_17" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="right.png" target="*select5_18" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=500]
[button graphic="saki.png" target="*select5_19" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select5_17
[cm]
[layopt layer=message0 visible=true]
#怪物
[quake count=7 time=500]
■■■■■■■■■■■■■■■！！！！！[l]
#
[cm]
回避した！[r][l]
怪物の猛攻を避け続けろ！[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="left.png" target="*select5_20" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="right.png" target="*select5_21" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=500]
[button graphic="saki.png" target="*select5_22" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select5_18
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_19
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_20
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_21
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_22
[cm]
[layopt layer=message0 visible=true]
#怪物
[quake count=7 time=500]
■■■■■■■■■■■■■■■！！！！！[l]
#
[cm]
回避した！[r][l]
怪物の猛攻を避け続けろ！[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=300]
[button graphic="left.png" target="*select5_23" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=300]
[button graphic="right.png" target="*select5_24" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=410 y=500]
[button graphic="saki.png" target="*select5_25" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select5_23
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select5_24
[cm]
[layopt layer=message0 visible=true]
#怪物
[quake count=7 time=500]
■■■■■■■■■■■■■■■！！！！！[l]
#
[cm]
[layopt layer=message0 visible=false]
[quake count=4 time=1500]
[jump target="*select6_1" ]
[s]

*select5_25
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
[jump storage="DeadEnd.ks" target="*Dead" ]
[s]

*select6_1
[cm]
[fadeoutbgm time=3000]
[layopt layer=message0 visible=true]
#あなた
はぁ...はぁ...。[r][l]
... ...くそッ、もう...限界だ... ...ッ！[r][l]
#
[cm]
あなたはとうとう追い詰められてしまった。[r][l]
体力も限界を超え、今にも倒れそうだ。[r][l]
[cm]
#怪物
[quake count=7 time=500]
■■■■■■■■■■■■■■！！！！！[l]
#
[cm]
満身創痍のあなたに、死が降りかかる！！！[r][l]
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=false]
[jump target="*select6_2" ]
[s]

*select6_2
[cm]
[mask]
[bg storage="caveend.png" ]
[chara_new name="knight" storage="knight1.png" jname="騎士" ]
[chara_new name="boss" storage="boss1.png" jname="怪物" ]
[chara_show name="boss" ]
[mask_off]
[layopt layer=message0 visible=true]
... ...怪物の手はあなたの目の前で止まった。[r][l]
[cm]
[chara_show name="knight" ]
なぜなら、騎士がその身を盾として間に割り込んだからだ。[r][l]
[cm]
#騎士
... ...ぐぅッ...！！[r][l]
#
[cm]
#あなた
おい、大丈夫かッ！！[r]
[cm]
#
#騎士
私のことはいい！！[r][l]
それよりも、コイツの弱点は胸の中心にある赤いコアだ！！[r][l]
そこを狙え！！！[l][r]
[cm]
[chara_hide name="knight" ]
[fadeinbgm storage="8bit-Battle03_loop.ogg"  time=3000 seek=30]
騎士は傷ついたカラダで怪物の動きを止めている。[r][l]
こうげきをするなら今だ！[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=400 y=300]
[button graphic="attack.png" target="*select6_3" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select6_3
[cm]
[layopt layer=message0 visible=true]
カラダが強張る。全身に緊張が走る。[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=50 y=300]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=400 y=300]
[button graphic="attack.png" target="*select6_4" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=850 y=300]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select6_4
[cm]
[layopt layer=message0 visible=true]
ナイフを握りなおす。恐怖を押し殺す。[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=350]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=400 y=300]
[button graphic="attack.png" target="*select6_5" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=550 y=200]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=190 y=700]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=300 y=600]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=720 y=400]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=850 y=450]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=800 y=110]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=430 y=200]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=50 y=40]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=100 y=110]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=30 y=100]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=50 y=500]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=160 y=10]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=20 y=700]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select6_5
[cm]
[layopt layer=message0 visible=true]
覚悟を決める。[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=100 y=350]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=400 y=300]
[button graphic="attack.png" target="*select6_6" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=550 y=200]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=190 y=700]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=300 y=600]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=720 y=400]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=850 y=450]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=800 y=110]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=430 y=200]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=50 y=40]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=100 y=110]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=30 y=100]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=50 y=500]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=160 y=10]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=20 y=700]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=70 y=300]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=690 y=20]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=220 y=40]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=210 y=500]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=630 y=430]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=660 y=660]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=200 y=200]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=750 y=700]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=550 y=500]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=850 y=300]
[button graphic="nigeru.png" target="*select5_7" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select6_6
[cm]
[layopt layer=message0 visible=true]
#あなた
うおおおおお！！！！！！！[r][l]
#
[cm]
[chara_hide name="boss" ]
[layopt layer=message0 visible=false]
[mask]
[fadeoutbgm time=3000]
[bg storage="caveend.png" ]
[chara_show name="boss" ]
[mask_off]
[jump target="*select7_1" ]
[s]

*select7_1
[cm]
[layopt layer=message0 visible=true]
#怪物
[quake count=15 time=1000]
■■■■■■■■■■■■■■■■■■■！！！！！！[l]
#
[cm]
あなたの繰り出した一撃は、怪物のコアを正確に砕いた。[r][l]
致命傷を負った怪物の絶叫が迷宮中に響く。[r][l]
[cm]
#怪物
[quake count=15 time=1000]
#
[layopt layer=message0 visible=false]
[chara_hide name="boss" ]
[layopt layer=message0 visible=true]
しだいに怪物は動かなくなっていった。[r][l]
[cm]
[playbgm storage="8bit-ME_Victory02.ogg" loop="false" ]
迷宮の怪物を、たおした！！！[r][l]
[cm]
#あなた
...。[r][l]
... ...やった。[r][l]
[quake count=10 time=1000]
...やったぞォーーーーー！！！！！[r][l]
#
[cm]
あなたは全身で勝利を嚙み締めた。[r][l]
同時にあなたを庇って倒れた騎士を思い出す。[r][l]
[cm]
#あなた
騎士サマ！生きてるか！しっかりしろ！！[r][l]
#
[cm]
[chara_show name="knight" ]
騎士はなんとか生きているが、深い傷を負っている。[r][l]
見ただけで致命傷だとわかってしまう。[r][l]
[cm]
しかし、それでも騎士は立っている。[r][l]
立って剣を、こちらに向けている。[r][l]
[cm]
#騎士
私は、...財宝を、持って帰らねば... ...ならんッ！[r][l]
[cm]
私は王国の誇りある...、騎士だ！！[r][l]
国の為...、民の為、...王命を、果たすのだ...！！！[r][l]
[cm]
#
[layopt layer=message0 visible=false]
[jump target="*select8_1"  ]
[s]

*select8_1
[cm]
[mask]
[bg storage="caveend.png" ]
[chara_new name="knight" storage="knight1.png" jname="騎士" ]
[playbgm storage="8bit-Dungeon03_loop.ogg" ]
[mask_off]
[layopt layer=message0 visible=true]
[chara_show name="knight" ]
王国の騎士があらわれた！[r][l]
[cm]
あいては満身創痍だ。[r][l]
どうする？[r][l]
[cm]
[layopt layer=message0 visible=false]
[locate x=400 y=300]
[button graphic="unmei.png" target="*select8_2" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*select8_2
[cm]
[layopt layer=message0 visible=true]
#騎士
すまない...私ははじめ、[r][l]
貴殿を......、見捨てるつもりだった。[r][l]
[cm]
だが、...貴殿のその熱意に、心打たれ...、[r][l]
つい...カラダが、動いた...。[r][l]
[cm]
教えてくれ...。[r][l]
...何故、財宝を欲しがる？[r][l]
[cm]
#
[layopt layer=message0 visible=false]
[edit name="f.mokuteki" left=400 top=300 width="500" height="100" maxchars="20"]
[glink text="決定" target="*select8_3" cm=false x=550 y=450 clickse="../bgm/決定ボタンを押す1.mp3"]
[s]

*select8_3
[commit name="f.mokuteki"]
[cm]
[layopt layer=message0 visible=true]
#騎士
... ...そうか。[r][l]
ならば、...なおさら、負けられんな...！[r][l]
[cm]
... ...。[r][l]
... ... ...ッ。[r][l]
いくぞ...！！！[r][l]
[cm]
#
[layopt layer=message0 visible=false]
[quake count=1 time=100]
[mask]
[fadeoutbgm time=3000]
[chara_hide name="knight" ]
[bg storage="end.png" ]
[mask_off]
[cm]
[s]