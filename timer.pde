class timer
{
  boolean timeisup=false;
  
  float time; //22.5 approximately equal to 60 seconds
  float framesLeft;
  float framesTotal;
  
  timer(float t)
  {
    time=(t/60)*22.5;
    timersetup();
  }
  
  void timersetup()
  {
    delay(20);
    framesLeft=time*frameRate;
    framesTotal=time*frameRate;
  }
  
  void timerCount()
  {
   if(framesLeft>0 && !fg[fg_question].done)
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
   rect(Xtimer, Ytimer, Xsize, Ysize,10,10,10,10);
   float timeLeft=map(framesLeft,0,framesTotal,0,Xsize);
   
   int colour=int(map(framesLeft,0,framesTotal,0,255));
  
   if(timeLeft>0)
     {
       fill(255-colour,20,colour);
       noStroke();
       int corners=10;
       rect(Xtimer,Ytimer,timeLeft,Ysize,10,corners,corners,10);
     }
  }
  
  void timesUp()
  {
    if(!fg[fg_question].done)
      {
        textSize(20);
        fill(255,0,0);
        textMode(CENTER);
        text("TIME IS UP!", 0.5*width, 0.0445*height);
        timeisup=true;
      }
  }
}
