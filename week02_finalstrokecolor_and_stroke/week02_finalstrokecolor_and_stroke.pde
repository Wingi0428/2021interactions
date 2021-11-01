void setup(){
  size(500, 500);
    background(0,0,0);
    rect(0, 50, 50, 50);ellipse(25, 25+50 , 1, 1);
    rect(0, 100, 50, 50);ellipse(25, 25+100, 2, 1);
    rect(0, 150, 50, 50);ellipse(25, 25+150, 3, 1);
    rect(0, 200, 50, 50);ellipse(25, 25+200, 4, 1);
    rect(0, 250, 50, 50);ellipse(25, 25+250, 5, 1);
    rect(0, 300, 50, 50);ellipse(25, 25+300, 6, 1);
    rect(0, 350, 50, 50);ellipse(25, 25+350, 7, 1);
    rect(0, 400, 50, 50);ellipse(25, 25+400, 8, 1);
    fill(#F05757);rect(450, 50, 50, 50);
    fill(#EA942B);rect(450, 100, 50, 50);
    fill(#F5E428);rect(450, 150, 50, 50);
    fill(#7AD61A);rect(450, 200, 50, 50);
    fill(#1AD6BE);rect(450, 250, 50, 50);
    fill(#1AABD6);rect(450, 300, 50, 50);
    fill(#704ACB);rect(450, 350, 50, 50);
    fill(#BA6AF5);rect(450, 400, 50, 50);
}
void draw(){
  if(mousePressed){
    if(mouseX<50){
        if(mouseY>1*50 && mouseY<1*50+50)  strokeWeight(1);
        if(mouseY>2*50 && mouseY<2*50+50)  strokeWeight(2);
        if(mouseY>3*50 && mouseY<3*50+50)  strokeWeight(3);
        if(mouseY>4*50 && mouseY<4*50+50)  strokeWeight(4);
        if(mouseY>5*50 && mouseY<5*50+50)  strokeWeight(5);
        if(mouseY>6*50 && mouseY<6*50+50)  strokeWeight(6);
        if(mouseY>7*50 && mouseY<7*50+50)  strokeWeight(7);
        if(mouseY>8*50 && mouseY<8*50+50)  strokeWeight(8);
    }else if(mouseX>450){
        if(mouseY>1*50 && mouseY<1*50+50)  stroke(#F05757);
        if(mouseY>2*50 && mouseY<2*50+50)  stroke(#EA942B);
        if(mouseY>3*50 && mouseY<3*50+50)  stroke(#F5E428);
        if(mouseY>4*50 && mouseY<4*50+50)  stroke(#7AD61A);
        if(mouseY>5*50 && mouseY<5*50+50)  stroke(#1AD6BE);
        if(mouseY>6*50 && mouseY<6*50+50)  stroke(#1AABD6);
        if(mouseY>7*50 && mouseY<7*50+50)  stroke(#704ACB);
        if(mouseY>8*50 && mouseY<8*50+50)  stroke(#BA6AF5);
    }
    else line(mouseX, mouseY, pmouseX, pmouseY); 
  }
}
