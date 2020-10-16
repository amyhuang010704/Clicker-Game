void intro() {

theme.play();
     
  background(207, 227, 204);
  rect(250, 550, 200, 100);
  rect(550, 550, 200, 100);
  strokeWeight(1);
  fill(0);
  textSize(72);
  text("CLICKER GAME", 400, 400);
  textSize(20);
  text("HARDMODE", 250, 550);
  text("SELECT MODES", 550, 550);
  text("CLICK 'SELECT MODES' FOR DIFFICULTY", 400, 650);
//tactile
if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 600);
fill(200);

  
 
}
void introClicks () {

    if (mouseX > 150 && mouseX < 350 && mouseY > 350 && mouseY < 650){
  mode = GAME;
    } else if (mouseX > 450 && mouseX < 650 && mouseY > 350 && mouseY < 650){
  mode = OPTIONS;
 }
    }
