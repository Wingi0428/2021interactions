import processing.video.*;
Movie movie;///宣告變數movie
///GitHub Hallowen Color : #EEEEEE #FFEE4A #FFC501 #FF9600 #03001C
color [] c = {#EEEEEE, #FFEE4A, #FFC501, #FF9600, #03001C};
int now =0 ;
void setup(){
  size(640, 480);
  movie = new Movie(this, "cat.mp4");
  movie.play();
}
void draw(){
  if(movie.available()){
    movie.read();
    image(movie, 0, 0);
  }
}
void mousePressed(){
  movie.pause();
  loadPixels();
  for(int i=0;i<640*480;i++){
    float bright = brightness(pixels[i]);
    int now = 4 - int (bright/67);
    pixels[i] = c[now];
  }
  updatePixels();
}
