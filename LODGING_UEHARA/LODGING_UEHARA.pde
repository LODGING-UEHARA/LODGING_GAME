import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;

int blockP1[] = new int[10];//Player1 block
int blockP2[] = new int[10];//Player2 block
int charaP1[] = new int[3];
int charaP2[] = new int[3];

float b_w = 40, b_h = 40 ;//ball width&height
float P1w = 70, P1h = 120;//Player1 width&height
float P2w = 70, P2h = 120;//Player2 width&height

float blockWid = 105, blockHei;
int windowWidth = 1400, windowHeight = 820;
float r_x1 = 270;
float r_y1 = 350;
float r_x2 = windowWidth - (270 + P2w);
float r_y2 = 350;
float x, y, dx, dy;
boolean w, z, i, m, a, s, d, j, k, l, f, h , enter, space, shift;
int winCheckNum;
int  count = 0;

/*
Game state Control num
 */
int state;
final int TITLE = 0;
final int CHARACTERSELECT = 1;
final int BATTLE = 2;
final int RESULT =3;

void setup() {
  size(1400, 820);
  minim = new Minim(this);
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
