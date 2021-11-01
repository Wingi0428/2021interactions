void setup(){//只會做一次
  size(600,600);
  background(#898F95);
}
void draw(){///畫圖函式，每秒60次 1小時=60分，1分=60秒，1秒=60分
  //臉
  fill(255);
  noStroke();
  rect(100, 100, 400, 400);
  //眼睛
  stroke(128);
  strokeWeight(10);
  ellipse(mouseX, mouseY, 30, 30);
  //滑鼠變數 mouseX, mouseY
  ellipse(400, 300, 30, 30);
  //嘴巴
  fill(#FA7D00);
  noStroke();
  ellipse(300, 370, 190, 80);
  stroke(255);
  strokeWeight(10);
  line(200, 370, 400, 370);
}
