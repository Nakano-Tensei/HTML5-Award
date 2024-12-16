*tutorial

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

@layopt layer = message0 visible="true" 
[chara_new name="suke_tuto" storage="suke_tuto.png" jname="わかば" ]
[chara_new name="suke_tuto2" storage="suke_tuto2.png" jname="わかば" ]
[chara_new name="suke_tuto3" storage="suke_tuto3.png" jname="わかば" ]
[chara_show name="suke_tuto" ]
チュートリアルへようこそ！[r][l]
#suke_tuto
わたしは案内骨の”わかば”ともうします！[r][l]
[cm]
ここではこのゲームの楽しみかたなどを知ってもらうべく[l][r]
簡単なダンジョンに挑んでもらいます！[r][l]
[cm]
[chara_hide name="suke_tuto" time="1" ]
[chara_show name="suke_tuto3" time="1"  ]
それではさっそくやっていきましょう！[r][l]
[cm]
[chara_hide name="suke_tuto3" ]
[jump target="*select1" ]

*select1
[bg storage="cave1.jpg" ]
[chara_show name="suke_tuto3" ]
やあ！さっそくやってきましたね！[l][r]
ここがこれからあなたに挑戦してもらうダンジョンです！[r][l]
[cm]
なかなか趣があるでしょう？[r][l]
当然です！わたしの力作ですから！[r][l]
[cm]
[chara_hide name="suke_tuto3" time="1" ]
[chara_show name="suke_tuto" time="1"  ]
さて、気を取り直しまして...[r][l]
基本的な事をご説明しましょう。[l][r]
[cm]
まずはじめに、このゲームは正解の選択肢を選んで進む、いわゆる”ノベルゲーム”といったゲーム性を採用しています。[r][l]
[cm]
ですから、もしモンスターに遭遇してもダメージがどうとか、回復だとか、そういった要素は一切ありません。[r][l]
[cm]
[chara_hide name="suke_tuto" time="1" ]
[chara_show name="suke_tuto3" time="1"  ]
まあ、こういうのは実際にやってみたほうが早いでしょう！[l][r]
というわけで...[r][l]
[chara_hide name="suke_tuto3" ]
#
[cm]
[chara_show name="suke_tuto" ]
スケルトン"わかば"があらわれた！[r][l]
[cm]
#suke_tuto
さあ、わたしを倒してみましょう！[r][l]
画面にコマンドが現われたはずです！[r][l]
お好きな行動を選んでください！[r][l]
#
[cm]

[locate x=100 y=200]
[button graphic="attack.png" target="*select1_1" ][r]

[locate x=700 y=200]
[button graphic="no_battle.png" target="*select1_2" ][r]

[s]

*select1_1
[cm]
あなたは高く掲げたナイフを勢いよく振り下ろした！[r][l]
[cm]
[chara_hide name="suke_tuto" time="1" ]
[chara_show name="suke_tuto2" time="1" ]
#suke_tuto
あいたっ！！！[r][l]
#
"わかば"のあばら骨に鋭い痛みが走る！[l][r]
[chara_hide name="suke_tuto2" ]
[cm]
てきをやっつけた！[r][l]
[cm]
... ... ... [r][l]
... ... ... ... もういいですかね？[r][l]
[cm]
#suke_tuto
[chara_show name="suke_tuto" ]
と、まあこんなかんじです！[r][l]
選択肢によっては逆に反撃をくらってゲームオーバー...なんてことにもなるのでご注意を！[r][l]
[cm]
[chara_hide name="suke_tuto" time="1" ]
[chara_show name="suke_tuto3" time="1"  ]
戦闘のほかにも宝箱や謎解きなど色々な要素をご用意しているので楽しみにしておいてくださいね！[r][l]
[cm]
[chara_hide name="suke_tuto3" time="1" ]
[chara_show name="suke_tuto" time="1"  ]
...まあこんなところですかね。[r][l]
短いようですが、チュートリアルはここまでです！[r][l]
[cm]
本編ではコレの比にならないストーリーと結末があなたを待っています！[r][l]
[chara_hide name="suke_tuto" time="1" ]
[chara_show name="suke_tuto3" time="1"  ]
わたしも登場しますので、そのときはよろしくお願いしますね！[r][l]
[cm]
それでは本編でお会いしましょう！[r][l]
お疲れさまでした～～！[r][l]
[s]

*select1_2
[cm]