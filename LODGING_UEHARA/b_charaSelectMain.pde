void CHARACTERSELECT() {
  background(0);
  fill(0, 255, 255);
  textAlign(CENTER, CENTER);
  textSize(150);
  text("Character Select ", width/2, height/3);
  if (key == 'b') {
    state = BATTLE;
  }
}
