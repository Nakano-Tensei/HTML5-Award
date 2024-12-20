*hazime
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
story of warrior[l][cm]
[bg storage="オラリオ町.jpg" ]
私はこの世のすべてがあると言うダンジョンのある町[r]
オラリオンにやってきた[l]
私がここに来た理由は....[p][cm]
[bg storage="診療所.png" ]
「残念ながら今の医療では直すことはできません[l]
私たちには死期を遅らすことしか...」[p]

[bg storage="寝室の窓際のベッド（夕方・青）.jpg" ]
またお兄ちゃんと遊んだりご飯食べたりしたいよ...[l][cm]
[bg storage="オラリオ町.jpg" ]
妹は必ず助ける[p]
だがここからは危険なダンジョンだ[l]
準備が必要なら何か買ってもいいかもしれない[p][cm]
[cm]
[locate x=400 y=100]
[button graphic="準備.png" target="*bay1" ][r]

[locate x=400 y=300]
[button graphic="ダンジョン.png" target="*go1" ][r]
[s]
*bay1
[cm]
私は冷静だ[p]
なんの準備もなく行くほど焦ってはいない[p]


*go1
[cm]
妹に残された時間は少ない[p]
こんなとこでグズグズしてはいられない[p]
早くダンジョンに向かおう[l]
[bg storage="洞窟.jpg" ]
