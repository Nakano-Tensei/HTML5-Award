*start
[call storage="macro.ks" cond="tf.first == undefined"]
*title

@layopt layer=message0 visible=false

[image layer="base" page="fore" storage="../bgimage/title_base.png"   ]

[locate x=300 y=380]
[button graphic="gamestart.png" storage="route.ks"  target="*route"  ]

[locate x=300 y=520]
[button graphic="tutorial.png" storage="tutorial.ks"  target="*tutorial" ]

[s]





*first

[cm]
[mask]
[bg storage="black.png" ]
[mask_off]
[position layer=message0 width=900 height=400 top=400 left=70 ]
[position layer=message0 page=fore frame="frame1.png" margint="65" marginl="50" marginr="90" marginb="60"]
[cm]
[freeimage layer=1 ]

@layopt layer = message0 visible="true" 
メッセージウィンドウが下に表示されましたね???？[r][l]
ここにメッセージが表示されています。[r][l]
ここにメッセージが表示されています。[cm][l]


[bg storage="cave1.jpg" ]
[bg storage="branch.jpg" ]
分かれ道だ[l][cm]
どちらに進もうか[l][cm]
[locate x=400 y=100]
[button graphic="east.png" storage="scene1.ks"  target="*select1" ][r]








                       
