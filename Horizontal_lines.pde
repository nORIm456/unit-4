size(600, 600);
background(255);
color pink = #ff006e;
color purp = #8338ec;

int y = 0;
while(y <= 600 ) {
//float s = map(y, 0, 600, 0, 255);
//float percent = map(y, 0, 600, 0, 1);
//color current = lerpColor(pink, purp, percent);
//stroke();
line(0, y, 600, y);
 y = y + 15;
}
