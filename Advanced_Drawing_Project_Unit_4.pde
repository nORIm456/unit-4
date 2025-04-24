color black = #000000;
color white = #FFFFFF;
color purp = #8338ec;
color rock =#838282 ;
color blue = #309892;
color darkrock = #625F5F;
color lightblue = #51BACE;
color grey = #949EA0;
color darkgrey = #858C8E;
int y = 0;
int i = 0;

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
 asteroid(int(random(200, 600)), 300);
 spaceship(int(random(200,600)), 300);
 stars(int(random(400, 300)), 300);
 spaceship(int(random(200,600)), 400);
}


void planet(int x, int y) {
  colorMode(HSB);
  fill(random(0, 225), 225, 225);
  ellipse(400, 600, 1000, 400);
}

void asteroid(int x, int y) {
  pushMatrix();
  
  fill(rock);
  stroke(rock);
  ellipse(x, y, 200, 100);
  ellipse(x+30, y+30, 150, 100);
  
  divet();
  popMatrix();
}

 void divet () {
  int i = 200;
  while( i <= 0) {
    fill(darkrock);
    stroke(darkrock);
    circle(i, 600, 25);
    i = i - 50;
   }
}

void spaceship(int x, int y) {
  pushMatrix();
  
  fill(lightblue);
  stroke(lightblue);
  circle(x, y-20, 80);
  fill(grey);
  stroke(grey);
  ellipse(x, y, 200, 50);
  //fill(darkgrey);
  //stroke(darkgrey);
  //circle(x, y, 15);
  //circle(x-50, y, 15);
  //circle(x+50, y, 15);
  
  spots();
  popMatrix();
}
  void spots() {
    int t = 200;
    while(t >= 0) {
      fill(darkgrey);
      stroke(darkgrey);
      ellipse(t, 600, 15, 15);
      t = t - 50;
  }
  }
void stars(int x, int y) {
  fill(white);
  stroke(white);
  circle(x, y-100, 5);
}
