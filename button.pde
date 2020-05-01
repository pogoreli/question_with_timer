void submitButton()
{
  fill(255,0,0);//text on top of the screen
  textSize(40);
  textAlign(CENTER);
  text("FILL THE GAPS",width/2,height/6);
  
  float buttonXmin;//defining the coordinates of the button
  float buttonXmax;//defining the coordinates of the button
  float buttonYmin;//defining the coordinates of the button
  float buttonYmax;//defining the coordinates of the button
  
  buttonXmin=(width/2)-((0.3*width)/2);//defining the coordinates of the button
  buttonXmax=(width/2)+((0.3*width)/2);//defining the coordinates of the button
  buttonYmin=(height*0.8)-((0.08*height)/2);//defining the coordinates of the button
  buttonYmax=(height*0.8)+((0.08*height)/2);//defining the coordinates of the button
  
  noStroke();
  fill(255,0,0);//button color
  rectMode(CENTER);
  
  rect(width/2, height*0.8,0.3*width, 0.08*height,55,55,55,55);//creating the rectangle for the button
  fill(255);
  text("SUBMIT",width/2,height*0.815);
  
  if(mousePressed)//checking whether the button was pressed
  {
    if(mouseX>=buttonXmin && mouseX<=buttonXmax && mouseY>=buttonYmin && mouseY<=buttonYmax)//filter for false positive
    {
      delay(50);
      if(mouseX>=buttonXmin && mouseX<=buttonXmax && mouseY>=buttonYmin && mouseY<=buttonYmax)//filter for false positive
      {
      buttonAction();//calling the button action
      }
    }
  }

  
}


void buttonAction()
{
  boolean[] res=new boolean[t.length];//creating an array for results
  
  for(int i=0; i<t.length; i++)
    {
      res[i]=t[i].check();//getting the results from the object
      
    }
    
    boolean result=true;//checking whether every textbox answered correctly (variable)
    
    for(int i=0; i<t.length; i++)//checking whether every textbox answered correctly
    {
      if(!res[i])
      {
        result=false;
      }
    }
      
    if(result)//if all of them are correct
    {
      if(!done)//if the question have not been answered yer
      {
      done=true;//marking that the question was already answered
      correct='C';//changing the mode to correct
      score=score+timer1.scoreCounter();//adding the score, dependant on timer
      }
    }else
    {
      if(!done)//if the question have not been answered yer
      {
         correct='W';//condition is incorrect
         attempt++;//adding one more attempt
      }
    }
    boxnumber=0; //reseting the choice of an active textbox
}
