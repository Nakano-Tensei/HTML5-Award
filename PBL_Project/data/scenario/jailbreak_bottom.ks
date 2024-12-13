*bottom
[cm]
[bg storage="../image/title/dungeon3.jpg" ]
分かれ道がある。[l][cm]

#たけし
どっちに行こう？[l][cm]
[locate x=1000 y=100]
[button graphic="title/right.png"target="*right" width="200"height="200"   ]
[locate x=100 y=100]
[button graphic="title/left.png"target="*left" width="200"height="200"   ]

[s]


*right
[cm]
[bg storage="../image/title/Dungeon-long-corridor2.jpg" ]
[link target="*pickUp"]【１】拾う[endlink][r]
[link target="*noPickUp"]【２】拾わない[endlink][r]
[s]

*left
[cm]
[bg storage="../image/title/Dungeon-long-corridor6.jpg" ]

[jump storage="jailbreak_4.ks" target="*4layer"  ]
[s]

*pickUp
[cm]
ダガーを拾った！[l][cm]

#たけし
これは...何かに使えそうだな...[l][cm]

#
たけしはダガーをポーチにしまった。[l][r]
先へ進もう。[l][cm]

[jump target="*next1" ]
[s]

*noPickUp
#たけし
ばっちいからやめとこ！[l][cm]

#
先へ進もう[l][cm]
[cm]
[s]

*next1
#たけし
また分かれ道かよ...!![l][cm]

#
どっちに行こうか？[l][cm]

[locate x=1000 y=100]
[button graphic="title/right.png"target="*right5" width="200"height="200"   ]
[locate x=100 y=100]
[button graphic="title/left.png"target="*left5" width="200"height="200" ]

*left5
#たけし
左に行くぜ！[l][cm]

#
[wait time="2000" ]
[bg storage="radder_up.png" ]
ハシゴがあった。[l]
のぼってみよう[l][cm]
[s]

*right5
#たけし
右に行くぜ！[l][cm]

#
[wait time="2000" ]
...![l][r]
[bg storage="hole.jpg"]
落とし穴だ！！[l][cm]
[jump storage="DeadEnd.ks" target="*Dead"  ]