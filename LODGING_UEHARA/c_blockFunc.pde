float blockWid = 105, blockHei;

void initBlocksP1() {
  for (int i = 0; i < blockP1.length ; i++) {
    blockP1[i] = 1;
  }
  blockHei = height / blockP1.length;
}

void initBlocksP2() {
  for (int i = 0; i < blockP2.length ; i++) {
    blockP2[i] = 1;
  }
  blockHei = height / blockP2.length;
}

void showBlocksP1() {
  for (int i = 0; i < blockP1.length ; i++) {
    if (blockP1[i] > 0) {
      rect(0, i * blockHei, blockWid, blockHei);
    }
  }
}

void showBlocksP2() {
  for (int i = 0; i < blockP2.length ; i++) {
    if (blockP2[i] > 0) {
      rect(width - blockWid, i * blockHei, blockWid, blockHei);
    }
  }
}
