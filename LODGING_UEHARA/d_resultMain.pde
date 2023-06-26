void RESULT() {
  battle_bgm.pause();
  battle_bgm.rewind();
  fight.rewind();
  
  background(0);
  if (winCheckNum == 1) {
    scale(-1, 1);
    image(Char_selectP1, -width*5/16, height/8, 392, 480);
    scale(-1, 1);
    image(Char_loseP2, width*11/16, height/8, 392, 480);
    textSize(100);
    textAlign(CENTER, CENTER);
    fill(23, 63, 255);
    text("Player 1 WIN!!!!!", width /2, height * 0.8);
    if (c1 == 0) Char1_win.play();
    if (c1 == 1) Char2_win.play();
    if (c1 == 2) Char3_win.play();
    if (c1 == 3) Char4_win.play();
  } else if (winCheckNum == 2) {
    scale(-1, 1);
    image(Char_loseP1, -width*5/16, height/8, 392, 480);
    scale(-1, 1);
    image(Char_selectP2, width*11/16, height/8, 392, 480);
    textSize(100);
    textAlign(CENTER, CENTER);
    fill(247, 40, 40);
    text("Player 2 WIN!!!!!", width /2, height * 0.8);
    if (c2 == 0) Char1_win.play();
    if (c2 == 1) Char2_win.play();
    if (c2 == 2) Char3_win.play();
    if (c2 == 3) Char4_win.play();
  }
  if (frameCount / 35 % 2 == 0) {
  } else {
    fill(255, 255, 0);
    textSize(55);
    fill(23, 63, 255);
    text("Press R key to REPLAY", width * 0.5+3, height * 0.9+3);
    fill(255, 182, 93);
    text("Press R key to REPLAY", width * 0.5, height * 0.9);
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
    count = 0;
    state = TITLE;
  }
}
