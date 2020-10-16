void game() {
  background(152, 218, 247); 
  fill(0);
  textSize(20);
  text("Score:" + score, width/2, 50);
  text("Lives:" + lives, width/2, 100);
  
  //pause button
  stroke(0);
  fill(200);
  rect(100, 100, 100, 100);

  //display target
  fill(selectedColor);
  strokeWeight(5);
  circle(x, y, thickness);
  
  //moving
  x = x + vx;
  y = y + vy;
  
  //bouncing
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height-d/2) {
    vy = vy * -1;
}
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < 50) {
  score = score + 1;
  vx = vx * 1.1;
  vx = vy * 1.1;
  coin.rewind();
  coin.play();
  } else if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
  
  }else {
 lives = lives - 1;
if (lives == 0); 
mode = GAMEOVER;
 bump.rewind();
 bump.play();

}

  if (dist(mouseX, mouseY, 100, 100) <thickness){
    mode = PAUSE;

  }
  if (score>highscore) {
   highscore = score;
  
}
}
