*route
[cm]

[locate x=100 y=300]
[button graphic="hero.png" storage="sensi.ks"  target="*hazime" ][r]

[locate x=100 y=500]

[button graphic="majic.png" storage="mahou.ks"  target="*mahou"][r]
[locate x=400 y=400]

[button graphic="jailbreak.png" storage="jailbreak_first.ks"  target="*jailbreak"][r]

[locate x=700 y=300]
[button graphic="ranger.png" storage="first.ks"  target="*first"][r]
[locate x=700 y=500]
[button graphic="gambler.png" storage="gambler.ks" target="*gambler"][r]
[locate x=510 y=550]
[button graphic="modoru.png" target="*title" ][r]
[s]

*title
[cm]
[layopt layer=message0 visible=false]
[jump storage="first.ks" target="*title" ]
[s]