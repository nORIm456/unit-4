color black = #000000;
color white = #FFFFFF;
color purp = #8338ec;
color rock =#838282 ;
color blue = #309892;
color darkrock = #625F5F;
color lightblue = #51BACE;
color grey = #949EA0;
color darkgrey = #858C8E;
color gold = #FFD700;
color lb = #2A3483;
color silver = #C0C0C0;
int y = 0;
int i = 0;
int x = 0;

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
 
 stars(200);
 planet(300, 800);
 spaceship(int(random(100, 600)), 50, 0.50);
 spaceship(int(random(100,600)), 100, 0.50);
 spaceship(int(random(100,600)), 200, 0.50);
 satellite(int(random(100, 600)),250, 0.15);
 satellite(int(random(100, 600)),300, 0.15);
 while(x <= 800) {
 //asteroid(x, 450, 0.15);
 //asteroid(x+50, 480, 0.15);
 //asteroid(x+40, 430, 0.20);
 //asteroid(x-40, 400, 0.15);
 //asteroid(x-20, 490, 0.10);
 //asteroid(x-100, 440, 0.15);
  asteroid(x + int(random(-30, 30)), 450 + int(random(-20, 20)), 0.15);
  asteroid(x + 50 + int(random(-30, 30)), 480 + int(random(-20, 20)), 0.15);
  asteroid(x + 40 + int(random(-30, 30)), 430 + int(random(-20, 20)), 0.20);
  asteroid(x - 40 + int(random(-30, 30)), 400 + int(random(-20, 20)), 0.15);
  asteroid(x - 20 + int(random(-30, 30)), 490 + int(random(-20, 20)), 0.10);
  asteroid(x - 100 + int(random(-30, 30)), 440 + int(random(-20, 20)), 0.15);
 x = x + 200;
  }
}


void planet(int x, int y) {
  colorMode(HSB);
  fill(random(0, 225), 225, 225);
  stroke(black);
  ellipse(400, 600, 1000, 400);
}

void asteroid(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  rotate(PI/4);
  scale(s);
  
  body1();
  divet();
  bigdivet();
  popMatrix();
}
 void body1() {
  fill(rock);
  stroke(rock);
  ellipse(0, 0, 250, 180);
 }

 void divet () {
  int i = 50;
  while(i >= 0) {
    fill(darkrock);
    stroke(darkrock);
    ellipse(i-20, 40, 25, 25);
    i = i - 50;
   }
}
  void bigdivet() {
  int i = 0;
  while(i >= -20) {
    fill(darkrock);
    stroke(darkrock);
    ellipse(i-20, -40, 50, 50);
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
  colorMode(HSB);
  fill(0, 0,random(20, 100));
  stroke(0, 0,random(20, 100));
  ellipse(0, 0, 200, 50);
  }
  void cockpit() {
  colorMode(HSB);
  fill(lightblue);
  stroke(lightblue);
  circle(0, -20, 80);
  }
//void stars(int x, int y) {
  //fill(white);
  //stroke(white);
  //circle(x, y-100, 5);
//}

void satellite(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  rotate(random(TWO_PI));
  

  panels();
  Houtline();
  Voutline();
  Sbody();
  dish();
  popMatrix();
}

void panels() {
  fill(lb);
  stroke(lb);
  rect(-120, 0, 100, 100);
  rect(+120, 0, 100, 100);
  rect(-240, 0, 100, 100); 
  rect(+240, 0, 100, 100);
 
}


void Sbody() {
  fill(gold);
  stroke(gold);
  square(0, 0, 100);
}

void Houtline() {
  int v = 0;
  while(v <= 100) {
  fill(white);
  stroke(white);
    line(-240, v, 340, v);
    v = v + 25;
  }
}

void Voutline() {
  int v = -240;
  while(v <= 348) {
    fill(white);
    stroke(white);
    line(v, 0, v, 100);
    v = v + 25;
  }
}

void dish() {
  fill(silver);
  stroke(silver);
  circle(50, 50, 50);
}

void stars(int count) {
  for (int i = 0; i < count; i++) {
    int x = int(random(800));
    int y = int(random(600));
    fill(white);
    stroke(white);
    circle(x, y, 3);
  }
}
