class textbox
{
  float X;
  float Y;
  float len;
  float hei=0.1*height;
  int number;
  String correctAnswer;
  String typing = "";
  char condition='U'; //conditions: U-unanswered, C-correct, W-wrong
  int limit;
  
  float Xmin;
  float Xmax;
  float Ymin;
  float Ymax;
  
  textbox(float x, float y, float l, int NUMBER, String CORRECTANSWER, int lim)
  {
    X=x;
    Y=y;
    len=l;
    number=NUMBER;
    correctAnswer=CORRECTANSWER;
    limit=lim;
  }
  
  void setValues()
  {
  //variables
    Xmin=X-(len/2);
    Xmax=X+(len/2);
    Ymin=Y-(hei/2);
    Ymax=Y+(hei/2);
  }
  
  void textDisplay()
  {
    
    if(condition=='U')
    {
      if(number==boxnumber)
      {
        stroke(#34b7eb);
        strokeWeight(10);
      }else
      {
      noStroke();
      }
    }else if(condition=='C')
    {
      if(number==boxnumber)
      {
        stroke(#34b7eb);
        strokeWeight(10);
      }else
      {
      stroke(#32a85a);
      strokeWeight(10);
      }
    }else
    {
      if(number==boxnumber)
      {
        stroke(#34b7eb);
        strokeWeight(10);
      }else
      {
      stroke(#a84432);
      strokeWeight(10);
      }
    }
    
  String showtext=typing;
  textAlign(CENTER);
  textSize(60);
  fill(255);
  rectMode(CENTER);
  rect(X, Y,len, hei,55,55,55,55);
  
  fill(0);
  text(showtext,X,Y+height*0.025);
  
  }
  
  void textInput()
  {
  if(number==boxnumber)
  {
  {
    if(keyPressed)
  {
    if(key==TAB || key==ENTER || key==RETURN || key==ESC || key==DELETE)
  {
  }else if(key==BACKSPACE)
  {
    if(typing.length()>=1)
    {
      char check=key;
    delay(50);
    if(check==key)
    {
    typing=typing.substring(0, typing.length()-1);
    delay(50);
    }
    }
  }else
  {
    if(typing.length()<limit)
    {
    char check=key;
    delay(50);
    if(check==key)
    {
    typing = typing + key;
    typing=typing.toUpperCase();
    delay(50);
    }
    } 
  }
  }
  }
  }
  }
  
  boolean check()
  {
    if(typing.equals(correctAnswer.toUpperCase()))
    {
      condition='C';
      return true;
    }else
    {
      condition='W';
      return false;
    }
  } 
}
