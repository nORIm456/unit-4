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
 asteroid(int(random(0, 600)), 500, 0.65);
 spaceship(int(random(0, 600)), 100, 0.50);
 stars(int(random(400, 300)), 300);
 spaceship(int(random(0,600)), 250, 0.50);
 spaceship(int(random(0,600)), 350, 0.50);
}


void planet(int x, int y) {
  colorMode(HSB);
  fill(random(0, 225), 225, 225);
  ellipse(400, 600, 1000, 400);
}

void asteroid(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  rotate(PI/4);
  scale(s);
  

  body1();
  //body2();
  divet();
  popMatrix();
}
 void body1() {
  fill(rock);
  stroke(rock);
  ellipse(0, 0, 250, 180);
 }
 //void body2() {
  //fill(rock);
  //stroke(rock);
  //ellipse(30, 30, 150, 100);
 //}
 void divet () {
  int i = 50;
  while(i >= 0) {
    fill(darkrock);
    stroke(darkrock);
    //ellipse(i-40, -30, 35, 35);
    ellipse(i-20, 40, 25, 25);
    i = i - 50;
   }
   
}

void spaceship(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  
  cockpit();
  ssbody();
  spots();
  popMatrix();
}
  void spots() {
    int t = 100;
    while(t >= 0) {
      fill(darkgrey);
      stroke(darkgrey);
      ellipse(t-50, 5, 15, 15);
      t = t - 50;
  }
  }
  void ssbody() {
  fill(grey);
  stroke(grey);
  ellipse(0, 0, 200, 50);
  }
  void cockpit() {
  fill(lightblue);
  stroke(lightblue);
  circle(0, -20, 80);
  }
void stars(int x, int y) {
  fill(white);
  stroke(white);
  circle(x, y-100, 5);
}
