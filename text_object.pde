class textbox
{
  float X;//X coordinate of a textbox
  float Y;//Y coordinate of a textbox
  float len;//length of a textbox
  float hei=0.1*height;//height of a textbox
  int number;//number of a textbox
  String correctAnswer;//correct answer which must be entered to the textbox
  String typing = "";//variable, which stores the data entered by user
  char condition='U'; //conditions: U-unanswered, C-correct, W-wrong
  int limit;//maximal number of symbols allowed to enter by user
  
  float Xmin;//coordinates of the fields for the choice by mouse
  float Xmax;//coordinates of the fields for the choice by mouse
  float Ymin;//coordinates of the fields for the choice by mouse
  float Ymax;//coordinates of the fields for the choice by mouse
  
  textbox(float x, float y, float l, int NUMBER, String CORRECTANSWER, int lim)//constructor
  {
    X=x;
    Y=y;
    len=l;
    number=NUMBER;
    correctAnswer=CORRECTANSWER;
    limit=lim;
  }
  
  void setValues()//setting the inicial values for coordinates of the fields
  {
  //variables
    Xmin=X-(len/2);
    Xmax=X+(len/2);
    Ymin=Y-(hei/2);
    Ymax=Y+(hei/2);
  }
  
  void textDisplay()//displaying the text in the boxes
  {
    
    if(condition=='U')//If the question is not yet answered
    {
      if(number==fg.boxnumber)//if the field is chosen by user
      {
        stroke(#34b7eb);//stroke is blue
        strokeWeight(10);
      }else
      {
        noStroke();
      }
    }else if(condition=='C')//if the answer is correct
    {
      if(number==fg.boxnumber)//if the field is chosen by user
      {
        stroke(#34b7eb);//stroke is blue
        strokeWeight(10);
      }else
      {
      stroke(#32a85a);//the stroke is green
      strokeWeight(10);
      }
    }else
    {//if the answer is incorrect or empty
      if(number==fg.boxnumber)//if the field is chosen by user
      {
        stroke(#34b7eb);//stroke is blue
        strokeWeight(10);
      }else
      {
      stroke(#a84432);//the stroke is red
      strokeWeight(10);
      }
    }
    
      String showtext=typing;//isolating the typing variable to avoid a bug
      textAlign(CENTER);
      textSize(60);
      fill(255);
      rectMode(CENTER);
      rect(X, Y,len, hei,55,55,55,55);//showing the textbox white rectangle
      fill(0);
      text(showtext,X,Y+height*0.025);//showing the textbox text, entered by user
  
  }
  
  void textInput()//keyboard input
  {
    if(number==fg.boxnumber)//if the textfield number matches with the user's choice type in that field
    {
      if(keyPressed)//if the keyboard key is pressed
      {
        if(key==TAB || key==ENTER || key==RETURN || key==ESC || key==DELETE)//protection from keys, which are not used in the input
        {
          //no action
        }else if(key==BACKSPACE)//delete the last symbol if the backspace is pressed
        {
          if(typing.length()>=1)//checking whetcher there is text in the field
          {
            char check=key;//protection from false positive
            delay(50);//protection from false positive
              if(check==key)//protection from false positive
                {
                  typing=typing.substring(0, typing.length()-1);//removing the last symbol of the string
                  delay(50);//delay to prevent removal of more than one symbol
                }
           }
         }else//if any other key is pressed
         {
            if(typing.length()<limit)//checking whether any room is left in the string (it must not exceed the limit)
            {
              char check=key;//protection from false positive
              delay(50);//protection from false positive
              if(check==key)//protection from false positive
                {
                  typing = typing + key;
                  typing=typing.toUpperCase();
                  delay(50);//protection from duplicates
                 }
             } 
          }
      }
    }
  }
  
  boolean check()//checking whether the entered answer is correct
  {
    if(typing.equals(correctAnswer.toUpperCase()))//comparing the user's responce with the correct answer
    {
      condition='C';//changing the condition to correct
      return true;
    }else
    {
      condition='W';//changing the condition to incorrect
      return false;
    }
  } 
  
}
