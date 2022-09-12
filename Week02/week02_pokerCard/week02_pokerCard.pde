void setup(){
  size(500,500);
}
void draw(){
  drawPokerCard(100,100,"A4");
  drawPokerCard(120,120,"B4");
  drawPokerCard(140,140,"C5");
}
int W=10;
void drawPokerCard(int x,int y,String face){
  fill(255);
  rect(x,y,150,250,20);
  fill(#00F9FF);
  rect(x+W/2,y+W/2,150-W,250-W,20);
  fill(0);
  textSize(40);
  text(face,x+10,y+40);
}
