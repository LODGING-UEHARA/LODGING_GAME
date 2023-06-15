void keyPressed() {
  if (key == 'w') w  = true;
  if (key == 'z') z = true;
  if (key == 'i') i  = true;
  if (key == 'm') m = true;

  if (key == 'a') a = true;
  if (key == 's') s = true;
  if (key == 'd') d = true;

  if (key == 'j') j = true;
  if (key == 'k') k = true;
  if (key == 'l') l = true;

  if (key == ENTER) enter = true;
  if (key == CODED) if (keyCode == SHIFT) shift = true;
}

void keyReleased() {
  if (key == 'w') w  = false;
  if (key == 'z') z = false;
  if (key == 'i') i = false;
  if (key == 'm') m = false;

  if (key == 'a') a = false;
  if (key == 's') s = false;
  if (key == 'd') d = false;

  if (key == 'j') j = false;
  if (key == 'k') k = false;
  if (key == 'l') l = false;


  if (key == ENTER) enter = false;
  if (key == CODED) if (keyCode == SHIFT) shift = false;
}
