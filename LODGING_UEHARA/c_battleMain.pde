void BATTLE() {
  background(0);
  fill(255, 0, 255);
  showBlocksP1();
  showBlocksP2();
  fill(255, 0, 0);
  racketP1();
  fill(0, 0, 255);
  racketP2();
  if (key == 'c') {
    state = RESULT;
  }
}
