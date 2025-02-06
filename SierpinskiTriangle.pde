background(255,255,255);
sierpinski(200,200,153,b);
}
public void mouseDragged()//optional
{
 b++;
}
public void mouseMoved()//optional
{
 b--;
 if(b <=1){b = 1;}
}
public void sierpinski(int x, int y, int len, int a){
if(len <= a){
det(len,x,y);
}
else{
sierpinski(x,y,len/2,a);
sierpinski(x+len/2,y,len/2,a);
sierpinski(x+len/4,y-len/2,len/2,a);
}
}

public void det(int side, int x, int y){
triangle((float)x,(float)y,(float)x+side/2,(float)y-(float)Math.sqrt(side*side-side*side/4),(float)x+side,(float)y);
}
