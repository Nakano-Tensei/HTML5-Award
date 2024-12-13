*3layer
[cm]
[bg storage="rouka4.png" ]
[wait time="1000" ]

....どっちへ行こうか?[l][r]
[locate x=1000 y=100]
[button graphic="title/right.png"target="*right" width="200"height="200"   ]
[locate x=100 y=100]
[button graphic="title/left.png"target="*left" width="200"height="200" ]
[s]

*right
[bg storage="rouka_up.png" ]
#たけし
もう階段があった...[l][cm]
まあ上を目指してるし、上がるか。[l][cm]
[wait time="2000" ]
[jump storage="jailbreak_2.ks" target="*layer2" ]

[s]