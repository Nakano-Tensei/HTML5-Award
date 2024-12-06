*select2
[cm]

「東へ進んだ」[l][cm]
[bg storage="cave10.png" ]
[chara_new name="suke" storage="suke.png" jname="suke" width="500" height="500" ]
[chara_show name="suke" ]
スケルトンアーチャーがあらわれた![l] [cm]
「アギダイン」[l] [cm]
[chara_new name="honou_name" storage="honou.png" jname="鬼火"]
[chara_config pos_mode=false time=2000 ani=true effect=easeOutBounce]
[wa]
;チカチカと登場easeOutBounce
[chara_show name="honou_name"]
;------------keyframe の定義
[keyframe name="honou_anim1"]
[frame p=0% ]
[frame p=30% scaleX="2" scaleY="2"]
[frame p=50% scaleX="1.6" scaleY="1.6"]
[frame p=100% scaleX="2" scaleY="2"]

[endkeyframe]

[kanim name="honou_name" keyframe="honou_anim1" time=1000 count="infinite" easing="ease-in"]
[chara_hide name="honou_name" opacity= 80]
スケルトンアーチャーに300ダメージ！[l][cm]
[chara_hide name="suke" ]
スケルトンアーチャーは倒れた。[l][cm]  