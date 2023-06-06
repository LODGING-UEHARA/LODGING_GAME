import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;

int blockP1[] = new int[7];//Player1 block
int blockP2[] = new int[7];//Player2 block

float b_w = 40, b_h = 40 ;//ball width&height
float P1w = 70, P1h = 120;//Player1 width&height
float P2w = 70, P2h = 120;//Player2 width&height

float x, y, dx, dy;

/*
Game state Control num
 */
int state;
final int TITLE = 0;
final int CHARACTERSELECT = 1;
final int BATTLE = 2;
final int RESULT =3;

void setup() {
  minim = new Minim(this);
  size(1400, 840);
  initBall();
  initBlocksP1();
  initBlocksP2();
}

void draw() {
  switch(state) {
  case TITLE:
    TITLE();
    break;
  case CHARACTERSELECT:
    CHARACTERSELECT();
    break;
  case BATTLE:
    BATTLE();
    break;
  case RESULT:
    RESULT();
    break;
  }
}
