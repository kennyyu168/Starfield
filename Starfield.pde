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
	//one[2]=new JumboParticle(320,240);
	one[20]=new OddballParticle(100,370);

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
	public void move()
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
	public void show()
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
class OddballParticle implements Particle
{
	int myColor2;
	double myX2, myY2, oSpeed, oDirection;
	OddballParticle(int x, int y)
	{
		myColor2=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		myX2=x;
		myY2=y;
		oSpeed=5.1243;
		oDirection=Math.random()*(2*(Math.PI));
	}
	public void move()
	{
		myX2+=oSpeed*Math.cos(oDirection);
		myY2+=oSpeed*Math.sin(oDirection*0.23);
		if(myX2<0||myY2<0||myX2>width||myY2>height)
		{
			myX2=560;
			myY2=124;
		}
		if(mousePressed)
		{
			oSpeed+=2.1554;
			background(255);
		}
		else
		{ 
			oSpeed=5.1243;
			background(0);
		}

	}
	public void show()
	{
		fill(myColor2);
		rect((float)myX2,(float)myY2,20,20);
	}
}
//class JumboParticle extends NormalParticle
//{

	//JumboParticle(int x, int y)
	//public void show()
	//{
		//ellipse(myX,myY,100,100);
	//}
//}

