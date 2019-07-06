//Names: Caterina Valdovinos and Kat Sotelo, Date: Sept 21, 2018 
//HW5 CPSC 211 
//Description: Generates Spinning Jump frieze pattern with the inputed image

PImage icon;     // storage for image
int w, h;        // width and height of image
int reps = 13;   // number of repetitions of base pattern 

//Set window properties, invoke mainline
void setup() 
{
  icon = loadImage("startrek.jpg");
  w = icon.width;
  h = icon.height;
  size(600, 600);  // set window size - base pattern is twice as wide as foot image
  drawFrieze();
  save("StarTrekSpinningJumpFrieze.gif");
}

// Draw Hop frieze pattern
void drawFrieze() 
{
  for (int i = 0; i < reps; i++) 
  {
    basePattern();
    translate(2*w, 0); //translate width of base pattern
  }
}

//Displays the pattern
void basePattern()
{
  image(icon, 0, 0);
  flipShape();
  mirrorImage();
  pushMatrix();
  translate(w, h+1); 
  rotateHalfTurn(); 
  popMatrix();
}

//Flips the shape about the x-axis
void flipShape() 
{  
  pushMatrix();
  translate(w/2, 27+h);
  scale(-1, 1); 
  rotate(radians(180));
  translate(-w/2, -h/2);
  image(icon, 0, 0);
  popMatrix();
}

//Rotate half turn of icon about the center 
void rotateHalfTurn() 
{ 
  pushMatrix();
  translate(w/2, h/2); // translate origin to pivot point
  rotate( radians(180)); // rotate by a half turn
  translate(-w/2, -h/2); // translate back
  image(icon, 0, 0); // draw image
  popMatrix();
}

//Mirrors image about the y-axis
void mirrorImage()
{
  pushMatrix();
  scale(-1, 1);
  image(icon, 0, 0); // draw image
  popMatrix();
}
