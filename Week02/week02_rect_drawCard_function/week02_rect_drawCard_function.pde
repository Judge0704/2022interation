void setup(){
  size(500,500);
}
void draw(){
  drawCard(100,100);
  drawCard(120,120);
  drawCard(140,140);
}
int W=10;
void drawCard(int x,int y){
  fill(255);
  rect(x,y,150,250,20);
  fill(#00F9FF);
  rect(x+W/2,y+W/2,150-W,250-W,20);
}
