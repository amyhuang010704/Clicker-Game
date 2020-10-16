
 void mouseDragged(){
    if (mouseX > 100 && mouseX < 700 && mouseY > 280 && mouseY < 320){
  sliderX = mouseX; 
    }

}


void mouseReleased() {
 if (mode == INTRO) {
  introClicks();
} else if (mode == GAME) {
  gameClicks();
} else if (mode == PAUSE) {
  pauseClicks();
} else if (mode == GAMEOVER){
  gameoverClicks();
} else if (mode == OPTIONS){
optionsClicks();
}
//options
 if (mouseX > 100 && mouseX < 700 && mouseY > 280 && mouseY < 320){
  sliderX = mouseX; 
  map(sliderX, 100, 700, 10, 20);
}
  if (mouseX > 150 && mouseX < 300 && mouseY > 50 && mouseY < 190){
   mode = GAME;
   selectedColor = purple;
 } 
  if (mouseX > 450 && mouseX < 650 && mouseY > 50 && mouseY < 190){
   mode = GAME;
   selectedColor = blue;
 } 
  if (mouseX > 650 && mouseX < 800 && mouseY > 50 && mouseY < 190){
   mode = GAME;
   selectedColor = yellow;
  }


 

} //end of void tactile ====================================================
  
