void Char1Setting() {
  if (c1==0) {
    P1w = 70;
    P1h = 200;//Player1 width&height
    bs1 = 20;
    Char_battle = Char3_battle;
  }
  if (c2==0) {
    P2w = 70;
    P2h = 200;//Player2 width&height
    bs2 = 20;
    Char_battle = Char3_battle;
  }
}

void Char2Setting() {
  if (c1==1) {
    P1w = 70;
    P1h = 120;//Player1 width&height
    spe1 = 1.65;
    Char_battle = Char3_battle;
  }
  if (c2==1) {
    P2w = 70;
    P2h = 120;//Player2 width&height
    spe2 = 1.65;
    Char_battle = Char3_battle;
  }
}

void Char3Setting() {
  if (c1==2) {
    P1w = 48;
    P1h = 120;//Player1 width&height
    bs1 = 6;
    Char_battle = Char3_battle;
  }
  if (c2==2) {
    P2w = 48;
    P2h = 120;//Player2 width&height
    bs2 = 6;
    Char_battle = Char3_battle;
  }
}

void Char4Setting() {
  if (c1==3) {
    P1w = 100;
    P1h = 250;//Player1 width&height
    spe1 = 1.25;
    bs1 = 12.5;
    Char_battle = Char3_battle;
  }
  if (c2==3) {
    P2w = 100;
    P2h = 250;//Player2 width&height
    spe2 = 1.25;
    bs2 = 12.5;
    Char_battle = Char3_battle;
  }
}
