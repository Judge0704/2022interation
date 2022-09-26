void setup(){
  size(250,500);
  fill(#000000);
}
float x=200, y=200;
float vx=3, vy=-3.5;
float upboardX=85,upboardY=10,upboardW=80,upboardH=20;
float boardX=mouseX,boardY=450,boardW=100,boardH=20;
void draw(){
  background(#FFFFFF);
  rect(upboardX,upboardY,upboardW,upboardH,100);//上方動態島
  boardX=mouseX-boardW/2;
  fill(#000000);
  rect(boardX,boardY,boardW,boardH,100);//玩家
  fill(0,0,0);
  ellipse(x,y,17,17);
  x+=vx;y+=vy;
  if(x>240)vx=-vx;
  if(y<10)vy=-vy;
  if(x<10)vx=-vx;
  if(y>boardY && y<boardY+boardH && x>boardX && x<boardX+boardW){
    vy=-vy;
    vx+=(mouseX-pmouseX)/2;
  }
}
