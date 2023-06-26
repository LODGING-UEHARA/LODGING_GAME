int e = 0;

void TITLE() {
  background(0);
  if (key == ' ') {
    if (e<594) {
      e+=3;
    }
    textAlign(CENTER, CENTER);
    image(logo, width/2-420, -594+e);
    if (frameCount / 35 % 2 == 0) {
    } else {
      textSize(55);
      fill(23, 63, 255);
      text("Press R key to PLAY", width * 0.5+3, height * 0.8+3);
      fill(255, 182, 93);
      text("Press R key to PLAY", width * 0.5, height * 0.8);
    }
  }
  if (key == 'r') {
    decide.play();
    decide.rewind();
    state = CHARACTERSELECT;
  }
}
