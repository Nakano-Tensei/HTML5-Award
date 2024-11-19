
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
