import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;

AudioPlayer select_bgm;
AudioPlayer battle_bgm;
AudioPlayer select;
AudioPlayer stanby;
AudioPlayer decide;
AudioPlayer kyuin;
AudioPlayer P1_attach;
AudioPlayer P2_attach;
AudioPlayer Char1_attach;
AudioPlayer Char2_attach;
AudioPlayer Char3_attach;
AudioPlayer Char4_attach;
AudioPlayer P1_hit;
AudioPlayer P2_hit;
AudioPlayer Char1_hit;
AudioPlayer Char2_hit;
AudioPlayer Char3_hit;
AudioPlayer Char4_hit;
AudioPlayer Char1_win;
AudioPlayer Char2_win;
AudioPlayer Char3_win;
AudioPlayer Char4_win;
AudioPlayer fight;

PImage logo;
PImage Char_battle;
PImage Char_selectP1;
PImage Char_selectP2;
PImage Char1_select_1;
PImage Char1_select_2;
PImage Char2_select_1;
PImage Char2_select_2;
PImage Char3_select_1;
PImage Char3_select_2;
PImage Char4_select_1;
PImage Char4_select_2;
PImage Char1_battle;
PImage Char2_battle;
PImage Char3_battle;
PImage Char4_battle;
PImage Char_loseP1;
PImage Char_loseP2;
PImage Char1_lose;
PImage Char2_lose;
PImage Char3_lose;
PImage Char4_lose;
PImage hadouken;
PImage background1;
PImage stage1;
PImage Ryugokusatu;
PImage select_back;
PImage block;

PFont Arcade;

int blockP1[] = new int[10];//Player1 block
int blockP2[] = new int[10];//Player2 block
int charaP1[] = new int[3];
int charaP2[] = new int[3];

String name[] = {"Sanjay","Tack","Dou.Dou.","Ryuki"};

float b_w = 40, b_h = 40 ;//ball width&height
float P1w = 70, P1h = 120;//Player1 width&height
float P2w = 70, P2h = 120;//Player2 width&height

float blockWid = 105, blockHei;
int windowWidth = 1400, windowHeight = 820;
float r_x1 = 270 + P1w;
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
  
  logo = loadImage("logo_04.png");
  Char1_select_1 = loadImage("sako_icon.png");
  Char1_select_2 = loadImage("sako_select_02_NO_CHIKUBI_ver.png");
  Char2_select_1 = loadImage("takumi_icon.png");
  Char2_select_2 = loadImage("takumi_select_03.png");
  Char3_select_1 = loadImage("masato_icon.png");
  Char3_select_2 = loadImage("masato_select_03.png");
  Char4_select_2 = loadImage("ryu_select_04.png");
  Char_selectP1 = Char2_select_2;
  Char_selectP2 = Char2_select_2;
  Char1_battle = loadImage("sako_battle_02.png");
  Char2_battle = loadImage("takumi_battle_06.png");
  Char3_battle = loadImage("masato_battle_03.png");
  Char4_battle = loadImage("ryu_battle_02.png");
  Char1_lose = loadImage("sako_lose_02.png");
  Char2_lose = loadImage("takumi_lose_02.png");
  Char3_lose = loadImage("masato_lose_02.png");
  Char4_lose = loadImage("ryu_lose_02.png");
  hadouken = loadImage("hadouken2.png");
  background1 = loadImage("battle_bg_07.png");
  background1.resize(1400,820);
  select_back = loadImage("Select_BG_03.png");
  select_back.resize(1400,820);
  stage1 = loadImage("map_01.png");
  Ryugokusatu = loadImage("ryugokusatu.png");
  Ryugokusatu.resize(1400,820);
  block = loadImage("block_02.png");
  
  Arcade = createFont("Arcade Regular.ttf",70);
  textFont(Arcade);
  
  battle_bgm=minim.loadFile("tatakainoyoruni.mp3");
  select_bgm=minim.loadFile("select_bgm.mp3");
  select=minim.loadFile("select.mp3");
  stanby=minim.loadFile("battle_stanby.mp3");
  decide=minim.loadFile("decide.mp3");
  kyuin=minim.loadFile("kyuin.mp3");
  Char1_attach=minim.loadFile("Char1_attach.mp3");
  Char2_attach=minim.loadFile("Char2_attach.mp3");
  Char3_attach=minim.loadFile("Char3_attach.mp3");
  Char4_attach=minim.loadFile("Char4_attach.mp3");
  Char1_hit=minim.loadFile("Char1_hit.mp3");
  Char2_hit=minim.loadFile("Char2_hit.mp3");
  Char3_hit=minim.loadFile("Char3_hit.mp3");
  Char4_hit=minim.loadFile("Char4_hit.mp3");
  Char1_win=minim.loadFile("Char1_win.mp3");
  Char2_win=minim.loadFile("Char2_win.mp3");
  Char3_win=minim.loadFile("Char3_win.mp3");
  Char4_win=minim.loadFile("Char4_win.mp3");
  fight=minim.loadFile("Fight.mp3");
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

void stop(){
select_bgm.close();
battle_bgm.close();
select.close();
stanby.close();
decide.close();
kyuin.close();
P1_attach.close();
P2_attach.close();
Char1_attach.close();
Char2_attach.close();
Char3_attach.close();
Char4_attach.close();
P1_hit.close();
P2_hit.close();
Char1_hit.close();
Char2_hit.close();
Char3_hit.close();
Char4_hit.close();
Char1_win.close();
Char2_win.close();
Char3_win.close();
Char4_win.close();
fight.close();
minim.stop();
super.stop();
}
