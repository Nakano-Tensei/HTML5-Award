
*select1

[cm]

「西へ進んだ」[l][cm]
[bg storage="forest_1.png"]
[getrand min="1" max="100"]
[if exp="tf.rand <= 50"][jump storage="DeadEnd.ks"  target="*Dead"]
[else][jump target="*Safe"]
[endif]



*Safe
[emb exp="tf.rand"][l][r]
そこには何もなかった[l]

[link target=*select1]【１】選択肢　その１[endlink][r]
[link target=*select2]【２】選択肢　その２[endlink][r]
[s]

*select1

[cm]

「選択肢１」がクリックされました[l]
@jump target=*common

*select2

[cm]

「選択肢２」がクリックされました[l]

@jump target=*common

*common
[cm]
共通ルートです