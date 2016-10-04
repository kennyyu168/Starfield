//your code here
Particle[] one;
void setup()
{
	//your code here
	size(640,480);
	one=new Particle[300];
	for(int i=0; i<one.length;i++)
	{
		one[i]=new NormalParticle(320,240);
	}
}
void draw()
{
	//your code here
	background(0);
	for(int i=0; i<one.length;i++)
	{
		one[i].show();
		one[i].move();
	}
}
class NormalParticle implements Particle
{
	int myColor;
	double myX, myY, dSpeed, dDirection;
	NormalParticle(int x, int y)
	{
		myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		myX=x;
		myY=y;
		dSpeed=10.115;
		dDirection=Math.random()*(2*(Math.PI));
	}
	void move()
	{
		myY+=dSpeed*Math.sin(dDirection);
		myX+=dSpeed*Math.cos(dDirection);
		if(myX<0||myY<0||myX>width||myY>height)
		{
			myX=320;
			myY=240;
		}
		if(mousePressed)
			dSpeed+=5.612;
		else 
			dSpeed=10.115;
	}
	void show()
	{
		stroke(255);
		fill(myColor);
		ellipse((float)myX,(float)myY,(int)(Math.random()*3)+10,(int)(Math.random()*3)+10);
	
	}
}
interface Particle
{
	public void show();
	public void move();
}
//class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle extends NormalParticle
{
	
}

