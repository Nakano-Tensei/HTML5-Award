*4layer
[cm]
[bg storage="rouka1.png"time="1000"  ]
....四階層.....[l][cm]

一つ上の階に来た[l][cm]


[bg storage="rouka4.png" time="1000" ]
[wait time="1000" ]
分かれ道だ[l][cm]
どっちへ行こうか?[l][r]


[locate x=1000 y=100]
[button graphic="title/right.png"target="*right4" width="200"height="200"   ]
[locate x=100 y=100]
[button graphic="title/left.png"target="*left4" width="200"height="200" ]
[s]

*right4
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_up.png" time="1000" ]
階段があった[l][cm]
上に進もう[l][cm]
[wait time="2000" ]
[jump storage="jailbreak_3.ks" target="*3layer"]
[s]

*left4
[cm]
左へ進んだ[l][cm]
[bg storage="rouka2.png" time="1000"  ]


近くの看板に何か書いている[l][cm]

コノ先宝アリ.[l][r]
コノこの先落とし穴注意[l][cm]


すすもう[l][cm]



[locate x=550 y=50]
[button graphic="title/up.png"target="*up_t1" width="200"height="200" ]

[locate x=1000 y=200]
[button graphic="title/right.png"target="*right_t1" width="200"height="200"   ]

[locate x=100 y=200]
[button graphic="title/left.png"target="*left_t1" width="200"height="200" ]
[s]

*up_t1
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka2.png" time="1000" ]

[locate x=550 y=50]
[button graphic="title/up.png"target="*up_t2" width="200"height="200" ]

[locate x=1000 y=200]
[button graphic="title/right.png"target="*right_t2" width="200"height="200"   ]

[locate x=100 y=200]
[button graphic="title/left.png"target="*left_t2" width="200"height="200" ]
[s]


*right_t1
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_stop.png" time="1000" ]
[wait time="2000" ]
[bg storage="rouka_stop_hole1.png" time="700"]
[bg storage="rouka_stop_hole2.png" time="700"]
落とし穴に落ちてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*left_t1
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_stop.png" time="1000" ]
[wait time="2000" ]
[bg storage="rouka_stop_hole1.png" time="700"]
[bg storage="rouka_stop_hole2.png" time="700"]
落とし穴に落ちてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]



*right_t2
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka2.png" time="1000" ]

[locate x=550 y=50]
[button graphic="title/up.png"target="*up_t3" width="200"height="200" ]

[locate x=1000 y=200]
[button graphic="title/right.png"target="*right_t3" width="200"height="200"   ]

[locate x=100 y=200]
[button graphic="title/left.png"target="*left_t3" width="200"height="200" ]
[s]

*up_t2
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_stop.png" time="1000" ]
[wait time="2000" ]
[bg storage="rouka_stop_hole1.png" time="700"]
[bg storage="rouka_stop_hole2.png" time="700"]
落とし穴に落ちてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*left_t2
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_stop.png" time="1000" ]
[wait time="2000" ]
[bg storage="rouka_stop_hole1.png" time="700"]
[bg storage="rouka_stop_hole2.png" time="700"]
落とし穴に落ちてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*up_t3
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka2.png" time="1000" ]

[locate x=550 y=50]
[button graphic="title/up.png"target="*up_t4" width="200"height="200" ]

[locate x=1000 y=200]
[button graphic="title/right.png"target="*right_t4" width="200"height="200"   ]

[locate x=100 y=200]
[button graphic="title/left.png"target="*left_t4" width="200"height="200" ]
[s]

*right_t3
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_stop.png" time="1000" ]
[wait time="2000" ]
[bg storage="rouka_stop_hole1.png" time="700"]
[bg storage="rouka_stop_hole2.png" time="700"]
落とし穴に落ちてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*left_t3
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_stop.png" time="1000" ]
[wait time="2000" ]
[bg storage="rouka_stop_hole1.png" time="700"]
[bg storage="rouka_stop_hole2.png" time="700"]
落とし穴に落ちてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*up_t4
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka2.png" time="1000" ]

[locate x=550 y=50]
[button graphic="title/up.png"target="*up_t5" width="200"height="200" ]

[locate x=1000 y=200]
[button graphic="title/right.png"target="*right_t5" width="200"height="200"   ]

[locate x=100 y=200]
[button graphic="title/left.png"target="*left_t5" width="200"height="200" ]
[s]

*right_t4
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_stop.png" time="1000" ]
[wait time="2000" ]
[bg storage="rouka_stop_hole1.png" time="700"]
[bg storage="rouka_stop_hole2.png" time="700"]
落とし穴に落ちてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*left_t4
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_stop.png" time="1000" ]
[wait time="2000" ]
[bg storage="rouka_stop_hole1.png" time="700"]
[bg storage="rouka_stop_hole2.png" time="700"]
落とし穴に落ちてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*right_t5
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_stop.png" time="1000" ]
[wait time="2000" ]
[bg storage="rouka_stop_hole1.png" time="700"]
[bg storage="rouka_stop_hole2.png" time="700"]
落とし穴に落ちてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*up_t5
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_stop.png" time="1000" ]
[wait time="2000" ]
[bg storage="rouka_stop_hole1.png" time="700"]
[bg storage="rouka_stop_hole2.png" time="700"]
落とし穴に落ちてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*left_t5
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka2.png" time="1000" ]

[locate x=550 y=50]
[button graphic="title/up.png"target="*up_t6" width="200"height="200" ]

[locate x=1000 y=200]
[button graphic="title/right.png"target="*right_t6" width="200"height="200"   ]

[locate x=100 y=200]
[button graphic="title/left.png"target="*left_t6" width="200"height="200" ]
[s]

*left_t6
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka2.png" time="1000" ]

[locate x=550 y=50]
[button graphic="title/up.png"target="*up_t7" width="200"height="200" ]

[locate x=1000 y=200]
[button graphic="title/right.png"target="*right_t7" width="200"height="200"   ]

[locate x=100 y=200]
[button graphic="title/left.png"target="*left_t7" width="200"height="200" ]
[s]

*right_t7
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_stop.png" time="1000" ]
[wait time="2000" ]
[bg storage="rouka_stop_hole1.png" time="700"]
[bg storage="rouka_stop_hole2.png" time="700"]
落とし穴に落ちてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*left_t7
[cm]
[bg storage="rouka1.png" time="1000" ]
[bg storage="rouka_stop.png" time="1000" ]
[wait time="2000" ]
[bg storage="rouka_stop_hole1.png" time="700"]
[bg storage="rouka_stop_hole2.png" time="700"]
落とし穴に落ちてしまった...[l][cm]
[layopt layer=message0 visible=false]
@jump storage="gameover.ks"
[s]

*up_t7
[cm]
[bg storage="rouka1.png" time="1000" ]

[bg storage="../image/rouka_stop_box.png" time="2000"  ]

宝箱だ[l][r]
開けると中には鍵が入っていた[l][cm]
鍵を手に入れた[l][cm]

[bg storage="rouka_stop.png" time="700" ]
[bg storage="../image/radder_up_1.png"  time="1000" ]
[bg storage="../image/radder_up_2.png" time="500" ]
[bg storage="radder_up.png" time="500"  ]

はしごが現れた[l][r]
先へ進もう[l][cm]
[bg storage="black.png" ]
[jump storage="jailbreak_3.ks" target="*3layer"  ]
[s]