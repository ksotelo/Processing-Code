//HW5SoteloValdovinosJump

PImage icon; // storage for image
int w, h; // width and height of image
int reps = 13; // number of repetitions of base pattern 
// image across window

//set window properties, invoke mainline
void setup() 
{
  background(255);
  icon = loadImage("startrek.jpg");
  w = icon.width;
  h = icon.height;
  size(600, 600);  //old size: reps*w*2, h); // set window size - base pattern is twice as wide as foot image
  drawFrieze();
  //save("jumpFrieze.gif");
}

// Draw Hop frieze pattern
void drawFrieze() 
{
  for (int i = 0; i < reps; i++) 
  {
    basePattern();
    translate(w, 0); //translate width of base pattern
  }
}
//display basepattern
void basePattern()
{
  image(icon, 0, 0);
  pushMatrix();
  flipShape();
  image(icon, 0, 0);
  popMatrix();  //return to previous modelview matrix
}

//Mirrors the shape //pivot about the center
void flipShape() 
{  
  pushMatrix();
  translate(w/2, 27+h);
  scale(1, -1); 
  translate(-w/2, -h/2);
  image(icon, 0, 0);
  popMatrix();
}
