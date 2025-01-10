*bottom
[cm]
[bg storage="rouka4_gray.png" time="700"  ]
分かれ道がある。[l][cm]


どっちに行こう？[l][cm]
[locate x=1000 y=100]
[button graphic="title/right.png"target="*right" width="200"height="200"   ]
[locate x=100 y=100]
[button graphic="title/left.png"target="*left" width="200"height="200"   ]

[s]


*right
[cm]
右に行こう[l][cm]
[quake count=1 time=400 ]
[bg storage="rouka1_gray.png" time="700" ]
[quake count=1 time=400 ]
[bg storage="rouka1_gray_knife.png" time="700" ]
ナイフが落ちている[l][cm]
拾うべきだろうか？[l][r]
[link target="*pickUp"]【１】拾う[endlink][r]
[link target="*noPickUp"]【２】拾わない[endlink][r]
[s]

*left
[cm]
左に行こう[l][cm]
[quake count=1 time=400 ]
[bg storage="rouka1_gray.png" time="700" ]
[quake count=1 time=400 ]
[bg storage="rouka_up_gray.png" time="700" ]
階段があった。[l][cm]
先に進もう。[l][cm]
[quake count=1 time=400 ]
[jump storage="jailbreak_4.ks" target="*4layer"  ]
[s]

*pickUp
[cm]
ナイフを拾った！[l][cm]
いつか使うかもしれない[l][cm]
先へ進もう。[l][cm]

[jump target="*next1" ]
[s]

*noPickUp

なんかばっちいから拾うのはやめておこう。[l][cm]


先へ進もう[l][cm]
[quake count=1 time=400 ]
[jump target="*next1" ]
[cm]
[s]

*next1
[cm]
[quake count=1 time=400 ]
[bg storage="rouka4_gray.png" time="700" ]
また分かれ道だ。[l][cm]


どっちに行こうか？[l][cm]

[locate x=1000 y=100]
[button graphic="title/right.png"target="*right5" width="200"height="200"   ]
[locate x=100 y=100]
[button graphic="title/left.png"target="*left5" width="200"height="200" ]
[s]

*left5
[cm]
左に行こう。[l][cm]

[quake count=1 time=400 ]
[bg storage="radder_up_gray.png" time="700" ]
ハシゴがあった。[l]
のぼってみよう[l][cm]
[quake count=1 time=400 ]
[jump storage="jailbreak_4.ks" target="*4layer"  ]
[s]

*right5
[cm]
右に行こう。[l][cm]
[quake count=1 time=400 ]
[bg storage="rouka_stop_gray.png"time="700"  ]
[wait time="1000" ]
[quake count=20 time=700 ]
...![l][r]
[bg storage="rouka_hole_gray.png" time="700" ]
[bg storage="black.png"time="1000"  ]
落とし穴におちてしまった。[l][cm]
死亡した。[l][cm]
[jump storage="gameover.ks.ks"]
[s]