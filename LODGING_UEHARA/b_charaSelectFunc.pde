float selCharW = 150;
float selCharH = 150;
int c1 = 1, c2 = 1;
boolean selCharCheckP1 = false;
boolean selCharCheckP2 = false;
int s_c1 = 250;
int s_c2 = 250;


void selectCharaP1() {
  float startSelX = 100;
  float startSelY = 500;
  s_c1+=40;
  
  scale(-1, 1);
  tint( #FFFFFF, s_c1) ;
  image(Char_selectP1, -width*3/8, height/16, 784, 960);
  tint( #FFFFFF) ;
  scale(-1, 1);
  for (int i = 0; i < charaP1.length; i++) {
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(45);
    if (i == 0){
      text("A", startSelX+i*selCharW+(selCharW/2)+3, startSelY-50+3);
      fill(255);
      text("A", startSelX+i*selCharW+(selCharW/2), startSelY-50);
      image(Char1_select_1, startSelX+i*selCharW, startSelY, selCharW, selCharH);
    }
    if (i == 1){
      text("S", startSelX+i*selCharW+(selCharW/2)+3, startSelY-50+3);
      fill(255);
      text("S", startSelX+i*selCharW+(selCharW/2), startSelY-50);
      image(Char2_select_1, startSelX+i*selCharW, startSelY, selCharW, selCharH);
    }
    if (i == 2){
      text("D", startSelX+i*selCharW+(selCharW/2)+3, startSelY-50+3);
      fill(255);
      text("D", startSelX+i*selCharW+(selCharW/2), startSelY-50);
      image(Char3_select_1, startSelX+i*selCharW, startSelY, selCharW, selCharH);
    }
    stroke(0, 0, 0);
    strokeWeight(1);
    fill(0, 255, 255);
  }
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(45);
  text("Push SHIFT", startSelX+selCharW+(selCharW/2)+3, startSelY+295+3);
  fill(255);
  text("Push SHIFT", startSelX+selCharW+(selCharW/2), startSelY+295);
  textSize(100);
  fill(23, 63, 255);
  text(name[c1], startSelX+selCharW+(selCharW/2)+4, startSelY+224);
  fill(255, 182, 93);
  text(name[c1], startSelX+selCharW+(selCharW/2), startSelY+220);

  stroke(255, 0, 0);
  strokeWeight(7);
  fill(255, 255, 255, 0);
  if (!selCharCheckP1) {
    if (a) {
      c1 = 0;
      s_c1 = 0;
      select.play();
      select.rewind();
    } else if (s) {
      c1 = 1;
      s_c1 = 0;
      select.play();
      select.rewind();
    } else if (d) {
      c1 = 2;
      s_c1 = 0;
      select.play();
      select.rewind();
    } else if (f) {
      c1 = 3;
      s_c1 = 0;
      select.play();
      select.rewind();
    }
  }
  if (c1 == 0) {
    rect(startSelX, startSelY, selCharW, selCharH);
    Char_selectP1 = Char1_select_2;
    Char_loseP1 = Char1_lose;
  }
  if (c1 == 1) {
    rect(startSelX+selCharW, startSelY, selCharW, selCharH);
    Char_selectP1 = Char2_select_2;
    Char_loseP1 = Char2_lose;
  }
  if (c1 == 2) {
    rect(startSelX+2*selCharW, startSelY, selCharW, selCharH);
    Char_selectP1 = Char3_select_2;
    Char_loseP1 = Char3_lose;
  }
  if (c1 == 3) {
    rect(startSelX+3*selCharW, startSelY, selCharW, selCharH);
    Char_selectP1 = Char4_select_2;
    Char_loseP1 = Char4_lose;
  }
  if (shift){
    if(!selCharCheckP1){
    decide.play();
    decide.rewind();
    //delay(800);
    }
    selCharCheckP1 = true;
  }
}

void selectCharaP2() {
  float startSelX = (width/2) + 150;
  float startSelY = 500;
  s_c2+=25;
  tint( #FFFFFF, s_c2) ;
  image(Char_selectP2, width*5/8, height/16, 784, 960);
  tint( #FFFFFF) ;
  for (int i = 0; i < charaP1.length; i++) {
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(45);
    if (i == 0){
      text("J", startSelX+i*selCharW+(selCharW/2)+3, startSelY-50+3);
      fill(255);
      text("J", startSelX+i*selCharW+(selCharW/2), startSelY-50);
      image(Char1_select_1, startSelX+i*selCharW, startSelY, selCharW, selCharH);
    }
    if (i == 1){
      text("K", startSelX+i*selCharW+(selCharW/2)+3, startSelY-50+3);
      fill(255);
      text("K", startSelX+i*selCharW+(selCharW/2), startSelY-50);
      image(Char2_select_1, startSelX+i*selCharW, startSelY, selCharW, selCharH);
    }
    if (i == 2){
      text("L", startSelX+i*selCharW+(selCharW/2)+3, startSelY-50+3);
      fill(255);
      text("L", startSelX+i*selCharW+(selCharW/2), startSelY-50);
      image(Char3_select_1, startSelX+i*selCharW, startSelY, selCharW, selCharH);
    }
    stroke(0, 0, 0);
    strokeWeight(1);
    fill(0, 255, 255);
  }
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(45);
  text("Push ENTER", startSelX+selCharW+(selCharW/2)+3, startSelY+295+3);
  fill(255);
  text("Push ENTER", startSelX+selCharW+(selCharW/2), startSelY+295);
  textSize(100);
  fill(23, 63, 255);
  text(name[c2], startSelX+selCharW+(selCharW/2)+4, startSelY+224);
  fill(255, 182, 93);
  text(name[c2], startSelX+selCharW+(selCharW/2), startSelY+220);

  stroke(255, 0, 0);
  strokeWeight(7);
  fill(255, 255, 255, 0);
  if (!selCharCheckP2) {
    if (j) {
      c2 = 0;
      s_c2 = 0;
      select.play();
      select.rewind();
    } else if (k) {
      c2 = 1;
      s_c2 = 0;
      select.play();
      select.rewind();
    } else if (l) {
      c2 = 2;
      s_c2 = 0;
      select.play();
      select.rewind();
    } else if (h) {
      c2 = 3;
      s_c2 = 0;
      select.play();
      select.rewind();
    }
  }
  if (c2 == 0){
    rect(startSelX, startSelY, selCharW, selCharH);
    Char_selectP2 = Char1_select_2;
    Char_loseP2 = Char1_lose;
  }
  if (c2 == 1){
    rect(startSelX+selCharW, startSelY, selCharW, selCharH);
    Char_selectP2 = Char2_select_2;
    Char_loseP2 = Char2_lose;
  }
  if (c2 == 2){
    rect(startSelX+2*selCharW, startSelY, selCharW, selCharH);
    Char_selectP2 = Char3_select_2;
    Char_loseP2 = Char3_lose;
  }
  if (c2 == 3){
    rect(startSelX-selCharW, startSelY, selCharW, selCharH);
    Char_selectP2 = Char4_select_2;
    Char_loseP2 = Char4_lose;
  }

  if (enter){
    if(!selCharCheckP2){
    decide.play();
    decide.rewind();
    }
    selCharCheckP2 = true;
  }
}

void initChara() {
  for (int i = 0; i < charaP1.length; i++) {
    charaP1[i] = i;
    charaP2[i] = i;
  }
}
