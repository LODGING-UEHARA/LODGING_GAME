void BATTLE() {
  background(0);
  fill(255, 0, 255);
  showBlocksP1();
  showBlocksP2();

  fill(255, 0, 0);
  racketP1();
  fill(0, 0, 255);
  racketP2();

  count++;
  fill(255, 0, 0);
  textAlign(CENTER, CENTER);
  textSize(150);
  if (60*0 <= count && count < 60*1) {
    text("5", width/2, height/3);
  }
  if (60*1 <= count && count < 60*2) {
    text("4", width/2, height/3);
  }
  if (60*2 <= count && count < 60*3) {
    text("3", width/2, height/3);
  }
  if (60*3 <= count && count < 60*4) {
    text("2", width/2, height/3);
  }
  if (60*4 <= count && count < 60*5) {
    text("1", width/2, height/3);
  }
  if (60*5 <= count && count < 60*6) {
    text("FIGHT!", width/2, height/3);
  }
  
  if (count > 60 * 6) {
    checkBlocksP1();
    checkBlocksP2();

    x += dx;
    y += dy;

    fill(0, 255, 255);
    rect(x, y, b_w, b_h);

    if (x + dx < 0) {
      state = RESULT;
      winCheckNum = 2;
    } else if (x + b_w + dx >=width) {
      state = RESULT;
      winCheckNum = 1;
    }
    if (y + dy < 0 || y + b_h + dy >= height) {
      dy = -dy;
    }
  }
}
