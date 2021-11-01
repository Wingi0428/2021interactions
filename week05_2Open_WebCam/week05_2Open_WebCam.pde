import processing.video.*;

Capture cam;

void setup() {
  size(640, 480);
  cam = new Capture(this, Capture.list()[0]);
  cam.start();
}
void draw(){
  if(cam.available()){
  cam.read();
  }
  image(cam,0,0);
}
