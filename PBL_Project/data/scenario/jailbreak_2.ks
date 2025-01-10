*layer2
[cm]
[bg storage="rouka4_green.png"time="700"  ]
....2階層....[l][cm]
[wait time="1000" ]

....どっちへ行こうか?[l][r]
[locate x=1000 y=100]
[button graphic="../bgimage/right_2.png"target="*right" width="200"height="200"   ]
[locate x=100 y=100]
[button graphic="../bgimage/left_2.png"target="*left" width="200"height="200" ]
[s]

*left
[cm]
[quake count=1 time=400 ]
[bg storage="rouka_up_2_green.png"time="700"  ]
階段があった[l][r]
上がろう[l][cm]
[quake count="3" time="3000" ]
[bg storage="black.png"time="700"  ]
[jump storage="jailbreak_1.ks" target="*layer1" ]
[s]

*right
[quake count=1 time=400 ]
[bg storage="rouka_up_2_green.png"time="700"  ]
この辺に何かある気がする...[l][cm]
進んでみるよう[l][cm]
[quake count=1 time=400 ]

[bg storage="rouka1_green_find.png"time="700"  ]
[link target="*go1"]進む[endlink][r]
[link target="*find1"]調べる[endlink][r]
[s]

*go1
[cm]
[quake count=1 time=400 ]
[bg storage="rouka1_green_find.png"time="700"  ]
[link target="*go2"]進む[endlink][r]
[link target="*find1"]調べる[endlink][r]
[s]


*find1
[cm]
[quake count=1 time=400 ]
[bg storage="black.png" time="700"  ]
周辺を調べてみた...[l][cm]
[wait time="2000"]
[bg storage="rouka_stop_green.png"time="700"  ]
何もなかった[l][cm]
先に進もう[l][cm]
[quake count=1 time=400 ]
[jump target="*go2" ]
[s]

*go2
[cm]
[quake count=1 time=400 ]
[bg storage="rouka1_green_find.png" ]
[link target="*go3"]進む[endlink][r]
[link target="*find2"]調べる[endlink][r]
[s]

*find2
[cm]
[quake count=1 time=400 ]
[bg storage="black.png" time="700"  ]
周辺を調べてみた...[l][cm]
[wait time="2000"]
[bg storage="rouka_stop_green.png" time="700"]
何もなかった[l][cm]
先に進もう[l][cm]
[jump target="*go3" ]
[s]

*go3
[cm]
[quake count=1 time=400 ]
[bg storage="rouka1_green_find.png" ]
[link target="*go4"]進む[endlink][r]
[link target="*find3"]調べる[endlink][r]
[s]

*find3
[cm]
[quake count=1 time=400 ]
[bg storage="black.png" time="700"  ]
周辺を調べてみた...[l][cm]
[wait time="2000"]
[bg storage="rouka_stop_green.png"time="700"  ]
何もなかった[l][cm]
先に進もう[l][cm]
[quake count=1 time=400 ]
[jump target="*go4" ]
[s]

*go4
[cm]
[quake count=1 time=400 ]
[bg storage="rouka1_green_find.png" ]
[link target="*go5"]進む[endlink][r]
[link target="*find4"]調べる[endlink][r]
[s]

*find4
[cm]
[quake count=1 time=400 ]
[bg storage="black.png" time="7000"  ]
周辺を調べてみた...[l][cm]
[wait time="2000"]
[bg storage="rouka_stop_green.png"time="1000"  ]
何もなかった[l][cm]
先に進もう[l][cm]
[jump target="*go5" ]
[s]

*go5
[cm]
[quake count=1 time=400 ]
[bg storage="rouka1_green_find.png" ]
[link target="*go6"]進む[endlink][r]
[link target="*find5"]調べる[endlink][r]
[s]

*find5
[cm]
[quake count=1 time=400 ]
[bg storage="black.png" time="700"  ]
周辺を調べてみた...[l][cm]
[wait time="2000"]
[bg storage="rouka_stop_green.png"time="1000"  ]
何もなかった[l][cm]
先に進もう[l][cm]
[quake count=1 time=400 ]
[jump target="*go6" ]
[s]

*go6
[cm]
[quake count=1 time=400 ]
[bg storage="rouka1_green_find.png" ]
[link target="*go7"]進む[endlink][r]
[link target="*find6"]調べる[endlink][r]
[s]

*find6
[cm]
[quake count=1 time=400 ]
[bg storage="black.png" time="700"  ]
周辺を調べてみた...[l][cm]
[wait time="2000"]
[bg storage="rouka_stop_green.png"time="1000"  ]
何もなかった[l][cm]
先に進もう[l][cm]
[quake count=1 time=400 ]
[jump target="*go7" ]
[s]

*go7
[cm]
[quake count=1 time=400 ]
[bg storage="rouka1_green_find.png" ]
[link target="*go8"]進む[endlink][r]
[link target="*find7"]調べる[endlink][r]
[s]

*find7
[cm]
[quake count=1 time=400 ]
周辺を調べてみた...[l][cm]
[wait time="2000"]
[bg storage="totem1.png"]
ほこりをかぶってわかりにくいが、何かがある...[l][cm]
謎の置物を手に入れた！[l][cm]
[quake count=20 time=1000 hmax="20" ]
[bg storage="rouka_route1_green.png" time="700" ]
[bg storage="rouka_route2_green.png" time="700"  ]
[bg storage="rouka_route_green.png" time="700"  ]
次の階層への道が現れた[l][r]
すすもう[l][cm]
[quake count=1 time=400 ]
[jump storage="jailbreak_1.ks" target="*layer1"  ]
[s]

*go8
[cm]
[quake count=1 time=400 ]
[bg storage="rouka1_green_find.png" ]
[link target="*go9"]進む[endlink][r]
[link target="*find8"]調べる[endlink][r]
[s]

*find8
[cm]
[quake count=1 time=400 ]
[bg storage="black.png" time="1000"  ]
周辺を調べてみた...[l][cm]
[wait time="2000"]
[bg storage="rouka_stop_green.png"time="1000"  ]
何もなかった[l][cm]
先に進もう[l][cm]
[quake count=1 time=400 ]
[jump target="*go9" ]
[s]

*go9
[cm]
[quake count=1 time=400 ]
[bg storage="rouka1_green_find.png" ]
[link target="*go10"]進む[endlink][r]
[link target="*find9"]調べる[endlink][r]
[s]

*find9
[cm]
[quake count=1 time=400 ]
[bg storage="black.png" time="1000"  ]
周辺を調べてみた...[l][cm]
[wait time="2000"]
[bg storage="rouka_stop_green.png"time="1000"  ]
何もなかった[l][cm]
先に進もう[l][cm]
[quake count=1 time=400 ]
[jump target="*go10" ]
[s]

*go10
[cm]
[quake count=1 time=400 ]
[bg storage="rouka_stop_green.png" time="1000" ]
[quake count=20 time=1000 hmax="20" ]
..![l][cm]
[bg storage="rouka_foll1_green.png" time="500" ]
[bg storage="rouka_foll2_green.png" time="500" ]
天井が落ちてきた！[l][cm]
[bg storage="black.png" time="500" ]
潰されてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

