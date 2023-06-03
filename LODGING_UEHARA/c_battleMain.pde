void BATTLE() {
    background(0);
    fill(255, 0, 255);
    textSize(75);
    textAlign(CENTER, CENTER);
    text("BATTLE", width * 0.5, height * 0.3);
  if (frameCount / 35 % 2 == 0) {
  } else {
    fill(255, 0, 255);
    textSize(75);
    textAlign(CENTER, CENTER);
    text("Press C key to NEXT", width * 0.5, height * 0.7);
  }
  if (key == 'c') {
    state = RESULT;
  }
}
