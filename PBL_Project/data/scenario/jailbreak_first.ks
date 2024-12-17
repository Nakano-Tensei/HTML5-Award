*jailbreak

[cm]
[mask]
[bg storage="black.png" ]
[mask_off]

@layopt layer = message0 visible="true" 
俺はたけし。[l][r]
わけあって洞窟の奥深くにある牢獄に投獄されている。[l][r]
地面は固いし飯は不味いし退屈だ.......。[l][r]
外の空気吸いたい....。[l][r]
...というわけで、[r]

[bg storage="cave1.jpg" ]
[position layer=message0 width=900 height=400 top=400 left=70 ]
[position layer=message0 page=fore frame="frame1.png" margint="65" marginl="50" marginr="90" marginb="60"]
[cm]
[freeimage layer=1 ]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=100 y=420 size=26]


[chara_config ptext="chara_name_area"]
#たけし
脱獄しよう!![l][cm]
[wait time="2000" ]
...!![l][cm]

誰？おまえ[l][cm]
[wait time="2000" ]

[chara_new name="tensei" storage="tensei.png" jname="てんせい"  ]
[chara_show name="tensei" ]
#てんせい
俺、てんせい！[l][r]
ただの通りすがりさ！[l]
君この洞窟から出たいんだろう？[l][r]
牢屋のカギを開けてあげるよ！[l][cm]

#たけし
え？[l][cm]

#てんせい
じゃあがんばれよ！[l][cm]

[chara_hide name="tensei" ]
#
てんせいは去っていった...[l][cm]



#たけし
.....よし...!行くか！[l][cm]

#
たけしは牢屋から出て、外を目指して進み始めた。[l][cm]
[jump storage="jailbreak_bottom.ks" target="*bottom" ]
[s]
