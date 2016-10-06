//your code here
Particle[] one;
void setup()
{
	//your code here
	size(640,480);
	one=new Particle[300];
	for(int i=0; i<one.length;i++)
	{
		one[i]=new NormalParticle();
	}
	one[10]=new JumboParticle();
	one[67]=new JumboParticle();
	one[20]=new OddballParticle(320,240);
}
void draw()
{
	//your code here
	if(mousePressed)
		background(255);
	else
		background(0);

	for(int i=0; i<one.length;i++)
	{
		one[i].show();
		one[i].move();
	}
	stroke(0);
	strokeWeight(3);
	fill(50,50,50);
	beginShape();
	vertex(290,210);
	vertex(310,210);
	vertex(320,190);
	vertex(330,210);
	vertex(350,210);
	vertex(390,270);
	vertex(250,270);
	endShape(CLOSE);
	fill(62,207,175);
	rect(295,230,50,10);
}
class NormalParticle implements Particle
{
	int myColor;
	double myX, myY, dSpeed, dDirection;
	NormalParticle()
	{
		myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		myX=320;
		myY=240;
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
			myColor2=color(255);
		}
		else
		{ 
			oSpeed=5.1243;
			myColor2=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		}

	}
	public void show()
	{
		fill(myColor2);
		rect((float)myX2,(float)myY2,20,20);
	}
}
class JumboParticle extends NormalParticle
{
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,50,50);
	}
}

