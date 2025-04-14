color black = #000000;
color purp = #8338ec;
int y = 0;

void setup() {
  size(800, 600);
while(y <= 800 ) {
float s = map(y, 0, 800, 0, 255);
float percent = map(y, 0, 800, 0, 1);
color current = lerpColor(purp, black, percent);
stroke(lerpColor(purp, black, percent));
line(0, y, 800, y);
 y = y + 1;
 }
}
