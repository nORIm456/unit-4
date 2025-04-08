size(600, 600);
background(255);
color pink = #ff006e;
color purp = #8338ec;

int x = 0;
while(x <= 600 ) {
//float s = map(y, 0, 600, 0, 255);
//float percent = map(y, 0, 600, 0, 1);
//color current = lerpColor(pink, purp, percent);
//stroke();
line(x, 0, x, 600);
 x = x + 15;
}
