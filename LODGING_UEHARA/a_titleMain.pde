void TITLE() {
  background(0);
  fill(255, 255, 0);
  textAlign(CENTER, CENTER);
  textSize(150);
  text("Title", width/2, height/3);
  if (key == 'a') {
    state = CHARACTERSELECT;
  }
}
