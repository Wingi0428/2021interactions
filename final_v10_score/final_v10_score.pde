import processing.sound.*;
//Gimport processing.sound.*;
PImage imgStart,imgleft,imgup, imgright, imgdown,imgEnd;
SoundFile sound;
PFont myFont;
///利用陣列(時間t)，決定方塊出現的座標/millis()
///音譜 a, b, c, d 陣列
  int []a={0,0,1,0,0,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};///Left x:400
  int []b={0,1,0,0,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};///Up x:600
  int []c={0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};///Right x:800
  int []d={0,0,1,0,0,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};///Down x:1000
///表格 -> 音譜:誰在畫面裡
  int []beatX=new int[100];///變數最重要
  int []beatY=new int[100];///變數最重要
  int beatN=0;///一開始0個方塊
  int KeyUP = 0;
  int KeyDOWN = 0;
  int KeyLEFT = 0;
  int KeyRIGHT = 0;
  int GoodUP = 0;
  int GoodDOWN = 0;
  int GoodLEFT = 0;
  int GoodRIGHT = 0;
  int start = 0;
  int score =0;
void setup(){
  size(1600,900);
  //myFont = createFont("微軟正黑體",80);
  imgStart = loadImage("Planet.png");///載入開始背景
  imgleft = loadImage("left.png");
  imgup = loadImage("up.png");
  imgright = loadImage("right.png");
  imgdown = loadImage("down.png");
  imgEnd = loadImage("End.jpg");///載入結束背景
  sound = new SoundFile(this, "bensound-anewbeginning.mp3");///載入sound

}
int t=0;//a[t],b[t]...
///很花時間的讀檔:delayT
int delayT=0,prevT=0;///間隔ex.786s
void draw(){
  if(start==0){
    delayT = millis();
    image(imgEnd, 0, 0, 1600, 900);
    fill(255,255,255);
    textSize(80);
    text("Rhythm Game", 540, 450);
    text("Enter", 700, 550);
  }
  else{
    if(t>=22){ 
        image(imgEnd, 0, 0, 1600, 900);
        textSize(80); fill(255);
        text("Score:"+ score, 640, 450);
     }
    else{ 
      image(imgStart, 0, 0, 1600, 900);///BG img
      image(imgleft, 465, 800, 85, 90);
      image(imgup, 665, 800, 85, 90);
      image(imgright, 865, 800, 85, 90);
      image(imgdown, 1065, 800, 85, 90);
      //ellipse(mouseX, mouseY,50,50);///mouse
      line(400, 0, 400, 900);line(600, 0, 600, 900);///line直
      line(800, 0, 800, 900);line(1000, 0, 1000, 900);///line直
      line(1200, 0, 1200, 900); line(400, 800, 1200, 800);///line橫
      stroke(255); strokeWeight(3);///line寬度
      //println("mouse: "+ mouseX+ " "+ mouseY);///顯示mouse位置座標
  ///找一個時間點
      if(millis()-delayT > 786*(prevT+1)){
  ///如果音譜為1 > 對應方塊掉落的初始位置，並記錄有多少方塊。
        if(a[t]==1) { beatX[beatN]=400; beatY[beatN]=-400; beatN++; }
        if(b[t]==1) { beatX[beatN]=600; beatY[beatN]=-400; beatN++; }
        if(c[t]==1) { beatX[beatN]=800; beatY[beatN]=-400; beatN++; }
        if(d[t]==1) { beatX[beatN]=1000; beatY[beatN]=-400; beatN++; }
        prevT++;
        t++;
      }
    
///每個方塊往下掉
      for(int i=0;i<beatN;i++){
        textSize(30); fill(255);
        text("Score : "+ score, 1350, 100);
  ///使用準備好的beat，畫出方塊。
        fill(0);rect(beatX[i],beatY[i],200,100);
        beatY[i]+=5;
        if(beatY[i]>900) continue;   ///如果方塊掉出去就消失
        if(beatY[i]>700 && beatY[i]<=900){   ///如果方塊落在要按下鍵盤的距離範圍
          if(beatX[i]>400 && beatX[i]<=600 && KeyUP==1){    /// x 落在 b區(鍵盤=上)有按到
            GoodUP=1; score++;
          }
          if(beatX[i]>800 && beatX[i]<=1000 && KeyDOWN==1){    /// x 落在 d區(鍵盤=下)有按到
            GoodDOWN=1; score++;
          }
          if(beatX[i]<=400 && KeyLEFT==1){    /// x 落在 a區(鍵盤=左)有按到
            GoodLEFT=1; score++;
          }
          if(beatX[i]>600 && beatX[i]<=800 && KeyRIGHT==1){    /// x 落在 c區(鍵盤=右)有按到
            GoodRIGHT=1; score++;
          }
        }
      }
    }
  }
   
///如果節奏方塊掉下來時鍵盤也有按，會顯示多色邊框。 ///(把這段程式碼跟"鍵盤按下顯示的黑色方塊"交換，會顯示整個顏色)。
   if(GoodUP==1){
     fill(170,121,14); rect(590, 790, 220, 110); GoodUP=0; 
   }
   if(GoodDOWN==1){
     fill(7,77,111); rect(990, 790, 220, 110); GoodDOWN=0; 
   }
   if(GoodLEFT==1){
     fill(131,17,124); rect(390, 790, 220, 110); GoodLEFT=0; 
   }
   if(GoodRIGHT==1){
     fill(16,129,37); rect(790, 790, 220, 110); GoodRIGHT=0; 
   }
///鍵盤按下顯示的黑色方塊
   if(KeyUP==1){
     fill(0); rect(599, 799, 200, 100);
   }
   if(KeyDOWN==1){
     fill(0); rect(999, 799, 200, 100);
   }
   if(KeyLEFT==1){
     fill(0); rect(399, 799, 200, 100);
   }
   if(KeyRIGHT==1){
     fill(0); rect(799, 799, 200, 100);
   }
}
///鍵盤按下 > 畫出方塊
void keyPressed(){
    if(keyCode== ENTER){
      start=1; sound.play();
    }
    if(keyCode == UP){
      KeyUP=1;
    }
    if(keyCode == DOWN){
      KeyDOWN=1;
    }
    if(keyCode == LEFT){
      KeyLEFT=1;
    }
    if(keyCode == RIGHT){
     KeyRIGHT=1;
    }
}
///鍵盤放開 > 方塊不見
void keyReleased(){
    if(keyCode== ENTER){
      start=1;
    }
    if(keyCode == UP){
      KeyUP=0;
    }
    if(keyCode == DOWN){
      KeyDOWN=0;
    }
    if(keyCode == LEFT){
      KeyLEFT=0;
    }
    if(keyCode == RIGHT){
     KeyRIGHT=0;
    }
}
