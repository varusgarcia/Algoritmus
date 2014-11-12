

int numEllipses = 20;
float [] rade = new float [numEllipses];
float[] Xe = new float[numEllipses];
float[] Ye = new float[numEllipses];
float[] XSe = new float[numEllipses];
float[] YSe = new float[numEllipses];
float[] XDe = new float[numEllipses];
float[] YDe = new float[numEllipses];


void setup(){
  ellipseMode(CENTER);
  size (200,200);
  noSmooth();
  noStroke();
  


for (int i= 1; i<= numEllipses; i++){
  rade[i-1] = random(10,50);
}




for (int i= 1; i<= numEllipses; i++){
  Xe[i-1] = random(0 + rade[i-1]*2, width - rade[i-1]*2);
}

for (int i= 1; i<= numEllipses; i++){
  Ye[i-1] = random(0+ rade[i-1]*2, width - rade[i-1]*2);
}

for (int i= 1; i<= numEllipses; i++){
  XSe[i-1] = random(0.1,3);
}

for (int i= 1; i<= numEllipses; i++){
  YSe[i-1] = random(0.1,5);
}

int Dx;
int Dx1;
int Dy;
int Dy1;
for (int i= 1; i<= numEllipses; i++){
  Dx = floor(random(1,0));
  Dx1 = 0;
  if(Dx == 1){
    Dx1 = 1;
  }
  else{
    Dx1 = -1;
  }
  XDe[i-1] = Dx1;
}

for (int i= 1; i<= numEllipses; i++){
  Dy= floor(random(1,0));
  Dy1 = 0;
  if(Dy == 1){
    Dy1 = 1;
  }
  else{
    Dy1 = -1;
  }
  YDe[i-1] = Dy1;
}

}

void draw(){
  background(0);
  
  
  for(int i = 1; i <= numEllipses ; i++){
    Xe[i-1] = Xe[i-1]+ (XSe[i-1] * XDe[i-1]);
    Ye[i-1] = Ye[i-1] + (YSe[i-1] * YDe[i-1]);
  }
  for(int i = 1; i <= numEllipses; i++){
    if(Xe[i-1] > width-rade[i-1]/2 || Xe[i-1] < rade[i-1]/2){
      XDe[i-1]  = XDe[i-1]* -1;
    }
    if(Ye[i-1] > height-rade[i-1]/2 || Ye[i-1] < rade[i-1]/2){
      YDe[i-1] = YDe[i-1] *  -1;
    }
  }
  fill(255,50);
  for(int i = 1; i <= numEllipses; i++){
    ellipse(Xe[i-1],Ye[i-1],rade[i-1],rade[i-1]);
   
  }
  
    for (int getX = 0; getX <= width; getX++){
    for (int getY = 0; getY <= height; getY++){
    int getXY =  get(getX,getY);

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
  
  saveFrame("frame####.png");
}
    
  

  
  
  
  
