 void gameover() {
  background(196, 146, 167);
  strokeWeight(1);
  fill(0);
  textSize(100);
  text("GAME OVER :(", 400, 400);
  theme.pause();
  gameover.play();
 
//highscore
textSize(50);
fill(0);
text("HIGHSCORE: " + highscore, 250, 300);

}
void gameoverClicks() {
  reset();
  mode = INTRO;
}
