//Jerry Feng
//2022-05-05
//2-3


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

color red = #FF0000;
color yellow = #FFFF00;
color green = #09B20A;

color clr;

PImage lava2;


void setup() {
  size(1200, 800);
  mode = intro;
  
  lava2 = loadImage("lava.jpg");

  
  numberofframes = 34;
  gif = new PImage[numberofframes];
  
  int r = 0;
  while ( r < numberofframes ) {
    gif[r] = loadImage("frame_" +r+"_delay-0.06s.gif");
    r++;
  }
    
  
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
