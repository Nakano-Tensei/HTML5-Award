*RouteTree
[cm]


[bg storage="black.png" time="0" ]
[locate x=100 y=300]
[button graphic="../bgimage/Western-Castle_noon.jpg" storage="gambler.ks" target="*gambler" width=200 height=100 ]


[locate x=500 y=400]
[button graphic="../bgimage/Western-Castle_noon.jpg" storage="gambler.ks" target="*gambler" width=200 height=100 ]
[locate x=500 y=200]
[button graphic="../bgimage/Western-Castle_noon.jpg" storage="gambler.ks" target="*gambler" width=200 height=100 ]


[locate x=900 y=10]
[button graphic="../bgimage/Western-Castle_noon.jpg" storage="gambler.ks" target="*gambler" width=200 height=100 ]
[locate x=900 y=200]
[button graphic="../bgimage/Western-Castle_noon.jpg" storage="gambler.ks" target="*gambler" width=200 height=100 ]

[locate x=900 y=400]
[button graphic="../bgimage/Western-Castle_noon.jpg" storage="gambler.ks" target="*gambler" width=200 height=100 ]
[locate x=900 y=600]
[button graphic="../bgimage/Western-Castle_noon.jpg" storage="gambler.ks" target="*gambler" width=200 height=100 ]

[locate x=1150 y=300]
[button graphic="title/right.png" width="100" height="100" storage="RouteTree2.ks"  target="*RouteTree2" ]

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
drawLine(100, 350, 400, 350); 

drawLine(400, 350, 400, 250); 
drawLine(400, 350, 400, 450); 

drawLine(400, 250, 500, 250); 
drawLine(400, 450, 500, 450);

drawLine(500, 250, 800, 250);
drawLine(800, 250, 800, 60);
drawLine(800, 60, 900, 60);
drawLine(800, 250, 900, 250);
drawLine(800, 450, 950, 450);

drawLine(500, 450, 800, 450);
drawLine(800, 450, 800, 650);

drawLine(800, 450, 1000, 450);
drawLine(800, 650, 1000, 650);

drawLine(1000, 60, 2000, 60);
drawLine(1000,250, 2000,250);
drawLine(1000,450, 2000,450);
drawLine(1000,650, 2000,650);

[endscript]
[s]





