*jailbreak

[cm]
[mask]
[bg storage="black.png" ]
[mask_off]

@layopt layer = message0 visible="true" 
俺はわけあって地下深くにある牢獄に投獄されている。[l][r]
ベッドは固いし飯は不味いし退屈だ.......。[l][r]
外の空気吸いたい....。[l][r]
...というわけで、[r]

[bg storage="jail.png" ]
[position layer=message0 width=900 height=400 top=400 left=70 ]
[position layer=message0 page=fore frame="frame1.png" margint="65" marginl="50" marginr="90" marginb="60"]
[cm]
[freeimage layer=1 ]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=100 y=420 size=26]


[chara_config ptext="chara_name_area"]

脱獄することにした。[l][cm]
[wait time="2000" ]
...!![l][cm]

誰か近づいてくる。[l][cm]
[wait time="2000" ]

[chara_new name="tensei" storage="tensei.png" jname="てんせい"  ]
[chara_show name="tensei" ]
#？？？
よお[l][cm]
#ワナー
俺の名はワナー。[l][r]
ただの通りすがりさ。[l][cm]
ところで君、この退屈な牢獄から出たくないか？[l][r]
この俺が牢屋のカギを開けてやろう！[l][cm]

#
ワナーは牢屋のカギを開けた[l][cm]

#ワナー
じゃあがんばれよ！[l][cm]

[chara_hide name="tensei" ]

#
ワナーは去っていった...[l][cm]



なんだったんだ？[l][cm]
少々怪しいが、脱獄のチャンスだ[l][cm]


とりあえず牢屋から出て、外を目指して進むことにした。[l][cm]
[jump storage="jailbreak_bottom.ks" target="*bottom" ]
[s]
