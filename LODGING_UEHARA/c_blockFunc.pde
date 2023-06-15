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

void checkBlocksP1() {
  for (int i = 0; i < blockP1.length ; i++) {
    if (blockP1[i] > 0) {
      int ret = blockHitCheck(0,i*blockHei,blockWid,blockHei,x,y,b_w,b_h,dx,dy);
      if (ret > 0) {
        if (ret == 1) {
          dx = -dx * 0.95;
          dy = dy * 0.95;
          blockP1[i]--;
        } else if (ret == 2) {
          dx = dx * 0.95;
          dy = -dy * 0.95;
          blockP1[i]--;
        } else if (ret == 3) {
          dx = dx * 0.95;
          dy = -dy * 0.95;
          blockP1[i]--;
        }
        return;
      }
    }
  }  
}

void checkBlocksP2() {
  for (int i = 0; i < blockP2.length ; i++) {
    if (blockP2[i] > 0) {
      int ret = blockHitCheck(width - blockWid,i*blockHei,blockWid,blockHei,x,y,b_w,b_h,dx,dy);
      if (ret > 0) {
        if (ret == 1) {
          dx = -dx * 0.95;
          dy = dy * 0.95;
          blockP2[i]--;
        } else if (ret == 2) {
          dx = dx * 0.95;
          dy = -dy * 0.95;
          blockP2[i]--;
        } else if (ret == 3) {
          dx = dx * 0.95;
          dy = -dy * 0.95;
          blockP2[i]--;
        }
        return;
      }
    }
  }  
}


void showBlocksP1() {
  for (int i = 0; i < blockP1.length ; i++) {
    if (blockP1[i] > 0) {
      stroke(0);
      strokeWeight(1);
      rect(0, i * blockHei, blockWid, blockHei);
    }
  }
}

void showBlocksP2() {
  for (int i = 0; i < blockP2.length ; i++) {
    if (blockP2[i] > 0) {
      stroke(0);
      strokeWeight(1);
      rect(width - blockWid, i * blockHei, blockWid, blockHei);
    }
  }
}
