  float[][][] location_and_size=new float[2][4][5];
//{
//{
//{width*0.5, height*0.3, 0.6*width, 1, 12},
//{width*0.5, height*0.5, 0.3*width, 2, 6},
//{width*0.2, height*0.6,0.3*width, 3 ,6},
//{width*0.6, height*0.7,0.3*width, 4, 6}
//},
//{
//{width*0.5, height*0.3, 0.6*width, 1, 12},
//{width*0.5, height*0.5, 0.3*width, 6},
//{width*0.2, height*0.6,0.3*width,6},
//{width*0.6, height*0.7,0.3*width, 4, 6}
//}
//};

  String[][] answers=
  {
    {"IVAN","ALEX","KHALID","AI"},//Answers for question 1
    {"IVAN","ALEX","KHALID","AI"}//Answers for question 2
  };

  void array()
  {
     location_and_size[0][0][0]=width*0.5;//coordinates of textfields for question 1
     location_and_size[0][0][1]=height*0.3;
     location_and_size[0][0][2]=0.6*width;
     location_and_size[0][0][3]=1;
     location_and_size[0][0][4]=12;

     location_and_size[0][1][0]=width*0.5;
     location_and_size[0][1][1]=height*0.5;
     location_and_size[0][1][2]=0.3*width;
     location_and_size[0][1][3]=2;
     location_and_size[0][1][4]=6;
     
     location_and_size[0][2][0]=width*0.2;
     location_and_size[0][2][1]=height*0.6;
     location_and_size[0][2][2]=0.3*width;
     location_and_size[0][2][3]=3;
     location_and_size[0][2][4]=6;
     
     location_and_size[0][3][0]=width*0.6;
     location_and_size[0][3][1]=height*0.7;
     location_and_size[0][3][2]=0.3*width;
     location_and_size[0][3][3]=4;
     location_and_size[0][3][4]=6;
     
     location_and_size[1][0][0]=width*0.5;//coordinates of textfields for question 2
     location_and_size[1][0][1]=height*0.3;
     location_and_size[1][0][2]=0.6*width;
     location_and_size[1][0][3]=1;
     location_and_size[1][0][4]=12;

     location_and_size[1][1][0]=width*0.5;
     location_and_size[1][1][1]=height*0.5;
     location_and_size[1][1][2]=0.3*width;
     location_and_size[1][1][3]=2;
     location_and_size[1][1][4]=6;
     
     location_and_size[1][2][0]=width*0.2;
     location_and_size[1][2][1]=height*0.6;
     location_and_size[1][2][2]=0.3*width;
     location_and_size[1][2][3]=3;
     location_and_size[1][2][4]=6;
    
     location_and_size[1][3][0]=width*0.6;
     location_and_size[1][3][1]=height*0.7;
     location_and_size[1][3][2]=0.3*width;
     location_and_size[1][3][3]=4;
     location_and_size[1][3][4]=6;
  }
