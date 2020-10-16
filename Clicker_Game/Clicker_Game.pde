import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Amy Huang
//10/10/20
//1-2B

//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;


//TARGET VARIABLES-----------------------------------------------------------------------
float x, y, d;
float vx, vy; //target velocity
float sliderX;
float thickness;
float sizeofcircle;
int score, lives;
int highscore;
//pallette
color pink   = #E3CCD4;
color purple = #D6CCE3;
color yellow = #E3DECC;
color blue = #CCD6E3;
color selectedColor;
 
 //sound variables
 Minim minim;
 AudioPlayer theme, coin, bump, gameover;

void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  sliderX = 100;
  thickness = 10;
  d = thickness;
  reset();

  
  mode = INTRO;
  
 //target initialization
 x = width/2;
 y = height/2;
 d = 100;
 vx = random(-5,5);
 vy = random(-5,5);
 score = 0;
 lives = 1;
 highscore = 0;
//minim
minim = new Minim ( this );
minim = new Minim(this);
theme = minim.loadFile("/Users/amyhuang/Downloads/Super Mario Bros. medley.mp3");
coin = minim.loadFile("/Users/amyhuang/Documents/Processing/Clicker_Game/Mario Coin.WAV");
bump = minim.loadFile("/Users/amyhuang/Documents/Processing/Clicker_Game/Ball_Bounce-Popup_Pixels-172648817.wav");
gameover = minim.loadFile("/Users/amyhuang/Documents/Processing/Clicker_Game/gameover.mp3");
}

void draw(){
  if (mode == INTRO) {
  intro();
} else if (mode == GAME) {
  game();
} else if (mode == PAUSE) {
  pause();
} else if (mode == GAMEOVER){
  gameover();
} else if (mode == OPTIONS){
  options();
} else {
  println("Error: Mode = " + mode);
 }

}
