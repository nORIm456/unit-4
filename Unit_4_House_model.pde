color blue = #5FAAEA;
color white = #FFFFFF;
color red = #E33232;
color darkred = #AF2323;
color darkblue = #98DAF0; 
color brown = #763F07;

void setup() {
  size(800, 600);
}

void draw() {
  background(blue);
  
  //building
  fill(white);
  stroke(white);
  square(200, 300, 400);
  
  //chimney
  fill(darkred);
  stroke(darkred);
  rect(480, 50, 100, 220);
  
  //roof
  fill(red);
  stroke(red);
  triangle(100, 300, 400, 0, 700, 300);
  
  //window
  fill(darkblue);
  stroke(darkblue);
  square(450, 400, 125);
  
  //door
  fill(brown);
  stroke(brown);
  rect(270, 400, 120, 300);
  
}
