public void setup(){
  size(800,800);
  rectMode(CENTER);
}
public void draw(){
  background(50,50,50);
  fractal(400,400,400,200,10);
}
public void fractal(int x,int y, int wid, int len,int col){
fill(col/2,col*2,col*3);
if(len>=50){
 fill(col*5,col,col); 
}
    rect(x,y,wid,len);
  if(wid>10&&len>10){
    fractal(x,y+(len*2)/3,(wid*2)/3,(len*2)/3,col*3/2);
     fractal(x,y-(len*2)/3,(wid*2)/3,(len*2)/3,col*3/2);
      fractal(x+(len*2)/3,y+(len*2)/3,(wid*2)/3,(len*2)/3,col*3/2);
       fractal(x-(len*2)/3,y+(len*2)/3,(wid*2)/3,(len*2)/3,col*3/2);


  }
}
