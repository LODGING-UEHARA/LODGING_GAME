void RESULT() {
  background(0);
  fill(0, 255, 0);
  if (winCheckNum == 1) {
    textSize(150);
    textAlign(CENTER, CENTER);
    text("Player 1 WIN!!!!!", width /2, height * 0.5);
  } else if (winCheckNum == 2) {
    textSize(150);
    textAlign(CENTER, CENTER);
    text("Player 2 WIN!!!!!", width /2, height * 0.5);
  }
  if (frameCount / 35 % 2 == 0) {
  } else {
    fill(255, 255, 0);
    textSize(55);
    text("Press R key to REPLAY", width * 0.5, height * 0.7);
  }
  if (key == 'r') {
    winCheckNum = 0;
    initBall();
    initBlocksP1();
    initBlocksP2();
    count = 0;
    if (firstBall == 0) {
      firstBall = 1;
    } else if (firstBall == 1) {
      firstBall = 0;
    }
    selCharCheckP1=false;
    selCharCheckP2=false;
    spe1 = 1.055;
    spe2 = 1.055;
    bs1 = 10;
    bs2 = 10;
    c1=1;
    c2=2;
    state = TITLE;
  }
}
