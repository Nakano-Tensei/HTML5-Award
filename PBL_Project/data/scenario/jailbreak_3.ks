*3layer
[cm]
[bg storage="rouka1_blue.png" time="1000"  ]
....3階層....[l][cm]
3階層に来た[l][cm]
[bg storage="rouka4_blue.png" time="1000" ]
[wait time="1000" ]
分かれ道だ[l][r]
どっちへ行こうか?[l][cm]
[locate x=1000 y=100]
[button graphic="../bgimage/right_2.png" target="*right" width="200" height="200"]
[locate x=100 y=100]
[button graphic="../bgimage/left_2.png"target="*left" width="200"height="200" ]
[s]

*right
[cm]
[bg storage="rouka_up_2.png" ]
もう階段があった[l][r]
上がろう[l][cm]
[bg storage="black.png" ]
[jump storage="jailbreak_2.ks" target="*layer2" ]
[s]

*left
[cm]
[bg storage="rouka1_blue.png" time="1000" ]
[bg storage="boxRoom.png" time="1000" ]
少し広い部屋に来た[l][r]
正面に宝箱が３つ並んでいる[l][r]
どれを開けようか[l][cm]

[link target="*select1"]【１】左の宝箱を開ける[endlink][r]
[link target="*select2"]【２】真ん中の宝箱を開ける[endlink][r]
[link target="*select3"]【３】右の宝箱を開ける[endlink][r]
[s]

*select1

[cm]

左の宝箱を開けよう[l][cm]
[call storage="macro.ks" cond="tf.first == undefined"]
[getrand min="1" max="100"]
[if exp="tf.rand <= 30"][jump target="*Dead_l"]
[else][jump target="*Safe"]
[endif]
[s]


*select2

[cm]

真ん中の宝箱を開けよう[l][cm]

[call storage="macro.ks" cond="tf.first == undefined"]
[getrand min="1" max="100"]
[if exp="tf.rand <= 50"][jump target="*Dead_c"]
[else][jump target="*Safe"]
[endif]
[s]
*select3

[cm]
右の宝箱を開けよう[l][cm]
[call storage="macro.ks" cond="tf.first == undefined"]
[getrand min="1" max="100"]
[if exp="tf.rand <= 80"][jump target="*Dead_r"]
[else][jump target="*Safe"]
[endif]

[s]

*Safe
[cm]
...![l][r]
[wait time="1000" ]
中に何か入っている！[l][cm]
[wait time="1000" ]
[r]
「謎の置物」を手に入れた[l][cm]
[wait time="1000" ]
[bg storage="blueRoom_route1.png" time="700" ]
[bg storage="blueRoom_route2.png" time="700" ]
[bg storage="blueRoom_route.png" time="700"  ]
...![l][cm]
正面に通路が出てきた！[l][cm]
先に進もう[l][cm]
[bg storage="black.png" ]
[jump storage="jailbreak_2.ks" target="*layer2" ]
[s]

*Dead_l
[cm]
...![l][cm]
[wait time="1000" ]
[chara_new name="mimick" storage="../bgimage/mimick.png" jname="ミミック"  ]
[chara_show name="mimick" height="250" width="250" top="328" left="330" ]
宝箱はミミックだった！[l][cm]
[chara_move name="mimick" anim="true" height="2000" width="2000" top="-500" left="-400"   ]
ミミックは大きな口で噛みついてきた！[l][cm]

[bg storage="black.png" ]
[chara_hide name="mimick" ]
力尽きた...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*Dead_c
[cm]
...![l][cm]
[wait time="1000" ]
[chara_new name="mimick" storage="../bgimage/mimick.png" jname="ミミック"  ]
[chara_show name="mimick" height="250" width="250" top="328" left="500" ]
宝箱はミミックだった！[l][cm]
[chara_move name="mimick" anim="true" height="2000" width="2000" top="-500" left="-400"   ]
ミミックは大きな口で噛みついてきた！[l][cm]
[bg storage="black.png" ]
[chara_hide name="mimick" ]
力尽きた...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*Dead_r
[cm]
...![l][cm]
[wait time="1000" ]
[chara_new name="mimick" storage="../bgimage/mimick.png" jname="ミミック"  ]
[chara_show name="mimick" height="250" width="250" top="328" left="680" ]
宝箱はミミックだった！[l][cm]
[chara_move name="mimick" anim="true"  height="2000" width="2000" top="-500" left="-350"   ]
ミミックは大きな口で噛みついてきた！[l][cm]
[bg storage="black.png" ]
[chara_hide name="mimick" ]
力尽きた...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]