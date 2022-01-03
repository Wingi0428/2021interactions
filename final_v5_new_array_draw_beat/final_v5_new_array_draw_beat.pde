import processing.sound.*;
PImage imgStart,imgleft,imgup, imgright, imgdown,imgEnd;
SoundFile sound;
///利用陣列(時間t)，決定方塊出現的座標/millis()
///音譜 a, b, c, d 陣列
  int []a={0,0,1,0};///Left x:400
  int []b={0,1,0,0};///Up x:600
  int []c={1,0,0,0};///Right x:800
  int []d={0,0,1,0};///Down x:1000
  int t=1;//a[t],b[t]...
  int prevT=1;
///表格 -> 音譜:誰在畫面裡
  int []beatX=new int[100];///變數最重要
  int []beatY=new int[100];///變數最重要
  int beatN=0;///一開始0個
void setup(){
  size(1600,900);
  imgStart = loadImage("Planet.png");///載入img
  imgleft = loadImage("left.png");
  imgup = loadImage("up.png");
  imgright = loadImage("right.png");
  imgdown = loadImage("down.png");
  imgEnd = loadImage("End.jpg");
  sound = new SoundFile(this, "bensound-anewbeginning.mp3");///載入sound
  sound.play();
}
void draw(){
  //int t=int(millis())%4;
  image(imgStart, 0, 0, 1600, 900);///BG img
  image(imgleft, 465, 800, 85, 90);
  image(imgup, 665, 800, 85, 90);
  image(imgright, 865, 800, 85, 90);
  image(imgdown, 1065, 800, 85, 90);
  ellipse(mouseX, mouseY,50,50);///mouse
  line(400, 0, 400, 900);line(600, 0, 600, 900);///line直
  line(800, 0, 800, 900);line(1000, 0, 1000, 900);///line直
  line(1200, 0, 1200, 900); line(400, 800, 1200, 800);///line橫
  stroke(255); strokeWeight(3);///line寬度
  println("mouse: "+ mouseX+ " "+ mouseY);///顯示mouse位置座標
///找一個時間點
int t= millis()/ 1000 % 4;
///每過60/1秒生一個
  if(frameCount%60==1){
///如果音譜為1畫出
    if(a[t]==1) { beatX[beatN]=400; beatY[beatN]=-100; beatN++; }
    if(b[t]==1) { beatX[beatN]=600; beatY[beatN]=-100; beatN++; }
    if(c[t]==1) { beatX[beatN]=800; beatY[beatN]=-100; beatN++; }
    if(d[t]==1) { beatX[beatN]=1000; beatY[beatN]=-100; beatN++; }
  }
///往下掉之前教過的
  for(int i=0;i<beatN;i++){
///使用準備好的beat，畫出方塊
    rect(beatX[i],beatY[i],200,100);
    beatY[i]+=3;
  }
    /*if(millis() > 1286*(prevT+1)){
      ///產生a,b,c,d陣列中[]=1的節奏，每執行一次beatN+1
      if(a[t]==1) { beatX[beatN]=400; beatY[beatN]=-100; beatN++; }
      if(b[t]==1) { beatX[beatN]=600; beatY[beatN]=-100; beatN++; }
      if(c[t]==1) { beatX[beatN]=800; beatY[beatN]=-100; beatN++; }
      if(d[t]==1) { beatX[beatN]=1000; beatY[beatN]=-100; beatN++; }
      t++;
      prevT++;
    }
   if(beatN>=11){
      image(imgEnd, 0, 0, 1600, 900);
      beatN=0;
   }
  else{
    for(int i=0;i<beatN;i++){
        ///fill(180,100,150);
        rect(beatX[i],beatY[i],200,100);///使用準備好的beat，畫出方塊
        beatY[i]+=2;
      }
   }*/
}
