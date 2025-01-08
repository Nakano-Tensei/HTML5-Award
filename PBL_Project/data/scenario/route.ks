*route
[cm]

[locate x=100 y=300]
[button graphic="hero.png" storage="sensi.ks"  target="*hazime" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=100 y=500]

[button graphic="majic.png" storage="mahou.ks"  target="*mahou" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[locate x=400 y=400]

[button graphic="jailbreak.png" storage="jailbreak_first.ks"  target="*jailbreak" clickse="../bgm/決定ボタンを押す1.mp3" ][r]

[locate x=700 y=300]
[button graphic="ranger.png" storage="first.ks"  target="*first" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[locate x=700 y=500]
[button graphic="gambler.png" storage="gambler.ks" target="*gambler" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[locate x=510 y=550]
[button graphic="modoru.png" target="*title" clickse="../bgm/決定ボタンを押す1.mp3" ][r]
[s]

*title
[cm]
[layopt layer=message0 visible=false]
[jump storage="first.ks" target="*title" ]
[s]

*route2
[cm]
[playbgm storage="8bit-Prologue01_loop.ogg" ]
[jump target="*route" ]
[s]