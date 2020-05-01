void switching()
{
  if(mousePressed)
  {
    for(int i=0; i<t.length; i++)
    {
      if(mouseX>=t[i].Xmin && mouseX<=t[i].Xmax && mouseY>=t[i].Ymin && mouseY<=t[i].Ymax)
      {
       boxnumber=i+1;
      }
  }
  }
}
