void CHARACTERSELECT() {
  background(0);
  fill(0, 255, 255);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("Character Select ", width/2, height/8);
  initChara();
  selectCharaP1();
  selectCharaP2();

  if (selCharCheckP1 && selCharCheckP2) {
    count++;
    background(0);
    fill(255, 0, 0);
    textAlign(CENTER, CENTER);
    textSize(350);
    text("VS", width/2, height/2);
    if (60*0.5 <= count) {
      count=0;
      state = BATTLE;
    }
  }
}
