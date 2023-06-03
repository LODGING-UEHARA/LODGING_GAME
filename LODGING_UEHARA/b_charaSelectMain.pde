void CHARACTERSELECT() {
    background(0);
    fill(0, 255, 255);
    textSize(75);
    textAlign(CENTER, CENTER);
    text("CHARASELECT", width * 0.5, height * 0.3);
  if (frameCount / 35 % 2 == 0) {
  } else {
    fill(0, 255, 255);
    textSize(75);
    textAlign(CENTER, CENTER);
    text("Press B key to NEXT", width * 0.5, height * 0.7);
  }
  if (key == 'b') {
    state = BATTLE;
  }
}
