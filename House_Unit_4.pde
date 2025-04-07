color blue = #5FAAEA;
color white = #FFFFFF;
color red = #E33232;
color darkred = #AF2323;
color darkblue = #98DAF0; 
color brown = #763F07;
color yellow = #EDDD26;


void setup() {
  background(blue);
  size(800, 600);
}

void draw() {
  house(0, 0);
}

void house(int x, int y) {
  pushMatrix();
  translate(x, y);
  
 chimney();
 roof(100, 300);
 building();
 window();
 door();
 knob();

  popMatrix();
}

void building() {
  fill(white);
  stroke(white);
  square(200, 300, 400);
}

void roof(int x, int y) {
  fill(red);
  stroke(red);
  triangle(100, 300, 400, 0, 700, 300);
}
  void chimney() {
  fill(darkred);
  stroke(darkred);
  rect(480, 50, 100, 220);
}
  void window() {
  fill(darkblue);
  stroke(darkblue);
  square(450, 400, 125); 
  }
  
 void door() {
  fill(brown);
  stroke(brown);
  rect(270, 400, 120, 300);
 }
 
 void knob() {
   fill(yellow);
   stroke(yellow);
   ellipse(290, 500, 15, 15);
 }
