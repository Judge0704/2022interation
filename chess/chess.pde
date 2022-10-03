int [][]board={
  {4, 5, 3, 2, 1, 2, 3, 5, 4},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0, 6, 0, 0, 0, 0, 0, 6, 0},
  {7, 0, 7, 0, 7, 0, 7, 0, 7},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {-7, 0, -7, 0, -7, 0, -7, 0, -7},
  {0, -6, 0, 0, 0, 0, 0, -6, 0},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {-4, -5, -3, -2, -1, -2, -3, -5, -4}
};//1:將 2:士 3:象 4:車 5:馬 6:砲 7:兵
String []name={"將", "士", "象", "車", "馬", "包", "卒"};
String []name2={"帥", "仕", "相", "俥", "傌", "炮", "兵"};
void setup() {
  size(500, 550);
  PFont font =createFont("標楷體", 25);
  textFont(font);
  textAlign(CENTER, CENTER);
  
  line(200, 50, 300, 150);
  line(300, 50, 200, 150);
  line(200, 400, 300, 500);
  line(300, 400, 200, 500);
}
void draw() {
  background(#AD7000);
  for (int x=50; x<=450; x+=50) {
    line(x, 50, x, 250);
    line(x, 300, x, 500);
  }
  for (int y=50; y<=500; y+=50) {
    line(50, y, 450, y);
  }
  for (int i=0; i<10; i++) {
    for (int j=0; j<9; j++) {
      int id=board[i][j];
      if (id>0) {
        fill(255);
        ellipse(50+j*50, 50+i*50, 40, 40);
        fill(0);
        ellipse(50+j*50, 50+i*50, 35, 35);
        fill(255);
        ellipse(50+j*50, 50+i*50, 32, 32);
        fill(0);
        text(name[id-1], 50+j*50, 50+i*50);
      } else if (id<0) {
        fill(255);
        ellipse(50+j*50, 50+i*50, 40, 40);
        fill(255,0,0);
        ellipse(50+j*50, 50+i*50, 35, 35);
        fill(255);
        ellipse(50+j*50, 50+i*50, 30, 30);
        fill(255, 0, 0);
        text(name2[-id-1], 50+j*50, 50+i*50-3);
      }
    }
  }
  if(handChess!=0)ellipse(mouseX,mouseY,40,40);
}
int handChess=0;
void mousePressed(){
  for(int i=0;i<10;i++){
    for(int j=0;j<9;j++){
      if(dist(mouseX,mouseY,50+j*50,50+i*50)<20){
        handChess=board[i][j];
        board[i][j]=0;
      }
    }
  }
}
void mouseReleased(){
  int i=(mouseY+25-50)/50;
  int j=(mouseX+25-50)/50;
  board[i][j]=handChess;
  handChess=0;
}
