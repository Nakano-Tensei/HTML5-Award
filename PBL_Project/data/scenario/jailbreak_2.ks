*layer2
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
この辺に何かある気がする...[l][cm]
進んでみるか.[l][cm]
[wait time="2000" ]

[link target="*select1"]進む[endlink][r]
[link target="*select2"]調べる[endlink][r]
[s]

*select1



*select2