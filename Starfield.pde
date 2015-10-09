//your code here
Particle [] lotsOfNormalP;
void setup()
{
	//your code here
	size(600,600);
    lotsOfNormalP = new NormalParticle[365];
    for(int i = 0; i < lotsOfNormalP.length; i ++)
    {
    	lotsOfNormalP[1] = new OddballParticle();
    	lotsOfNormalP[i] = new NormalParticle();
    }
}
void draw()
{
	//your code here
	background(0);
	for(int i = 0; i < lotsOfNormalP.length; i++)
	{
		lotsOfNormalP[i].show();
		lotsOfNormalP[i].move();		
	}

}
class NormalParticle implements Particle
{
	//your code here
	double x;
	double y;
	int particleColor;
	double angle;
	double speed;
	NormalParticle()
	{
		x = 300;
		y = 300;
		particleColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		angle = Math.random()*2*Math.PI;
		speed = Math.random()*10;
	}
	public void move()
	{
		x = x + Math.cos(angle)*speed;
		y = y + Math.sin(angle)*speed;
	}
	public void show()
	{
		noStroke();
		fill(particleColor);
		ellipse((float)x,(float)y,15,15);
	}

}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{

	double x;
	double y;
	int particleColor;
	double angle;
	double speed;
	OddballParticle()
	{
		x = 300;
		y = 300;
		particleColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		angle = Math.random()*2*Math.PI;
		speed = Math.random()*10;
	}
	public void move()
	{
		x = x + (Math.random()*3)-1;
		y = y + (Math.random()*3)-1;
	}
	public void show()
	{
		noStroke();
		fill(particleColor);
		ellipse((float)x,(float)y,20,20);
	}	
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

