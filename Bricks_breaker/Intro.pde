
void intro() {
  introscreen.play();
  gameovere.pause();
  end.pause();
  win = false;
  lava = false;
  pxpos = 600;
  pypos = 810;
  bxpos = 500;
  bypos = 600;
  pwxpos = 600;
  pwypos = 600;
  hit1 = 0;
  go = false;
  start = false;
  ability = 0;
  powerup = 0;
  live = 5;
  score = 0;
  timer = 0;

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

  vx = 2;
  vy = 2;


  image(gif[r], 0, 0, width, height);
  r++;
  if (r == 34) {
    r = 0;
  }

  rectMode(CENTER);
  noFill();
  strokeWeight(6);
  stroke(255);
  if ( mouseX > 500 && mouseX < 700 && mouseY > 350 && mouseY < 450) {
    strokeWeight(10);
  } else {
    strokeWeight(6);
  }
  rect(600, 400, 200, 100);
  fill(255);
  textSize(50);
  textAlign(CENTER, CENTER);
  text( "Start", 600, 390);
}
