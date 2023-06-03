import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;

int state;
final int TITLE = 0;
final int CHARACTERSELECT = 1;
final int BATTLE = 2;
final int RESULT =3;


void setup() {
  minim = new Minim(this);
  size(1400, 820);
}

void draw() {
  if (state == TITLE) {
    TITLE();
  } else if (state == CHARACTERSELECT) {
    CHARACTERSELECT();
  } else if (state == BATTLE) {
    BATTLE();
  } else if (state ==RESULT) {
    RESULT();
  }
}
