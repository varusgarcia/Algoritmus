int getX = 0;
int getY = 0;
float getXY = 0;
float ellipseRandom = 0;
int transparency = 50;

void setup(){
  
size(7000,7000);
background(0);

ellipseRandom = random(500,4000);

noStroke();

fill(255, transparency);
ellipse(3500,3500,7000,7000);

ellipse(random(2000,4000),random(2000,4000),ellipseRandom,ellipseRandom);

ellipse(random(3000,5000),random(3000,5000),3000,3000);

pushMatrix();
translate(random(1000,2000),random(1000,2000));
triangle(0,0,4000,500,3000,3000);
popMatrix();

pushMatrix();
translate(random(2000,4000),random(3000,4000));
rotate(random(0,360));
rectMode(CENTER);
rect(0,0,2000,2000);
rectMode(CORNER);
popMatrix();

pushMatrix();
translate(random(2000,4000),random(3000,4000));
rotate(random(0,360));
rect(0,0,random(1500,2000),random(500,1500));
popMatrix();

pushMatrix();
translate(random(2000,4000),random(3000,4000));
rotate(random(0,360));
rect(0,0,random(1500,200),random(500,1500));
popMatrix();

triangle(random(4000,5500),random(3000,4000),random(3000,3500),random(4000,5000),random(3500,4000),random(1000,1500));

ellipse(random(1000,4000),random(3000,4000),100,100);

ellipse(random(2000,4000),random(3000,5000),100,100);

pushMatrix();
ellipseMode(CENTER);
translate(3500,3500);
rotate(random(0,360));
ellipse(500,500,200,200);
ellipseMode(CORNER);
popMatrix();



frameRate(10000);




for (getX = 0; getX <= 7000; getX++){
  for (getY = 0; getY <= 7000; getY++){
    getXY =  get(getX,getY);

  if(getXY == -16777216 || getXY == -10855846 || getXY == -7039852 || getXY == -4539718){
   fill(255);
   rect(getX,getY,1,1);
 }
 if(getXY == -13487566 || getXY == -8750470 || getXY == -5658199 || getXY == -3618616){
   fill(0);
   rect(getX,getY,1,1);
    }
  }

}

saveFrame("EingabeAusgabe.png");

}

