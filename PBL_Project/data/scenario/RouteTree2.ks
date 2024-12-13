*RouteTree2
[cm]


[bg storage="black.png" time="0" ]

[locate x=200 y=10]
[button graphic="../bgimage/Western-Castle_noon.jpg" storage="gambler.ks" target="*gambler" width=200 height=100 ]
[locate x=200 y=200]
[button graphic="../bgimage/Western-Castle_noon.jpg" storage="gambler.ks" target="*gambler" width=200 height=100 ]
[locate x=200 y=400]
[button graphic="../bgimage/Western-Castle_noon.jpg" storage="gambler.ks" target="*gambler" width=200 height=100 ]
[locate x=200 y=600]
[button graphic="../bgimage/Western-Castle_noon.jpg" storage="gambler.ks" target="*gambler" width=200 height=100 ]


[locate x=0 y=300]
[button graphic="title/left.png"  width="100" height="100" storage="RouteTree.ks"   target="*RouteTree"  ]

[html]
<canvas id="drawingCanvas" width="2000" height="2000" ></canvas>
[endhtml]

[iscript]
const canvas = document.getElementById('drawingCanvas');
const ctx = canvas.getContext('2d');

// 線を描画する関数
function drawLine(x1, y1, x2, y2) {
    ctx.beginPath(); // 新しいパスを開始
    ctx.moveTo(x1, y1); // 線の開始位置
    ctx.lineTo(x2, y2); // 線の終了位置
    ctx.strokeStyle = 'white'; // 線の色
    ctx.lineWidth = 5; // 線の幅
    ctx.stroke(); // 線を描画
}

// 線を引く例
drawLine(0,60,200,60);

drawLine(0,250,200,250);



drawLine(0,450,200,450);

drawLine(0,650,200,650);

[endscript]
[s]



