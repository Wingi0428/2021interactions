void setup(){
  size(500,500);
}
void draw(){
  background(200,191,231);
  for(float a=0;a < 360 ;a+=5){
      float x = 250 + mouseX * cos( radians(a) );
      float y = 250 + mouseY * sin( radians(a) );
      noFill();
      strokeWeight(5);
      stroke(mouseX, mouseX, 255);
      ellipse(x, y, mouseY, mouseY);
  }
}
