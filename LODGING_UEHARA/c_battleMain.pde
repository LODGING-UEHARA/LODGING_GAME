void BATTLE() {
  stanby.rewind();
  battle_bgm.play();
  
  background(background1);
  if(x<=blockWid){
      dx = -5;
      dy = 5*(dy/abs(dy));
      P1_hit.play();
      frameRate(10);
      if(c2 == 3){
      background(Ryugokusatu);
      kyuin.play();
      }
    }else if(x>=width-blockWid){
      dx = 5;
      dy = 5*(dy/abs(dy));
      P2_hit.play();
      frameRate(10);
      if(c1 == 3){
      background(Ryugokusatu);
      kyuin.play();
      }
    }else{
      frameRate(60);
    }
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
    fill(23, 63, 255);
    text("5", width/2+5, height/3+5);
    fill(255, 182, 93);
    text("5", width/2, height/3);
  }
  if (60*1 <= count && count < 60*2) {
    fill(23, 63, 255);
    text("4", width/2+5, height/3+5);
    fill(255, 182, 93);
    text("4", width/2, height/3);
  }
  if (60*2 <= count && count < 60*3) {
    fill(23, 63, 255);
    text("3", width/2+5, height/3+5);
    fill(255, 182, 93);
    text("3", width/2, height/3);
  }
  if (60*3 <= count && count < 60*4) {
    fill(23, 63, 255);
    text("2", width/2+5, height/3+5);
    fill(255, 182, 93);
    text("2", width/2, height/3);
  }
  if (60*4 <= count && count < 60*5) {
    fill(23, 63, 255);
    text("1", width/2+5, height/3+5);
    fill(255, 182, 93);
    text("1", width/2, height/3);
  }
  if (60*5 <= count && count < 60*6) {
    fill(23, 63, 255);
    text("FIGHT!", width/2+5, height/3+5);
    fill(255, 182, 93);
    text("FIGHT!", width/2, height/3);
    fight.play();
  }
  
  if (count > 60 * 6) {
    checkBlocksP1();
    checkBlocksP2();

    x += dx;
    y += dy;

    fill(0, 255, 255);
    if (dx<0 && dy<0){
      scale(-1,-1);
      image(hadouken,-x-b_w, -y-b_h, b_w, b_h);
      scale(-1,-1);
    }else if(dx<0 && dy>0){
      scale(-1,1);
      image(hadouken,-x-b_w, y, b_w, b_h);
      scale(-1,1);
    }else if(dx>0 && dy<0){
      scale(1,-1);
      image(hadouken,x, -y-b_h, b_w, b_h);
      scale(1,-1);
    }else{
      image(hadouken,x, y, b_w, b_h);
    }
    
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
