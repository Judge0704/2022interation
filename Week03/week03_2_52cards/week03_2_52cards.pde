void setup(){
  size(700,700); 
  PFont font=createFont("標楷體",10);
  textFont(font);
}
String []faces={"黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A",
                "黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A",
                "黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A",
                "黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A","黑桃A"};
void draw(){
  background(#FFFFF2);
  for(int i=0;i<52;i++){
    int x=(i%10)*60;
    int y=int(i/10)*120;
    fill(255);rect(x,y,60,120);
    fill(0);text(faces[i],x+20,y+60);
  }
}
