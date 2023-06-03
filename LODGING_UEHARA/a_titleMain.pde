void TITLE() {
  background(0);
  fill(255, 255, 0);
    textSize(75);
    textAlign(CENTER, CENTER);
    text("TITLE", width * 0.5, height * 0.3);
  if (frameCount / 35 % 2 == 0) {
  } else {
    fill(255, 255, 0);
    textSize(75);
    textAlign(CENTER, CENTER);
    text("Press A key to NEXT", width * 0.5, height * 0.7);
  }
  if (key == 'a') {
    state = CHARACTERSELECT;
  }
}
