boolean checkAndShowRacketP1(float r_x) {
  boolean hit = false;
  float r_y1 = height/2 + P1h/2;
  switch (key) {
  case 'w':
    r_y1 -= P1h / 2;
    break;
  case 'z':
    r_y1 += P1h / 2;
    break;
  }
  
  if (r_y1 + P1h > height) {
    r_y1 = height - P1h;
  }
  if (blockHitCheck(r_x, r_y1, P1w, P1h, x, y, b_w, b_h, dx, dy) > 0) {
    dy = -2;
    hit = true;
  }
  rect(r_x, r_y1, P1w, P1h);
  return hit;
}

boolean checkAndShowRacketP2(float r_x) {
  boolean hit = false;
  float r_y2 = height/2 + P2h/2;
  switch (key) {
  case 'i':
    r_y2 -= P2h / 2;
    break;
  case 'm':
    r_y2 += P2h / 2;
    break;
  }

  if (r_y2 + P2h > height) {
    r_y2 = height - P2h;
  }
  if (blockHitCheck(r_x, r_y2, P2w, P2h, x, y, b_w, b_h, dx, dy) > 0) {
    dy = -2;
    hit = true;
  }
  rect(r_x, r_y2, P2w, P1h);
  return hit;
}
