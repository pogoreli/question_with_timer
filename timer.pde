float time=22.5; //22.5 approximately equal to 60 seconds
float framesLeft;
float framesTotal;

void timersetup()
{
  delay(20);
  framesLeft=time*frameRate;
  framesTotal=time*frameRate;
}

void timerCount()
{
 if(framesLeft>0)
 {
 framesLeft--; 
 }else
 {
   timesUp();
 }
}

int scoreCounter()
{
  int s=int(map(framesLeft,0,framesTotal,0,100));
  delay(10);
  return s;  
}

void timerVisualisation()
{
 strokeWeight(1);
 stroke(0);
 rectMode(CORNER);
 fill(255);
 float Xsize=width/4;
 float Ysize=height/25;
 float Xtimer=0.37*width;
 float Ytimer=0.015*height;
 rect(Xtimer, Ytimer, Xsize, Ysize);
 float timeLeft=map(framesLeft,0,framesTotal,0,Xsize);
 
 int colour=int(map(framesLeft,0,framesTotal,0,255));

 if(timeLeft>0)
 {
 fill(255-colour,20,colour);
 noStroke();
 rect(Xtimer,Ytimer,timeLeft,Ysize);
 }
}

void timesUp()
{
  textSize(20);
  fill(255,0,0);
  textMode(CENTER);
  text("TIME IS UP!", 0.5*width, 0.0445*height);
}
