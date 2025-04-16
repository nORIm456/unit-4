color black = #000000;
color white = #FFFFFF;
color purp = #8338ec;
color brown = #B9722B;
color blue = #309892;
color darkbrown = #A06A1A;
color lightblue = #51BACE;
color grey = #949EA0;
color darkgrey = #858C8E;
int y = 0;

void setup() {
  background(black);
  size(800, 600);
while(y <= 300 ) {
float s = map(y, 0, 300, 0, 255);
float percent = map(y, 0, 300, 0, 1);
color current = lerpColor(purp, black, percent);
stroke(lerpColor(purp, black, percent));
line(0, y, 800, y);
 y = y + 1;
 }
 planet(300, 800);
 asteroid(300, 300);
 spaceship(600, 300);
 stars(400, 300);
}


void planet(int x, int y) {
  colorMode(HSB);
  fill(random(0, 225), 225, 225);
  ellipse(400, 600, 1000, 400);
}

void asteroid(int x, int y) {
  fill(brown);
  stroke(brown);
  ellipse(300, 300, 200, 100);
  ellipse(330, 330, 150, 100);
  fill(darkbrown);
  stroke(darkbrown);
  circle(290, 300, 25);
  ellipse(320, 350, 50, 25);
}

void spaceship(int x, int y) {
  fill(lightblue);
  stroke(lightblue);
  circle(600, 180, 80);
  fill(grey);
  stroke(grey);
  ellipse(600, 200, 200, 50);
  fill(darkgrey);
  stroke(darkgrey);
  circle(600, 200, 15);
  circle(550, 200, 15);
  circle(650, 200, 15);
}
void stars(int x, int y) {
  fill(white);
  stroke(white);
  circle(400, 200, 5);
}
