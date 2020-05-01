class fill_the_gap_question
{
  int questionNumber;
  int boxnumber=1;//variable, which is choosing which textbox to use
  int attempt;//variable, which counts the attempts
  char correct='U';//U/C/W variable which stores the condition of the answer
  boolean done=false;//variable for checking whether the question was already answered
  textbox[][] t=new textbox[2][4];//creating textbox objects
  timer timer1=new timer(60);//creating a timer
  
  fill_the_gap_question(int qn)
  {
  setFillTheBlank();
  questionNumber=qn;
  }
  
  
  void correct()//action which is happening if the answer is correct/incorrect
{
  if(correct=='C')
  {
    fill(#32a85a);
    textSize(40);
    textAlign(CENTER);
    text("that's correct!",width/2,height/5);
  }else if(correct=='W')
  {
    fill(#a84432);
    textSize(40);
    textAlign(CENTER);
    text("That's wrong! try again!",width/2,height/5);
  }
}

void drawFillTheBlank()//void draw for fill the blank
{
  switching();//choosing the text field
  back();//background
  user();//displaying username
  score();//displaying score
  submitButton();//submitting the assigment
  for(int i=0; i<t[questionNumber].length; i++)
  {
  t[0][i].textDisplay();
  t[0][i].textInput();
  }
  correct();
  timer1.timerVisualisation();
  timer1.timerCount();
}

void setFillTheBlank()//void setup for fill the blank
{
  t[0][0]=new textbox(width*0.5, height*0.3,0.6*width, 1,"IVAN",12);
  t[0][1]=new textbox(width*0.5, height*0.5,0.3*width, 2,"ALEX",6);
  t[0][2]=new textbox(width*0.2, height*0.6,0.3*width, 3,"KHALID",6);
  t[0][3]=new textbox(width*0.6, height*0.7,0.3*width, 4,"AI",6);
  
  for(int i=0; i<t[questionNumber].length; i++)
  {
  t[0][i].setValues();
  }
  
  //timersetup();
}

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
  boolean[] res=new boolean[t[questionNumber].length];//creating an array for results
  
  for(int i=0; i<t[questionNumber].length; i++)
    {
      res[i]=t[0][i].check();//getting the results from the object
      
    }
    
    boolean result=true;//checking whether every textbox answered correctly (variable)
    
    for(int i=0; i<t[questionNumber].length; i++)//checking whether every textbox answered correctly
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

void switching()//checking what texbox was chosen by user
{
  if(mousePressed)
  {
    for(int i=0; i<t[questionNumber].length; i++)
    {
      if(mouseX>=t[0][i].Xmin && mouseX<=t[0][i].Xmax && mouseY>=t[0][i].Ymin && mouseY<=t[0][i].Ymax)
      {
       boxnumber=i+1;
      }
  }
  }
}
}
