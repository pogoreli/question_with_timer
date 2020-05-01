String username= "IVAN";
int boxnumber=1;
int attempt;
char correct='U';//U/C/W
boolean done=false;
PImage background;

int score=0;

textbox[] t=new textbox[4];

void score()
{
  fill(0);
  textSize(15);
  textAlign(CORNER);
  text("SCORE: "+score, 0.8*width, 0.05*height);
  //text("boxnumber: "+boxnumber, 0.8*width, 0.05*height);
  text(mouseY, 0.7*width, 0.2*height);
  text(mouseX, 0.7*width, 0.15*height);
  text("FRAMERATE: "+frameRate, 0.8*width, 0.2*height);
}

void user()
{
  fill(0);
  textSize(15);
  textAlign(CORNER);
  text("USERNAME: "+username, 0.01*width, 0.05*height);
}

void back()
{
  background(200);
  tint(200,200,200);
  image(background,0,height/5,width,height); 
}

void correct()
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

void setFillTheBlank()
{

  background=loadImage("bvf.jpg");
  frameRate(70);
  t[0]=new textbox(width*0.5, height*0.3,0.6*width, 1,"IVAN",12);
  t[1]=new textbox(width*0.5, height*0.5,0.3*width, 2,"ALEX",6);
  t[2]=new textbox(width*0.2, height*0.6,0.3*width, 3,"KHALID",6);
  t[3]=new textbox(width*0.6, height*0.7,0.3*width, 4,"AI",6);
  
  for(int i=0; i<t.length; i++)
  {
  t[i].setValues();
  }
  
  timersetup();
}

void drawFillTheBlank()
{
  switching();//choosing the text field
  back();//background
  user();//displaying username
  score();//displaying score
  submitButton();//submitting the assigment
  for(int i=0; i<t.length; i++)
  {
  t[i].textDisplay();
  t[i].textInput();
  }
  correct();
  timerVisualisation();
  timerCount();
}
