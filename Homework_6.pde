//Aversa Prentosito
//10-14-2018
//Homework 6
//This is artwork created with code utilizing looping.

void setup() {
  background(0, 255, 255);
  size(1200, 900);
  ellipses();
  yellowLines();
  triangularBorder();
  bezierCurves();
  arcs();
  artLabel();
  concentricEllipses();
  save("artwork.jpg");
}

//white ellipses with pink/purple/blue borders from bottom left to top middle
void ellipses() {
  int x = 0;
  int y = 900;
  while (x < 1200) {
    ellipse(x-100+random(15), y+random(15), 100, 50);
    strokeWeight(5);
    stroke(random(255), 0, random(255));
    x += 5;
    y -= 5;
  }
}

//lines from top left to bottom middle changing from yellow to red to yellow
void yellowLines() {
  int x = -75;
  int y = -75;
  strokeWeight(10);
  while (x < 1200) {
    line(x+75, y, x, y+75);  
    x += 10;
    y += 10;
    stroke(255, abs(355-x), 0);
  }
}

//blue triangles with green borders around the border of the art
void triangularBorder() {
  //top row
  for (int x = 50; x < 1200; x += 50) {
    stroke(0, 200, 0);
    fill(0, 0, 255);
    int y = 20;
    triangle(x, y, x-25, y+25, x+25, y+25);
  }
  //left column
  for (int y = 55; y < 850; y += 35) {
    stroke(0, 200, 0);
    fill(0, 0, 255);
    int x = 30;
    triangle(x, y, x-25, y+25, x+25, y+25);
  }
  //bottom row
  for (int x = 50; x < 1200; x += 50) {
    stroke(0, 200, 0);
    fill(0, 0, 255);
    int y = 850;
    triangle(x, y, x-25, y+25, x+25, y+25);
  }
  //right column
  for (int y = 55; y < 850; y += 35) {
    stroke(0, 200, 0);
    fill(0, 0, 255);
    int x = 1165;
    triangle(x, y, x-25, y+25, x+25, y+25);
  }
}

//orange curves on the right
void bezierCurves() {
  stroke(255, 100, 0);
  strokeWeight(2);
  noFill();
  int firstX = 1000;
  int firstY = 100;
  int lastX = 900;
  int lastY = 450;
  for (firstX = 1050; firstX < 1200; firstX += 50) {
    for (lastX = 925; lastX < 1200; lastX += 25) {
      bezier(firstX, firstY, 300, 200, 900, 500, lastX, lastY);
      firstY += 10;
      lastY += 10;
    }
  }
}

//multiple blue ellipses on bottom left
void concentricEllipses() {
  stroke(100, 0, 255);
  strokeWeight(2);
  int a = 0;
  int b = 0;
  while (a < 400) {
    ellipse(400, 700, a, b);
    a += 100;
    b += 50;
  }
  a = 0;
  b = 0;
  while (b < 400) {
    ellipse(400, 700, a, b);
    a += 50;
    b += 100;
  }
  a = 0;
  b = 0;
  translate(400,700);
  rotate(PI/4);
  while (b < 400) {
    ellipse(0, 0, a, b);
    a += 50;
    b += 100;
  }
  a = 0;
  b = 0;
  rotate(PI/2);
  while (b < 400) {
    ellipse(0, 0, a, b);
    a += 50;
    b += 100;
  }
}

//red arcs on top middle
void arcs() {
  strokeWeight(4);
  stroke(255, 0, 100);
  float x = 450;
  float y = 50;
  float width = 100;
  float height = 200;
  float startAngle = PI/2;
  float endAngle = PI;
  for (x = 450; x < 550; x += 10) {
    arc(x, y, width, height, startAngle, endAngle);
    width += 50;
    height += 5;
    y += 10;
  }
}


// Creates a label with the specified colors and location
// Note that x and y refer to the CENTER of the rectangle
void artLabel() {
  // Don't change these next four lines.
  pushStyle(); // Must be the first line
  rectMode(CENTER); 
  textAlign(CENTER, CENTER);
  textSize(24);
  
  // Here is where you change the location of the rectangle and text
  int xCenter = 1025, yCenter = 775;

  // Details about the rectangle
  // Adjust these 4 lines as needed
  stroke(0); 
  strokeWeight(5);
  // Here is where you change the color of the rectangle
  fill(147, 213, 247, 50); 
  // You can change the size, but leave xCenter and yCenter in place
  rect(xCenter, yCenter, 220, 120); 

  // Details about the text
  // Including your name is optional.  I will be asking you 
  // later if I can publicly display your sketch in Benton.  Feel free to
  // include your name and a title.  DON'T DELETE "CSE 174 Art".
  // Here is where you can change the color of the text:
  fill(50, 100, 139);
  
  // Keep "CSE 174 Art".  But the title and name are optional:
  // The two numb
  text("CSE 174 Art\nLooping Artwork\nAversa Prentosito", xCenter, yCenter);

  popStyle(); // Don't touch this line. Must be the last line.
}
