*4layer
[cm]
[bg storage="rouka1.png" ]
一つ上の階に来た[l][cm]
#たけし
この監獄は５階層あったはず...[l][r]
俺は最初最下層にいたから...ここは4階層か。[l][cm]

[bg storage="rouka4.png" ]
[wait time="1000" ]
ってまた分かれ道かよ！[l][cm]
どっちへ行こうか?[l][r]


[locate x=1000 y=100]
[button graphic="title/right.png"target="*right4" width="200"height="200"   ]
[locate x=100 y=100]
[button graphic="title/left.png"target="*left4" width="200"height="200" ]
[s]

*right4
[bg storage="rouka_up.png" ]
#たけし
もう階段があった...[l][cm]
まあ上を目指してるし、上がるか。[l][cm]
[wait time="2000" ]
[jump storage="jailbreak_3.ks" target="*3layer" ]
[s]
