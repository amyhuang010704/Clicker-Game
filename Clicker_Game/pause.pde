void pause(){
  theme.pause();
  fill(0);
  text("PAUSED", 100, 100);
  stroke(0);
  text("PAUSED", 100, 100);


}
void pauseClicks () {
if (dist(mouseX, mouseY, 100, 100) < d/2){
   mode = GAME;
   theme.play();
     } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives <= 0) 
    mode = GAMEOVER;


   theme.play();
System.out.println("riht");
}
}
