[macro name="getrand"]
[iscript]
var max = mp.max || '100'
var min = mp.min || '1'
max = Number(max)
min = Number(min)
tf.rand = min + Math.floor(Math.random() * (max - min + 1))
if (mp['var']) eval(mp['var'] + ' = ' + tf.rand)
[endscript]
[endmacro]
[eval exp="tf.first = 1"]
[return]