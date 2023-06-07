int firstBall = (int)random(1);
void initBall() {
  x = width/2;
  y = 0;
  if (firstBall == 0) {
    dx = 7;
  } else if (firstBall == 1) {
    dx = -7;
  }
  dy = 7;
}
