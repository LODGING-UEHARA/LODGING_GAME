void CHARACTERSELECT() {
  background(select_back);
  fill(255);
  initChara();
  selectCharaP1();
  selectCharaP2();
  textAlign(CENTER, CENTER);
  textSize(80);
  fill(23, 63, 255);
  text("CHARACTER SELECT ", width/2+4, height/8+4);
  fill(255, 182, 93);
  text("CHARACTER SELECT ", width/2, height/8);

  if (selCharCheckP1 && selCharCheckP2) {
    select_bgm.pause();
    select_bgm.rewind();
    stanby.play();
    count++;
    background(0);
    fill(255, 0, 0);
    scale(-1, 1);
    image(Char_selectP1, -width*5/16, height/8, 392, 480);
    scale(-1, 1);
    image(Char_selectP2, width*11/16, height/8, 392, 480);
    textAlign(CENTER, CENTER);
    textSize(100);
    fill(23, 63, 255);
    text(name[c1], width * 5/16 - 192, height * 13/16+4);
    fill(255, 182, 93);
    text(name[c1], width * 5/16 - 196, height * 13/16);
    fill(23, 63, 255);
    text(name[c2], width * 11/16 + 200, height * 13/16+4);
    fill(255, 182, 93);
    text(name[c2], width * 11/16 + 196, height * 13/16);
    textAlign(CENTER, CENTER);
    textSize(350);
    fill(247, 40, 40);
    text("VS", width/2+10, height/2+10);
    fill(255, 209, 23);
    text("VS", width/2, height/2);
    if (60*0.4 <= count) {
      count=0;
      state = BATTLE;
    }
  } else {
    select_bgm.play();
  }
}
