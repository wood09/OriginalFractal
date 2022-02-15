public void setup()
{
  background(0);
  size(1000,1000);
}
public void draw()
{
  fractal(500,500,800,800,253,64,52);
}

public void fractal(int x, int y, int len, int wid, int r, int g, int b) 
{
  fill(r,g,b);
  ellipse(x,y,len,wid);
  if(len < 10){
    ellipse(x,y,len,wid);
  }else{
    fractal(x+80,y,len/2,wid/2,r-10,g+10,b);
    fractal(x-80,y,len/2,wid/2,r-5,g+20,b);
  }
}
