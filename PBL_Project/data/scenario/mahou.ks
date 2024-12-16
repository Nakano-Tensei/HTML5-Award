*mahou
[call storage="macro.ks" cond="tf.first == undefined"]
[cm]
[cm]
[mask]
[bg storage="black.png" ]
[mask_off]
[position layer=message0 width=900 height=400 top=400 left=70 ]
[position layer=message0 page=fore frame="frame1.png" margint="65" marginl="50" marginr="90" marginb="60"]
[cm]
[freeimage layer=1 ]

@layopt layer = message0 visible="true" 
ここからあなたの冒険が始まります。[r][l]
幸運を祈ります。[r][l]

「魔法使い√」[l][cm]
[bg storage="Western-Castle_noon.jpg" ]
～迷宮キングダム～[p]
「ここが迷宮都市”キングダム”か」[p]
壮大な街並みに思わず息をのむ。[p]
「本当にここの迷宮に"例の魔法書"があるのだろうか...」[p]
もうすぐ日が暮れそうだ。[p]
「何はともあれ、まずは宿だな。」[p]
大通りを歩きながら宿屋の看板を探す。[p]
数分歩いて両脇に宿屋が並ぶ道を見つけた。[p]
[bg storage="INNtown.jpg" ]
たくさんの宿屋の中で一際目を引く看板があった。[p]
「冒険者御用達！宿なら”ワイバーンの吐息亭”へ」[p]
冒険者達の宿なら情報が手に入るかもしれない。[p]
ひとまず宿に入り、部屋を借りた。[p]
[bg storage="inINN.png" ]
「・・・疲れた。」[p]
ここまで長旅だった。[p]
俺は、魔法を究めて生まれ故郷の子供たちに魔法を教えるためにここまで来た。[p]
ここの迷宮の最深部に究極の魔法があるという噂。[p]
果たして本当なのだろうか。[p]
幸運なことに、この町では迷宮は有名で、宿の店主から簡単に情報を得ることができた。[p]
いよいよ明日から迷宮に潜っていく。[p]
迷宮には魔物が出たり、罠があったりするようだ。[p]
明日の集中を維持するためにも今日はもう休もう。[p]
翌日[p]

[bg storage="dungeon-entrance3.jpg" ]
～迷宮入り口～[p]
「本当に聞いていた通りだ。」[p]
ここから明らかに雰囲気が変わる。[p]
ひとまず先へ進もう。[p]

[bg storage="cave10.png" ]
[chara_new name="suke" storage="suke.png" jname="suke" width="500" height="500" ]
[chara_show name="suke" ]
スケルトンアーチャーがあらわれた![p]
[layopt layer=message0 visible=false]
[locate x=50 y=550]
[button graphic="フレイム.png" target="*selectm2_1" ][r]

[locate x=850 y=550]
[button graphic="フリーズ.png" target="*selectm2_2" ][r]

[s]
*selectm2_1 
[layopt layer=message0 visible=true]
[cm]
「フレイム!」[p]
[chara_new name="honou_name" storage="honou1.png" jname="鬼火"]
[chara_config pos_mode=false time=2000 ani=true effect=easeOutBounce]
[wa]
;チカチカと登場easeOutBounce
[chara_show name="honou_name" left=50 top=50]
;------------keyframe の定義
[keyframe name="honou_anim1"]
[frame p=0% ]
[frame p=30% scaleX="2" scaleY="2"]
[frame p=50% scaleX="1.6" scaleY="1.6"]
[frame p=100% scaleX="2" scaleY="2"]

[endkeyframe]

[kanim name="honou_name" keyframe="honou_anim1" time=1000 count="infinite" easing="ease-in"]
[chara_hide name="honou_name" opacity= 80]
スケルトンアーチャーに効いている！[l][cm]
[chara_hide name="suke" ]
スケルトンアーチャーは倒れた。[l][cm]
”サンダーの魔法書”を手に入れた。[p] 
@jump target="*aftersuke"
[s]

*selectm2_2
[layopt layer=message0 visible=true]
[cm]
「フリーズ！」[p]
[chara_new name="koori_name" storage="フリーズエフェクト.png" jname="氷"]
[chara_config pos_mode=false time=2000 ani=true effect=easeOutBounce]
[wa]
;チカチカと登場easeOutBounce
[chara_show name="koori_name" left=50 top=50]
;------------keyframe の定義
[keyframe name="koori_anim1"]
[frame p=0% ]
[frame p=30% scaleX="2" scaleY="2"]
[frame p=50% scaleX="1.6" scaleY="1.6"]
[frame p=100% scaleX="2" scaleY="2"]

[endkeyframe]

[kanim name="koori_name" keyframe="koori_anim1" time=1000 count="infinite" easing="ease-in"]
[chara_hide name="koori_name" opacity= 80]
あまり効果がない...[l][cm]
スケルトンアーチャーの反撃！[l][cm] 
あなたは死んだ。 
[chara_hide name="suke" ]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*aftersuke
[cm]
「何だったんだ今の？」[p]
いきなり骸骨の魔物に襲われてしまった。[p]
「バサバサ」と羽音が聞こえる。[p]
「！？」[p]
こっちに近づいてくる！[p]
; 左端に1つ目のガーゴイルを配置
[chara_new name="gago1" storage="gago.png" jname="gago1" width="500" height="500"]
[chara_show name="gago1" left=0 top=0]

; 中央に2つ目のガーゴイルを配置
[chara_new name="gago2" storage="gago.png" jname="gago2" width="500" height="500"]
[chara_show name="gago2" left=400 top=50]

; 右端に3つ目のガーゴイルを配置
[chara_new name="gago3" storage="gago.png" jname="gago3" width="500" height="500"]
[chara_show name="gago3" left=800 top=0]

ガーゴイルの群れが現れた！[p]
あなたはどうする？[p]
[layopt layer=message0 visible=false]
[locate x=50 y=550]
[button graphic="フレイム.png" target="*selectm2_3" ][r]

[locate x=450 y=550]
[button graphic="サンダー.png" target="*selectm2_4" ][r]

[locate x=850 y=550]
[button graphic="フリーズ.png" target="*selectm2_5" ][r]

[s]

*selectm2_3
[layopt layer=message0 visible=true]
[cm]
「フレイム!」[p]
[chara_new name="honou_name" storage="honou1.png" jname="鬼火"]
[chara_config pos_mode=false time=2000 ani=true effect=easeOutBounce]
;チカチカと登場easeOutBounce
[chara_show name="honou_name" left=50 top=20]
;------------keyframe の定義
[keyframe name="honou_anim1"]
[frame p=0% ]
[frame p=30% scaleX="2" scaleY="2"]
[frame p=50% scaleX="1.6" scaleY="1.6"]
[frame p=100% scaleX="2" scaleY="2"]

[endkeyframe]

[kanim name="honou_name" keyframe="honou_anim1" time=1000 count="infinite" easing="ease-in"]
[chara_hide name="honou_name" opacity= 80]
ガーゴイルたちにはあまり効果がない[l][cm]
ガーゴイルたちの反撃！[l][cm] 
あなたは死んだ。 
[chara_hide name="gago1" ]
[chara_hide name="gago2" ]
[chara_hide name="gago3" ]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*selectm2_4
[layopt layer=message0 visible=true]
[cm]
「サンダー!」[p]
[chara_new name="sanda-_name" storage="サンダーエフェクト.png" jname="サンダー"]
[chara_config pos_mode=false time=2000 ani=true effect=easeOutBounce]
[wa]
;チカチカと登場easeOutBounce
[chara_show name="sanda-_name"]
;------------keyframe の定義
[keyframe name="sanda-_anim1"]
[frame p=0% ]
[frame p=30% scaleX="2" scaleY="2"]
[frame p=50% scaleX="1.6" scaleY="1.6"]
[frame p=100% scaleX="2" scaleY="2"]
[endkeyframe]

[kanim name="sanda-_name" keyframe="sanda-_anim1" time=1000 count="infinite" easing="ease-in"]
[chara_hide name="sanda-_name" opacity= 80]
ガーゴイルの群れに効いている！[l][cm]
[chara_hide name="gago1" ]
[chara_hide name="gago2" ]
[chara_hide name="gago3" ]
ガーゴイルの群れは倒れた。[l][cm]
”錆びた鍵”を拾った。[p]
どこかで使えるかもしれない。[p]
@jump target="*selectk2_6" 
[s]

*selectm2_5
[layopt layer=message0 visible=true]
[cm]
「フリーズ！」[p]
[chara_new name="koori_name" storage="フリーズエフェクト.png" jname="氷"]
[chara_config pos_mode=false time=2000 ani=true effect=easeOutBounce]
[wa]
;チカチカと登場easeOutBounce
[chara_show name="koori_name" left=50 top=20]
;------------keyframe の定義
[keyframe name="koori_anim1"]
[frame p=0% ]
[frame p=30% scaleX="2" scaleY="2"]
[frame p=50% scaleX="1.6" scaleY="1.6"]
[frame p=100% scaleX="2" scaleY="2"]
[endkeyframe]

[kanim name="koori_name" keyframe="koori_anim1" time=1000 count="infinite" easing="ease-in"]
[chara_hide name="koori_name" opacity= 80]
ガーゴイルの群れは凍った。[l][cm]
[chara_hide name="gago1" ]
[chara_hide name="gago2" ]
[chara_hide name="gago3" ]
先へ進もう。[l][cm] 
@jump target="*select2_6" 
[s]

*selectk2_6
「ふぅ」[p]
ひとまず落ち着いたようだ。[p]
町で聞いていた通り、この迷宮はかなり危険だ。[p]
地上では見たこともない生物が生息しているみたいだ。[p]
もはや生きているかどうか怪しいのもいたが。。。[p]
[bg storage="sabidoor.jpg" ]
10分ほど進んだところで錆びた扉を見つけた。[p]
鍵がかかっている。[p]
錆びた鍵を試してみた。[p]
扉が開いた！[p]
”インビジ”の魔法書を手に入れた![p]
先へ進もう。[p]
[bg storage="cave11.jpg" ]
雰囲気が変わったようだ。[p]
馬の足音みたいな音がする。[p]
近づいてくる！[p]
[chara_new name="deathknight" storage="deathknight.png" jname="deathknight"]
[locate x=1400 y=100]
[chara_show name="deathknight" ]
デスナイトがあらわれた![p]
かなり手ごわそうだ[p]
[layopt layer=message0 visible=false]
[locate x=100 y=100]
[button graphic="フレイム.png" target="*selectmk2_7" ][r]

[locate x=700 y=100]
[button graphic="サンダー.png" target="*selectmk2_8" ][r]

[locate x=100 y=500]
[button graphic="フリーズ.png" target="*selectmk2_9" ][r]

[locate x=700 y=500]
[button graphic="インビジ.png" target="*selectmk2_10" ][r]
[s]




*selectmk2_7
[layopt layer=message0 visible=true]
[cm]
「フレイム!」[p]
[chara_new name="honou_name" storage="honou1.png" jname="鬼火"]
[chara_config pos_mode=false time=2000 ani=true effect=easeOutBounce]
;チカチカと登場easeOutBounce
[chara_show name="honou_name" left=50 top=20]
;------------keyframe の定義
[keyframe name="honou_anim1"]
[frame p=0% ]
[frame p=30% scaleX="2" scaleY="2"]
[frame p=50% scaleX="1.6" scaleY="1.6"]
[frame p=100% scaleX="2" scaleY="2"]

[endkeyframe]

[kanim name="honou_name" keyframe="honou_anim1" time=1000 count="infinite" easing="ease-in"]
[chara_hide name="honou_name" opacity= 80]
デスナイトの馬が燃え尽きた！[l][cm]
走って逃げる！[l][cm]
逃げ切れた。[p] 
[chara_hide name="deathknight" ]
@jump target="selectk2_11" 
[s]





*selectmk2_8
[layopt layer=message0 visible=true]
[cm]
「サンダー!」[p]
[chara_new name="sanda-_name" storage="サンダーエフェクト.png" jname="サンダー"]
[chara_config pos_mode=false time=2000 ani=true effect=easeOutBounce]
[wa]
;チカチカと登場easeOutBounce
[chara_show name="sanda-_name"]
;------------keyframe の定義
[keyframe name="sanda-_anim1"]
[frame p=0% ]
[frame p=30% scaleX="2" scaleY="2"]
[frame p=50% scaleX="1.6" scaleY="1.6"]
[frame p=100% scaleX="2" scaleY="2"]
[endkeyframe]

[kanim name="sanda-_name" keyframe="sanda-_anim1" time=1000 count="infinite" easing="ease-in"]
[chara_hide name="sanda-_name" opacity= 80]
デスナイトには効いていない。[l][cm]
デスナイトの反撃！[p]
あなたは死んだ。[p] 
[chara_hide name="deathknight" ]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]









*selectmk2_9
[call storage="macro.ks" cond="tf.first == undefined"].
[layopt layer=message0 visible=true]
[cm]
「フリーズ！」[p]
[chara_new name="koori_name" storage="フリーズエフェクト.png" jname="氷"]
[chara_config pos_mode=false time=2000 ani=true effect=easeOutBounce]
[wa]
;チカチカと登場easeOutBounce
[chara_show name="koori_name" left=50 top=50]
;------------keyframe の定義
[keyframe name="koori_anim1"]
[frame p=0% ]
[frame p=30% scaleX="2" scaleY="2"]
[frame p=50% scaleX="1.6" scaleY="1.6"]
[frame p=100% scaleX="2" scaleY="2"]

[endkeyframe]

[kanim name="koori_name" keyframe="koori_anim1" time=1000 count="infinite" easing="ease-in"]
[chara_hide name="koori_name" opacity= 80]
デスナイトの馬が凍った！[l][cm]
[getrand min="1" max="100"]
[if exp="tf.rand <= 50"]
[jump target="*freeze1"]
[else][jump target="*freeze2"]
[endif]
[s]




*freeze1
しかしデスナイトが剣で氷を砕いた！[l][cm]
デスナイトの反撃！[p] 
あなたは死んだ。 [p]
[chara_hide name="deathknight" ]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]


*freeze2
今のうちだ！[p]
走って逃げる！[l][cm]
逃げ切れた。[p] 
[chara_hide name="deathknight" ]
@jump target="selectk2_11" 
[s]











*selectmk2_10
[layopt layer=message0 visible=true]
[cm]
「インビジ！」[p]
あなたは透明化した。[l][cm]
デスナイトはあなたを見失った。[p]
足音を立てないようにゆっくり先へ進もう。[l][cm] 
[chara_hide name="deathknight" ]
[bg storage="cave32.jpg" ]
しばらく進んだところで左に細い道を見つけた。[p]
どっちに進む？[p]
[locate x=50 y=100]
[button graphic="ひだり.png" storage="mahousinend.ks" target="*mahousin"][r]

[locate x=850 y=100]
[button graphic="まっすぐ.png" storage="mahougoodend.ks" target="*mahougoodk" ][r]
[s]



*selectk2_11
「はぁ。はぁ。」[p]
どうにかなったみたいだ。[p]
@jump storage="mahougoodend.ks" target="*mahougood"  
[s]



*select2_6
「ふぅ」[p]
ひとまず落ち着いたようだ。[p]
町で聞いていた通り、この迷宮はかなり危険だ。[p]
地上では見たこともない生物が生息しているみたいだ。[p]
もはや生きているかどうか怪しいのもいたが。。。[p]
[bg storage="sabidoor.jpg" ]
10分ほど進んだところで錆びた扉を見つけた。[p]
鍵がかかっている。[p]
鍵がどこかにあるのだろうか。。。。[p]
先へ進もう。[p]
[bg storage="cave11.jpg" ]
雰囲気が変わったようだ。[p]
馬の足音みたいな音がする。[p]
近づいてくる！[p]
[chara_new name="deathknight" storage="deathknight.png" jname="deathknight"]
[locate x=1400 y=100]
[chara_show name="deathknight" ]
デスナイトがあらわれた![p]
かなり手ごわそうだ[p]
[layopt layer=message0 visible=false]
[locate x=100 y=100]
[button graphic="フレイム.png" target="*selectmk2_7" ][r]

[locate x=700 y=100]
[button graphic="サンダー.png" target="*selectmk2_8" ][r]

[locate x=400 y=500]
[button graphic="フリーズ.png" target="*selectmk2_9" ][r]
[s]
