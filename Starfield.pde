//your code here
Particle [] groupParticle;
void setup()
{
	//your code here
	size(600,600);
    groupParticle = new Particle[500];
    for(int i = 0; i < groupParticle.length; i ++)
    {
    	groupParticle[i] = new NormalParticle();
    }
    	groupParticle[0] = new OddballParticle();
    	groupParticle[1] = new JumboParticle();
}
void draw()
{
	//your code here
	background(0);
	for(int i = 0; i < groupParticle.length; i++)
	{
		groupParticle[i].show();
		groupParticle[i].move();		
	}

}

class NormalParticle implements Particle
{
	//your code here
	double x;
	double y;
	double size;
	int particleColor;
	double angle;
	double speed;
	NormalParticle()
	{
		x = 300;
		y = 300;
		size = Math.random()*7+3;
		particleColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		angle = Math.random()*2*Math.PI;
		speed = Math.random()*2+1;
	}
	public void move()
	{
		if(x > width || x < 0 || y > height || y < 0){
			x = mouseX;
			y = mouseY;
		}
		if( mousePressed )
		{
			x = x - Math.cos(angle)*speed;
			y = y - Math.sin(angle)*speed;
		}
		else
		{
			x = x + Math.cos(angle)*speed;
			y = y + Math.sin(angle)*speed;		
		}
	}
	public void show()
	{
		noStroke();
		fill(particleColor);
		ellipse((float)x,(float)y,(float)size,(float)size);
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
	OddballParticle()
	{
		x = 300;
		y = 300;
		particleColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		angle = Math.random()*2*Math.PI;
	}
	public void move()
	{
		x = x + (int)(Math.random()*9)-4;
		y = y + (int)(Math.random()*9)-4;
	}
	public void show()
	{
		noStroke();
		fill(particleColor);
		ellipse((float)x,(float)y,20,20);
	}	
	//your code here
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	public void show()
	{
		noStroke();
		fill(particleColor);
		ellipse((float)x,(float)y,50,50);		
	}

}

