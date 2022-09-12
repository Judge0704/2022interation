void setup(){
  size(500,500);
  PFont font=createFont("標楷體",40);
  textFont(font);
}
void draw(){
  drawPokerCard(40,40,"黑桃4");
  drawPokerCard(80,80,"紅心4");
  drawPokerCard(120,120,"方塊5");
  drawPokerCard(160,160,"梅花5");
}
int W=10;
void drawPokerCard(int x,int y,String face){
  fill(255);
  rect(x,y,150,250,20);
  fill(#00F9FF);
  rect(x+W/2,y+W/2,150-W,250-W,20);
  fill(0);
  textSize(20);
  text(face,x+10,y+25);
}
