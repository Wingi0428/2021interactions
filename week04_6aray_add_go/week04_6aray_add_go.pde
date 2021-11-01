//2維陣列
int [][]go = {
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0}
};
void setup(){
  size(500,500);
}
void draw(){
  background(255,236,180);
  for(int i=0;i<9;i++){
    line(50+50*i, 50, 50+50*i, 450);
    line(50, 50+50*i, 450, 50+50*i);
  }
  for(int i=0;i<9;i++){
    for(int j=0;j<9;j++){
      if(go[i][j]==1){
        int x=50+50*i,y=50+50*i;
        fill(255);ellipse(x,y,40,40);
      }
    }
  }
}