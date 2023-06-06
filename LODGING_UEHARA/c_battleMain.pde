void BATTLE() {
  background(0);
  fill(255, 0, 255);
  showBlocksP1();
  showBlocksP2();
  fill(255, 0, 0);
  checkAndShowRacketP1(300);
  fill(0, 0, 255);
  checkAndShowRacketP2(width - (300 + P2w));
  if (key == 'c') {
    state = RESULT;
  }
}
