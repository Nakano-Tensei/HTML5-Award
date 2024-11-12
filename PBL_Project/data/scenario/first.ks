*start
*title

@layopt layer=message0 visible=false

[image layer="base" page="fore" storage="../bgimage/title_base.png"   ]

[locate x=300 y=380]
[button graphic="start.png" target="*first"]

[locate x=300 y=520]
[button graphic="restart.png" target="*first"  ]

[s]

*first
[cm]
[bg storage="black.png" ]
[position layer=message0 width=900 height=400 top=400 left=70 ]
[position layer=message0 page=fore frame="frame1.png" margint="65" marginl="50" marginr="90" marginb="60"]
[cm]
[freeimage layer=1 ]
@layopt layer = message0 visible="true" 
メッセージウィンドウが下に表示されましたね？[r][l]
ここにメッセージが表示されています。[r][l]
ここにメッセージが表示されています。[cm][l]


[bg storage="cave1.jpg" ]
背景が変わりました。[l][r]


ここから物語を展開させます。[p]


[chara_new name="tensei" storage="tensei.png" jname="てんせい"  ]
[chara_show name="tensei" ]
てんせいが現れた!![l][cm]

[chara_hide name="tensei" ]
てんせいは去っていった...[l][cm]

先へ進もう[l][cm]
[bg storage="branch.jpg" ]
分かれ道だ[l][cm]
どちらに進もうか[l][cm]
[locate x=400 y=100]
[button graphic="east.png" storage="scene1.ks"  target="*select1" ][r]

[locate x=400 y=300]
[button graphic="west.png" storage="scene2.ks"  target="*select2" ][r]
[s]








                       
