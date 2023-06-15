float selCharW = 150;
float selCharH = 150;
int c1 = 1, c2 = 1;
boolean selCharCheckP1 = false;
boolean selCharCheckP2 = false;


void selectCharaP1() {
  float startSelX = 125;
  float startSelY = 470;

  for (int i = 0; i < charaP1.length; i++) {
    textAlign(CENTER, CENTER);
    fill(255);
    textSize(45);
    if (i == 0) text("A", startSelX+i*selCharW+(selCharW/2), startSelY-50);
    if (i == 1) text("S", startSelX+i*selCharW+(selCharW/2), startSelY-50);
    if (i == 2) text("D", startSelX+i*selCharW+(selCharW/2), startSelY-50);
    stroke(0, 0, 0);
    strokeWeight(1);
    fill(0, 255, 255);
    rect(startSelX+i*selCharW, startSelY, selCharW, selCharH);
  }
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(45);
  text("Push SHIFT", startSelX+selCharW+(selCharW/2), 680);

  stroke(255, 0, 0);
  strokeWeight(7);
  fill(255, 255, 255, 0);
  if (!selCharCheckP1) {
    if (a) c1 = 0;
    else if (s) c1 = 1;
    else if (d) c1 = 2;
  }
  if (c1 == 0) rect(startSelX, startSelY, selCharW, selCharH);
  if (c1 == 1) rect(startSelX+selCharW, startSelY, selCharW, selCharH);
  if (c1 == 2) rect(startSelX+2*selCharW, startSelY, selCharW, selCharH);
  if (shift) selCharCheckP1 = true;
}

void selectCharaP2() {
  float startSelX = (width/2) + 125;
  float startSelY = 470;
  for (int i = 0; i < charaP1.length; i++) {
    textAlign(CENTER, CENTER);
    fill(255);
    textSize(45);
    if (i == 0) text("J", startSelX+i*selCharW+(selCharW/2), startSelY-50);
    if (i == 1) text("K", startSelX+i*selCharW+(selCharW/2), startSelY-50);
    if (i == 2) text("L", startSelX+i*selCharW+(selCharW/2), startSelY-50);
    stroke(0, 0, 0);
    strokeWeight(1);
    fill(0, 255, 255);
    rect(startSelX+i*selCharW, startSelY, selCharW, selCharH);
  }
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(45);
  text("Push ENTER", startSelX+selCharW+(selCharW/2), 680);

  stroke(255, 0, 0);
  strokeWeight(7);
  fill(255, 255, 255, 0);
  if (!selCharCheckP2) {
    if (j) c2 = 0;
    else if (k) c2 = 1;
    else if (l) c2 = 2;
  }
  if (c2 == 0) rect(startSelX, startSelY, selCharW, selCharH);
  if (c2 == 1) rect(startSelX+selCharW, startSelY, selCharW, selCharH);
  if (c2 == 2) rect(startSelX+2*selCharW, startSelY, selCharW, selCharH);
  if (enter) selCharCheckP2 = true;
}

void initChara() {
  for (int i = 0; i < charaP1.length; i++) {
    charaP1[i] = i;
    charaP2[i] = i;
  }
}
