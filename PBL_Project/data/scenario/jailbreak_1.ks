*layer1
[cm]
[bg storage="rouka1_brown.png" ]
...１階層...[l][cm]
脱出までもう少しだ[l][cm]

[quake count="1" time="1000" ]
[bg storage="rouka1_brown_door.png" ]
[chara_new name="mons1" storage="../bgimage/monster_back.png" jname="モンスター" ]

[chara_show height="250" width="250" top="328" left="500"]

モンスターが道を守っているが、今は背を向けている[l][r]
奇襲を仕掛けよう[l][cm]

[locate x=400 y=300]
[button graphic="up.png" target="*near1"  ]
[quake count="1" time="1000" ]
[s]

*near1
[cm]
[chara_hide name="mons1" ]
[bg storage="rouka1_brown_door1.png" time="1000" ]
[chara_show name="mons1"  height="500" width="500" top="328" left="500" ]

[locate x=400 y=300]
[button graphic="up.png" target="*near2" ]
[quake count="1" time="1000" ]
[s]

*near2
[cm]
[chara_hide name="mons1" ]
[bg storage="rouka1_brown_door2.png" time="1000" ]
[chara_show name="mons1"   height="2000" width="2000" top="-500" left="-400" ]

[locate x=400 y=300]
[button graphic="back_attack.png" target="*back_attack"  ]
[s]

*back_attack
[cm]
モンスターの背中をナイフで突き刺した[l][r]
モンスターを倒した[l][cm]

[bg storage="rouka1_brown_door3.png" time="1000"  ]
モンスターから鍵が落ちたようだ[l][cm]
鍵を手に入れた[l][r]
ドアの鍵を手に入れた[l][cm]
[bg storage="rouka1_brown_door2.png" time="1000"]

ドアの鍵を使って目の前のドアを開けた[l][cm]
[bg storage="rouka1_brown_door4.png"time="700"  ]
[bg storage="rouka1_brown_door5.png"time="700"  ]

すすもう[l][cm]
[quake count="1" time="1000" ]
[jump storage="jailbreak_out.ks" target="*layer_out"  ]
[s]

