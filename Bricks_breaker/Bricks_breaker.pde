import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Jerry Feng
//2022-05-05
//2-3

//There are hot keys for checks and the pause menu
//Press Space bar to pause the game and R to resume
//Press A to activate an AI that automatically bricks the ball, Press S after AI is activated to disable it
//Powerups are randomized with different abilites and spawns randomly ( might take a few bricks for powerups to be triggered since it's randomized spawn);
//Good Powerups : Score + 1, Score + 2, Live + 1, Paddle speed increases by 8
//Bad Powerups : Lava( If touched by the ball, it's gameover no matter how many lives you have
//Lava will not stay there for the rest of the game after activation
//Intro music: Tuba by Jerry!
//Respect ++ page music: Tuba by Jerry! ( beat the game to hear the music)
//you need 171 points to beat the game
//Enjoy the game!

//If you can't beat the game but want to check out the music, switch mode to gameover on line 75 in this tab and paste: " win = true; " on line 76 to switch to the win screen

PImage[] gif;
int numberofframes;
int timer;
int mode;
final int intro = 1;
final int menu = 2;
final int game = 3;
final int gameover = 4;
final int options = 5;
final int pause = 6;
boolean win = false;
int powerup;
int ability;
int pspeed = 5;
boolean lava = false;

float vx = 2;
float vy = 2;

boolean left, right;
double d2;
double d;

int[] x;
int[] y;
boolean[] alive;
int [] counter1;
int [] counter2;
int [] counter3;
int brickd;
int n, n2;
int tempx, tempy;
int score;
int live = 5;
int r = 0;

color red = #FF0000;
color yellow = #FFFF00;
color green = #09B20A;

color clr;

PImage lava2;

Minim minim;
AudioPlayer introscreen, gameovere, click, end;

void setup() {
  size(1200, 800);
  mode = intro;
    
  
  lava2 = loadImage("lava.jpg");
  
  minim = new Minim(this);
  introscreen = minim.loadFile("Intro.mp3");
  end = minim.loadFile("End.mp3");
  gameovere = minim.loadFile("gameover.mp3"); 
  click = minim.loadFile("button.wav");

  numberofframes = 34;
  gif = new PImage[numberofframes];


  while ( r < numberofframes ) {
    gif[r] = loadImage("frame_" +r+"_delay-0.06s.gif");
    r++;
  }

  r = 0;

  brickd = 30;
  n =171;
  n2 = n/3;
  x = new int[n];
  y = new int[n];
  counter1 = new int[n];
  counter2 = new int[n];
  counter3 = new int[n];
  tempx = 60;
  tempy = 50;
  alive = new boolean[n];

  int i = 0;
  while ( i < n) {
    x[i] = tempx;
    y[i] = tempy;
    tempx += 60;
    alive[i] = true;
    if ( tempx > width - 20) {
      tempy += 40;
      tempx = 60;
    }
    i += 1;
  }
}

void draw() {








  if ( mode == intro) {
    intro();
  } else if (mode == menu) {
    menu();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == options) {
    options();
  } else if (mode == pause) {
    pause();
  }
}
