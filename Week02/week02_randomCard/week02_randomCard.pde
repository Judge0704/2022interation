void setup(){
  size(500,500);
  PFont font=createFont("標楷體",40);
  textFont(font);
  String []flower={"黑桃","梅花","方塊","紅心"};
  face1=flower[int(random(4))]+int(random(13)+1);
  face2=flower[int(random(4))]+int(random(13)+1);
  face3=flower[int(random(4))]+int(random(13)+1);
  face4=flower[int(random(4))]+int(random(13)+1);
}
String face1,face2,face3,face4;
void draw(){
  drawPokerCard(40,40,face1);
  drawPokerCard(80,80,face2);
  drawPokerCard(120,120,face3);
  drawPokerCard(160,160,face4);
}
int W=10;

void drawPokerCard(int x,int y,String face){
  fill(255);
  rect(x,y,150,250,20);
  fill(#00F9FF);
  rect(x+W/2,y+W/2,150-W,250-W,20);
  if(face.indexOf("黑桃")==1 && face.indexOf("梅花")==1)fill(0);
  else fill(#FF0000);
  textSize(20);
  text(face,x+10,y+25);
}
