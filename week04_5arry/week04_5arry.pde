int [][]c = {
  {1,0,0},
  {0,1,0},
  {0,0,1}
};
void setup(){
  size(300,300);
}
void draw(){
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      if(c[i][j]==0)fill(128);
      else fill(255,0,0);  
      rect(j*100, i*100, 100, 100);
    }
  }
}
