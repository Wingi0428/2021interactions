import ddf.minim.*;
Minim minim;
AudioPlayer doo, re, mi, fa, so;
void setup()
{
  size(500, 100);
  minim = new Minim(this);
  doo = minim.loadFile("do.wav");
  re = minim.loadFile("re.wav");
  mi = minim.loadFile("mi.wav");
  fa = minim.loadFile("fa.wav");
  so = minim.loadFile("so.wav");
}
void keyPressed(){
  if(key=='1'){doo.rewind();doo.play();}  
  if(key=='2'){re.rewind();re.play();} 
  if(key=='3'){mi.rewind();mi.play();} 
  if(key=='4'){fa.rewind();fa.play();} 
  if(key=='5'){so.rewind();so.play();} 
 }
 void keyReleased(){
  if(key=='1') down[0]=0;
  if(key=='2') down[1]=0;
  if(key=='3') down[2]=0;
  if(key=='4') down[3]=0;
  if(key=='5') down[4]=0;
 }
 int []down = {0,0,0,0,0};
 void draw(){
     background(255);
     for(int i=0;i<5;i++){
       if(down[i]==0)fill(255);
       else fill(255, 0, 0);
       rect(i*100, 0, 100, 100);
     }
 }
