int firstBall = (int)random(0,1);

void initBall() {
  x = width/2;
  y = 0;
  if (firstBall == 0) {
    dx = 5;
  } else if (firstBall == 1) {
    dx = -5;
  }
  dy = 5;
}
