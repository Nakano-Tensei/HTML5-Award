*hazime
[call storage="macro.ks" cond="tf.first == undefined"]
[cm]
[cm]
[mask]
[bg storage="black.png" ]
[mask_off]
[position layer=message0 width=900 height=400 top=400 left=70 ]
[position layer=message0 page=fore frame="frame1.png" margint="65" marginl="50" marginr="90" marginb="60"]
[cm]
[freeimage layer=1 ]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=130 y=420 size=26]
[chara_config ptext="chara_name_area"]

@layopt layer = message0 visible="true" 
story of warrior[l][cm]
[bg storage="オラリオ町.jpg" ]
私はこの世のすべてがあると言うダンジョンのある町[l][r]
オラリオンにやってきた[l][cm]
私がここに来た理由は....[p][cm]
[bg storage="診療所.png" ]
「残念ながら今の医療では直すことはできません
私たちには死期を遅らせることしか...」[p]

[bg storage="寝室の窓際のベッド（夕方・青）.jpg" ]
またお兄ちゃんと遊んだりご飯食べたりしたいよ...[l][cm]
[bg storage="オラリオ町.jpg" ]
妹は必ず助ける[p]
だがここからは危険なダンジョンだ[l]
準備が必要なら何か買ってもいいかもしれない[p][cm]
[cm]
[locate x=400 y=100]
[button graphic="準備.png" target="*bay1" ][r]

[locate x=400 y=300]
[button graphic="ダンジョン.png" target="*go1" ][r]
[s]
*bay1
[cm]
私は冷静だ[l][r]
なんの準備もなく行くほど焦ってはいない[l][r]
何か買っていこう[p]
 [bg storage="怪しい店.jpg" ]
？？？？[r]
ここはどこだ？[l][r]
確か街中で買い物をしていたような[l][r]
ここに来る前の記憶が曖昧だ...[l][cm]
誰もいないのか？[l][cm]
#怪しい定員
「...お客さん」[l][cm]
#
！？後ろから声をかけられた[l][cm]
全く気配がなかった何者だ？[l][cm]
#怪しい定員
「ダンジョンへ向かわれるのでしょう[l][r]
これを持っていきなさい」[l][cm]
#怪しい定員
「あっ、お金はもらっておきますね」[l][cm]
#
ちょっ...[l][cm]
[bg storage="black.png" ]
...[l][r]
......[l][r][cm]
[bg storage="オラリオ町.jpg" ]
あれ何でここに？[l][r]
ダンジョンに行くために買い物に行って...[l][r]
変なアイテムを渡されて[l][r]
それで...[l][cm]
[font size="48"]
あっ！！！[l][cm]
お金全部無くなってる！？[l][cm]
はぁこんなことしてないでさっさと洞窟に向かおう[l][cm]
[jump target="*go2"]




*go1
[cm]
こんなとこでグズグズしてはいられない[l][r]
早くダンジョンに向かおう[l][cm]
*go2
[bg storage="洞窟.jpg" ]
ここがこの世の全ての物があるという噂のダンジョン[l][r]
まだここは人が通ってる跡があるな[l][r]
だがやたらと沢山白くて丸い石があるな[l][cm]
人の頭ぐらいの大きさだな...[l][cm]
[font size="48"]
！？[l][cm]
[chara_new name="suke" storage="suke.png" jname="suke" width="500" height="500" ]
[chara_show name="suke" ]
スケルトンだ[l][r]
相手はまだ気づいていないな[l][r]
どうする？[l][cm]
[locate x=400 y=100]
[button graphic="攻撃.png" target="*攻撃" ][r]

[locate x=400 y=300]
[button graphic="no_battle.png" target="*やり過ごす" ][r]
[s]
*やり過ごす
[cm]
私の目標は一刻も早く妹を助ける事だ[l][r]
こんなところで相手にしてはいられない[l][r]
やり過ごせるならやり過ごそう[l][cm]
[chara_hide name="suke" ]
[jump target="*無視する2"]


*攻撃
[cm]
帰りや他の冒険者に気概を与えるかもしれない[l][r]
ここで倒しておこう[l][cm]
;攻撃エフェクト設定予定地
;[image layer="1" storage="slash.gif" x="-100" y="100" time="500" wait="false"]
[chara_hide name="suke" ]
よしっ[l][r]
これで大丈夫かな[l][cm]
?[r]
なんだこれスケルトンの頭の中に入ってたのか？[l][r]
[locate x=400 y=100]
[button graphic="手に取る.png" target="*手に取る" ][r]

[locate x=400 y=300]
[button graphic="無視する.png" target="*無視する" ][r]
[s]

*手に取る
[cm]
葉っぱ？、薬草かな？[l][cm]
\謎の薬草？を手に入れた/[l][cm]
[quake count=5 time=300 hmax=20]
[font size="48"]
！？[l][cm]
なんだ！？[l][r]
馬の足音が聞こえ..[l][cm]
[chara_new name="deathknight" storage="deathknight.png" jname="deathknight"]
[chara_show name="deathknight" ]
何だあれ！？[l][r]
こんなモンスター見たことないぞ[l][r]
とんでもなく強そうだ...[l][cm]
だがまだこっちには気づいていない[l][cm]
[locate x=400 y=100]
[button graphic="攻撃.png" target="*攻撃2" ][r]

[locate x=400 y=300]
[button graphic="にげる.png" target="*にげる" ][r]
[s]

*攻撃2
[cm]
;攻撃エフェクト予定地
攻撃が何かに阻まれた！[l][cm]
[locate x=400 y=100]
[button graphic="攻撃.png" target="*攻撃3" ][r]

[locate x=400 y=300]
[button graphic="にげる.png" target="*にげる" ][r]
[s]
*攻撃3
[cm]
攻撃が通らない！[l][cm]
[locate x=400 y=100]
[button graphic="攻撃.png" target="*攻撃4" ][r]

[locate x=400 y=300]
[button graphic="にげる.png" target="*にげる" ][r]
[s]
*攻撃4
[cm]
避けられた...[l][cm]
[font size="48"]
！！！！！[l][cm]
[chara_hide name="deathknight" ][bg storage="black.png" ]
.[l][r]
..[l][r]
...[l][cm]
[cm]
@jump storage="gameover.ks"


*にげる
[cm]
[chara_hide name="deathknight" ]
今あいつと戦うのはまずい[l][r]
全身がそう言っているようだ[l][r]
ここは逃げよう[l][cm]
[jump target="*森エリア"]
*無視する
[cm]
何か怪しい気がする[l][r]
スケルトンの頭の中に葉っぱが[r]
入っているなん聞いたことが無い[l][cm]
呪いのアイテムかもしれないし置いていこう[l][cm]
*無視する2
*森エリア
;ここから森エリア
[bg storage="森1.jpg" ]
ここは人が来たことが無いのか？[l][r]
人が通った痕跡がないな[l][r]
慎重にすすm[l][cm]
[font size="48"]
ッッッ！！！[l][cm]
何だ！？[l][r]
トラップ！？[l][cm]
ここからは慎重に進んだほうがいいか？[l][cm]
[locate x=400 y=100]
[button graphic=".png" target="*探索" ][r]

[locate x=400 y=300]
[button graphic=".png" target="*慎重" ][r]
[s]
*探索
[cm]
いや、私は妹のための薬を探しに来ているんだ[r]
もしかしたら薬草がなっているかもしれない[l][cm]
トラップの危険もあるが草木をよく観察しながら進もう[l][cm]
;
[jump target="*建築エリア"]


*慎重
[cm]
ここでトラップに掛かって先にすすめ無くなることのほうがまずい[l]
トラップに掛からないように慎重に進もう[l][cm]

;ここから古代都市(未定)
*建築エリア
また急に景色が変わったな[l][r]
ここは家か？こんな所に廃墟があるとは[l][cm]

ドアが３個ある
;3分岐

*骨塚エリア
[cm]

*水場エリア
[cm]



;骨塚OR水場エリアどちらかクリアで開放どちらもクリアしてからでも可
*ボスエリア
[cm]
