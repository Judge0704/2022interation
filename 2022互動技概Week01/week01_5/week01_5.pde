void setup() {
  size(500,500);
  background(#FFFFF2);
  stroke(255,0,0);//pen's color
}


void draw() {
  if(mousePressed){
  line(mouseX,mouseY,pmouseX,pmouseY);
  }  
}
void keyPressed(){
  if(key=='1')stroke(#FFFFFF);
  if(key=='2')stroke(#FF8D00);
  if(key=='3')stroke(#FFF700);
  if(key=='4')stroke(#21FF00);
  if(key=='5')stroke(#00E3FF);
  if(key=='6')stroke(#2500FF);
  if(key=='7')stroke(#CF00FF);
}
