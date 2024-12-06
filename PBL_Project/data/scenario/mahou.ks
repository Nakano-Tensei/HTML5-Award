*mahou
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

[locate x=400 y=100]
[button graphic="フレイム.png" target="*selectm2_1" ][r]

[locate x=400 y=300]
[button graphic="フリーズ.png" target="*selectm2_2" ][r]

[s]

*selectm2_1
[cm]
「フレイム!」[p]
[chara_new name="honou_name" storage="honou.png" jname="鬼火"]
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
あなたはどうする？
[locate x=400 y=100]
[button graphic="フレイム.png" target="*selectm2_3" ][r]

[locate x=400 y=200]
[button graphic="サンダー.png" target="*selectm2_4" ][r]

[locate x=400 y=300]
[button graphic="フリーズ.png" target="*selectm2_5" ][r]

[s]



*selectm2_3
[cm]
「フレイム!」[p]
[chara_new name="honou_name" storage="honou.png" jname="鬼火"]
[chara_config pos_mode=false time=2000 ani=true effect=easeOutBounce]
[wa]
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
”錆びた鍵”を拾った。
どこかで使えるかもしれない。
[s]

*selectm2_5
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








