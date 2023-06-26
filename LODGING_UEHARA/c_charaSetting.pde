void Char1Setting() {
  if (c1==0) {
    P1w = 65;
    P1h = 200;//Player1 width&height
    bs1 = 20;
    Char_battle = Char1_battle;
    P1_attach = Char1_attach;
    P1_hit = Char1_hit;
  }
  if (c2==0) {
    P2w = 65;
    P2h = 200;//Player2 width&height
    bs2 = 20;
    Char_battle = Char1_battle;
    P2_attach = Char1_attach;
    P2_hit = Char1_hit;
  }
}

void Char2Setting() {
  if (c1==1) {
    P1w = 56;
    P1h = 120;//Player1 width&height
    spe1 = 1.25;
    Char_battle = Char2_battle;
    P1_attach = Char2_attach;
    P1_hit = Char2_hit;
  }
  if (c2==1) {
    P2w = 56;
    P2h = 120;//Player2 width&height
    spe2 = 1.25;
    Char_battle = Char2_battle;
    P2_attach = Char2_attach;
    P2_hit = Char2_hit;
  }
}

void Char3Setting() {
  if (c1==2) {
    P1w = 48;
    P1h = 120;//Player1 width&height
    bs1 = 6;
    Char_battle = Char3_battle;
    P1_attach = Char3_attach;
    P1_hit = Char3_hit;
  }
  if (c2==2) {
    P2w = 48;
    P2h = 120;//Player2 width&height
    bs2 = 6;
    Char_battle = Char3_battle;
    P2_attach = Char3_attach;
    P2_hit = Char3_hit;
  }
}

void Char4Setting() {
  if (c1==3) {
    P1w = 79;
    P1h = 250;//Player1 width&height
    spe1 = 1.25;
    bs1 = 12.5;
    Char_battle = Char4_battle;
    P1_attach = Char4_attach;
    P1_hit = Char4_hit;
  }
  if (c2==3) {
    P2w = 79;
    P2h = 250;//Player2 width&height
    spe2 = 1.25;
    bs2 = 12.5;
    Char_battle = Char4_battle;
    P2_attach = Char4_attach;
    P2_hit = Char4_hit;
  }
}
