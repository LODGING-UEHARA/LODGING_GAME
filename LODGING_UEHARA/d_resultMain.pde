void RESULT() {
    background(0);
    fill(0, 255, 0);
    textSize(75);
    textAlign(CENTER, CENTER);
    text("RESULT", width * 0.5, height * 0.3);
  if (frameCount / 35 % 2 == 0) {
  } else {
    fill(0, 255, 0);
    textSize(75);
    textAlign(CENTER, CENTER);
    text("Press D key to NEXT", width * 0.5, height * 0.7);
  }
  if (key == 'd') {
    state = TITLE;
  }
}
