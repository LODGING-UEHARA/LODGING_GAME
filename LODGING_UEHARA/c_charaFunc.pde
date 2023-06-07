boolean racketP1() {
  boolean hit = false;

  if (w) {
    r_y1 -= P1h / 10;
  }
  if (z) {
    r_y1 += P1h / 10;
  }
  if (r_y1 < 0) {
    r_y1 = 0;
  }
  if (r_y1 + P1h > height) {
    r_y1 = height - P1h;
  }

  if (blockHitCheck(r_x1, r_y1, P1w, P1h, x, y, b_w, b_h, dx, dy) == 1) {
    dx = -dx * 1.08;
    dy = dy * 1.08;
  } else if (blockHitCheck(r_x1, r_y1, P1w, P1h, x, y, b_w, b_h, dx, dy) == 2) {
    dx = dx * 1.08;
    dy = -dy * 1.08;
  } else if (blockHitCheck(r_x1, r_y1, P1w, P1h, x, y, b_w, b_h, dx, dy) == 3) {
    dy = -dy;
    hit = true;
  }
  rect(r_x1, r_y1, P1w, P1h);
  return hit;
}

boolean racketP2() {
  boolean hit = false;

  if (i) {
    r_y2 -= P2h / 10;
  }
  if (m) {
    r_y2 += P2h / 10;
  }

  if (r_y2 < 0) {
    r_y2 = 0;
  }
  if (r_y2 + P2h > height) {
    r_y2 = height - P2h;
  }
  if (blockHitCheck(r_x2, r_y2, P2w, P2h, x, y, b_w, b_h, dx, dy) == 1) {
    dx = -dx * 1.08;
    dy = dy * 1.08;
  } else if (blockHitCheck(r_x2, r_y2, P2w, P2h, x, y, b_w, b_h, dx, dy) == 2) {
    dx = dx * 1.08;
    dy = -dy * 1.08;
  } else if (blockHitCheck(r_x2, r_y2, P2w, P2h, x, y, b_w, b_h, dx, dy) == 3) {
    dy = -dy;
    hit = true;
  }
  rect(r_x2, r_y2, P2w, P2h);
  return hit;
}

void keyPressed() {
  if (key == 'w') w  = true;
  if (key == 'z') z = true;
  if (key == 'i') i  = true;
  if (key == 'm') m = true;
}

void keyReleased() {
  if (key == 'w') w  = false;
  if (key == 'z') z = false;
  if (key == 'i') i = false;
  if (key == 'm') m = false;
}
