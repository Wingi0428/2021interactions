void setup(){
  size(500,500);
  fill(255,0,0); rect(0,0,100,100);//紅色
  fill(0,255,0); rect(0,100, 100,100);//綠色
}
void draw(){
  if(mousePressed){
    if(mouseX<100){
      if(mouseY<100) stroke(255,0,0);//紅色
      else if(mouseY<200) stroke(0,255,0);//綠色
    }else line(mouseX,mouseY, pmouseX,pmouseY);
  } 
}
