int getX = 0;
int getY = 0;
float getXY = 0;
float ellipseRandom = 0;
int transparency = 50;

void setup(){
  
size(700,700);
noSmooth();
}

void draw(){
  
  background(0);



ellipseRandom = random(50,400);

noStroke();

fill(255, transparency);
ellipse(0,0,700,700);

ellipse(random(200,400),random(200,400),ellipseRandom,ellipseRandom);

ellipse(random(300,500),random(300,500),300,300);

pushMatrix();
translate(random(100,200),random(100,200));
triangle(0,0,400,50,300,300);
popMatrix();

pushMatrix();
translate(random(200,400),random(300,400));
rotate(random(0,360));
rectMode(CENTER);
rect(0,0,200,200);
rectMode(CORNER);
popMatrix();

pushMatrix();
translate(random(200,400),random(300,400));
rotate(random(0,360));
rect(0,0,random(150,200),random(50,150));
popMatrix();

pushMatrix();
translate(random(200,400),random(300,400));
rotate(random(0,360));
rect(0,0,random(150,20),random(50,150));
popMatrix();

triangle(random(400,550),random(300,400),random(300,350),random(400,500),random(350,400),random(100,150));

ellipse(random(100,400),random(300,400),10,10);

ellipse(random(200,400),random(300,500),10,10);

pushMatrix();
ellipseMode(CENTER);
translate(350,350);
rotate(random(0,360));
ellipse(50,50,20,20);
ellipseMode(CORNER);
popMatrix();



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
}
