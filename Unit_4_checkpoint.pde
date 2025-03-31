color beige =#fdf0d5;
color red   =#c1121f;
color black = #000000;
color blue  = #669bbc;
void setup() {
  size(800, 600);
}

void draw() {
  face(200, 100); //x, y
  face(500, -200);
}

void face(int x, int y) {
 pushMatrix();
 translate(x, y);
 
skin();
//hair();
//eye();//left
//eye();//right
//mouth();
 
 popMatrix();
}
void skin() {
 fill(blue);
 stroke(black);
 strokeWeight(3);
 rect(0, 0, 400, 400);
}
