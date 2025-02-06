public void setup()
{
  size(800,800);
  det(10,20,20);
  sierpinski(200,200,153);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len){
if(len <= 8){
det(len,x,y);
}
else{
sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);
}
}

public void det(int side, int x, int y){
triangle((float)x,(float)y,(float)x+side/2,(float)y-(float)Math.sqrt(side*side-side*side/4),(float)x+side,(float)y);
}
