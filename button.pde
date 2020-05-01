void submitButton()
{
  
  
  
  fill(255,0,0);
  textSize(40);
  textAlign(CENTER);
  text("FILL THE GAPS",width/2,height/6);
  
  noStroke();
  fill(255,0,0);
  rectMode(CENTER);
  
  float buttonXmin;
  float buttonXmax;
  float buttonYmin;
  float buttonYmax;
  
  buttonXmin=(width/2)-((0.3*width)/2);
  buttonXmax=(width/2)+((0.3*width)/2);
  buttonYmin=(height*0.8)-((0.08*height)/2);
  buttonYmax=(height*0.8)+((0.08*height)/2);
  
  rect(width/2, height*0.8,0.3*width, 0.08*height,55,55,55,55);
  fill(255);
  text("SUBMIT",width/2,height*0.815);
  
  if(mousePressed)
  {
    if(mouseX>=buttonXmin && mouseX<=buttonXmax && mouseY>=buttonYmin && mouseY<=buttonYmax)
    {
      delay(50);
      if(mouseX>=buttonXmin && mouseX<=buttonXmax && mouseY>=buttonYmin && mouseY<=buttonYmax)
      {
      buttonAction();
      }
    }
  }

  
}
void buttonAction()
{
  boolean[] res=new boolean[t.length];
  
  for(int i=0; i<t.length; i++)
    {
      res[i]=t[i].check();
      
    }
    
    boolean result=true;
    
    for(int i=0; i<t.length; i++)
    {
      if(!res[i])
      {
        result=false;
      }
    }
      
    if(result)
    {
      if(!done)
      {
      done=true;
      correct='C';
      score=score+scoreCounter();
      }
    }else
    {
     correct='W';
     attempt++;
    }
    boxnumber=0;
    //Here should be the call for the next function!!!!!!!!!!!!!!!!!!!
  
}
