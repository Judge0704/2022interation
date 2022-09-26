void setup(){
  size(500,500);
}
int [][]go={
  {2,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,2,0,0,0},
  {0,0,0,1,0,0,0,0,0},
  {0,0,0,0,0,0,0,1,0},
  {0,0,0,0,0,0,1,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0}
};
void draw(){
  background(246,194,108);
  for(int i=1;i<=9;i++){
    line(50,50*i,450,50*i);
    line(50*i,50,50*i,450);
  }
  for(int x=0;x<9;x++){
    for(int y=0;y<9;y++){
      if(go[x][y]==1){
        fill(#000000);
        ellipse(50+x*50,50+y*50,40,40);
      }else if(go[x][y]==2){
        fill(#FFFFFF);
        ellipse(50+x*50,50+y*50,40,40);
      }
    }
  }
}
