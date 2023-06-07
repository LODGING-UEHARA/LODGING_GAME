void racketP1() {
  if (w) {
    r_y1 -= P1h / 7;
  }
  if (z) {
    r_y1 += P1h / 7;
  }
  if (r_y1 < 0) {
    r_y1 = 0;
  }
  if (r_y1 + P1h > height) {
    r_y1 = height - P1h;
  }
  rect(r_x1, r_y1, P1w, P1h);
}

void racketP2() {
  if (i) {
    r_y2 -= P2h / 7;
  }
  if (m) {
    r_y2 += P2h / 7;
  }

  if (r_y2 < 0) {
    r_y2 = 0;
  }
  if (r_y2 + P2h > height) {
    r_y2 = height - P2h;
  }
  rect(r_x2, r_y2, P2w, P2h);
}

boolean w, z, i, m;
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
