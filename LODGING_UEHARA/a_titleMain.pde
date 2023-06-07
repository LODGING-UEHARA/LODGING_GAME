void TITLE() {
  background(0);
  fill(255, 255, 0);
  textAlign(CENTER, CENTER);
  textSize(150);
  text("Title", width/2, height/3);
  if (frameCount / 35 % 2 == 0) {
  } else {  
    fill(255, 255, 0);   
    textSize(55);
    text("Press S key to PLAY", width * 0.5, height * 0.7);
  }
  if (key == 's') {
    state = CHARACTERSELECT;
  }
}
