float spe1 = 1.055;
float spe2 = 1.055;
float bs1 = 10;
float bs2 = 10;


boolean racketP1() {

  boolean hit = false;
  if (c1==0) Char1Setting();
  if (c1==1) Char2Setting();
  if (c1==2) Char3Setting();
  if (c1==3) Char4Setting();
  
  if (w) {
    r_y1 -= P1h / bs1;
  }
  if (z) {
    r_y1 += P1h / bs1;
  }
  if (r_y1 < 0) {
    r_y1 = 0;
  }
  if (r_y1 + P1h > height) {
    r_y1 = height - P1h;
  }
  
  if (blockHitCheck(r_x1 - P1w, r_y1, P1w, P1h, x, y, b_w, b_h, dx, dy) == 1) {
    dx = -dx * spe1;
    dy = dy * spe1;
    P1_attach.play();
    P1_attach.rewind();
  } else if (blockHitCheck(r_x1 - P1w, r_y1, P1w, P1h, x, y, b_w, b_h, dx, dy) == 2) {
    dx = dx * spe1;
    dy = -dy * spe1;
    P1_attach.play();
    P1_attach.rewind();
  } else if (blockHitCheck(r_x1 - P1w, r_y1, P1w, P1h, x, y, b_w, b_h, dx, dy) == 3) {
    dy = -dy;
    hit = true;
    P1_attach.play();
    P1_attach.rewind();
  }

  scale(-1,1);
  image(Char_battle,-r_x1, r_y1, P1w, P1h);
  scale(-1,1);
  return hit;
}


boolean racketP2() {
  boolean hit = false;
  if (c2==0) Char1Setting();
  if (c2==1) Char2Setting();
  if (c2==2) Char3Setting();  
  if (c2==3) Char4Setting();
 
  if (i) {
    r_y2 -= P2h / bs2;
  }
  if (m) {
    r_y2 += P2h / bs2;
  }

  if (r_y2 < 0) {
    r_y2 = 0;
  }
  if (r_y2 + P2h > height) {
    r_y2 = height - P2h;
  }
  if (blockHitCheck(r_x2, r_y2, P2w, P2h, x, y, b_w, b_h, dx, dy) == 1) {
    dx = -dx * spe2;
    dy = dy * spe2;
    P2_attach.play();
    P2_attach.rewind();
  } else if (blockHitCheck(r_x2, r_y2, P2w, P2h, x, y, b_w, b_h, dx, dy) == 2) {
    dx = dx * spe2;
    dy = -dy * spe2;
    P2_attach.play();
    P2_attach.rewind();
  } else if (blockHitCheck(r_x2, r_y2, P2w, P2h, x, y, b_w, b_h, dx, dy) == 3) {
    dy = -dy;
    hit = true;
    P2_attach.play();
    P2_attach.rewind();
  }
  noStroke();
  image(Char_battle,r_x2, r_y2, P2w, P2h);
  return hit;
}
