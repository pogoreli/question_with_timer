int fg_question=1;
fill_the_gap_question[] fg=new fill_the_gap_question[2];
String username= "IVAN";//username
PImage background;//background image
int score=0;//variable, which stores the score

void setup()
{
  size(800,800);
  background=loadImage("bvf.jpg");
  frameRate(70);
  array();
  for(int i=0; i<fg.length;i++)
    {
    fg[i]=new fill_the_gap_question(i);//inicialize separately in the beginning of the question to start the timer
    }
}

void draw()
{
  fg[fg_question].drawFillTheBlank();
}

void score()//displaying the score
{
  fill(0);
  textSize(15);
  textAlign(CORNER);
  text("SCORE: "+score, 0.8*width, 0.05*height);
  //text("boxnumber: "+boxnumber, 0.8*width, 0.05*height); //debugging
  //text(mouseY, 0.7*width, 0.2*height);
  //text(mouseX, 0.7*width, 0.15*height);
  //text("FRAMERATE: "+frameRate, 0.8*width, 0.2*height);
}

void user()//displaying the username
{
  fill(0);
  textSize(15);
  textAlign(CORNER);
  text("USERNAME: "+username, 0.01*width, 0.05*height);
}

void back()//displaying the background
{
  background(200);
  tint(200,200,200);
  image(background,0,height/5,width,height); 
}
