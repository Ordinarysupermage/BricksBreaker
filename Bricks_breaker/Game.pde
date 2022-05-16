int pxpos = 600;
int pypos = 810;
int bxpos = 500;
int bypos = 600;
int pwxpos = 600;
int pwypos = 600;
int hit1 = 0;
boolean go = false;
boolean start = false;

void game() {
  timer += 1;
  if ( timer > 200) {
    if ( live < 1) {
      mode = gameover;
      win = false;
    }
    bxpos += vx;
    bypos += vy;
  }
  if ( score > 170) {
    mode = gameover;
    win = true;
  }
  background(0);
  frameRate(200);
  

  ellipseMode(CENTER);
  ellipse( pxpos, pypos, 150, 150);
  ellipse( bxpos, bypos, 20, 20);

  if ( ai == true) {
    pxpos = bxpos;
  }


  if ( powerup == 1) {
    if ( pwypos < 785 || d2 > 90) {
      circle( pwxpos, pwypos, 30);
      go = true;
    }
  }
  if (go == true) {
    pwypos += 1;
  }
  if ( pwypos > 785) {
    go = false;
    pwypos = 600;
    powerup = 0;
  }

  if ( d2 < 90) {
    ability = int(random(1, 20));
    //ability = 1;
  }

  if ( ability == 1 || ability == 3 || ability == 6 || ability == 7 || ability == 10) {
    score += 3;
    ability =0;
  }

  if ( ability == 2 || ability == 17 || ability == 14 || ability == 13 || ability == 20) {
    live += 1;
  }

  //if ( ability == 4) {
  //  imageMode(CORNER);
  //  image( lava2, 0, 750, 1200, 50);
  //  lava = true;
  //}

  //if ( ability == 9 || ability == 11 || ability == 12|| ability == 15 || ability == 16 || ability == 18 || ability == 5 || ability == 8) {
  //  score += 1;
  //}

  if ( ability == 19) {
    pspeed = 8;
  }

  //if (lava == true) {
  //  if ( bypos > 735) {
  //    mode = gameover;
  //    win = false;
  //  }
  //}


  textAlign(CENTER, CENTER);
  textSize(50);
  text("Score " + score, pxpos, 600);
  textSize(30);
  text("lives " + live, pxpos, 650);


  d = dist(bxpos, bypos, pxpos, pypos);
  d2 = distance(pxpos, pypos, pwxpos, pwypos);
  

  if (d < 85) {
    vx = (bxpos - pxpos)/10.0;
    vy = (bypos - pypos)/10.0;
  }

  if ( right == true) {
    if ( pxpos < 1125) {
      pxpos += pspeed;
    }
  }

  if ( left == true) {
    if ( pxpos > 75) {
      pxpos -= pspeed;
    }
  }

  if (bxpos > 1185) {
    vx *= -1;
  }

  if (bxpos < 15) {
    vx *= -1;
  }

  if (bypos > 785) {
    vy = vy * -1;
    live -= 1;
  }

  if (bypos < 15) {
    vy = vy * -1;
  }

  if ( vy == 0) {
    vy = 1;
  }

  if ( vx == 0) {
    vx = 1;
  }


  int i = 0;

  while (i < n) {
    if ( i/n2 ==0) {
      fill( green);
    }
    if ( i/n2 == 1) {
      fill( yellow);
    }
    if ( i/n2 == 2) {
      fill( red);
    }

    if (alive[i] == true) {

      circle(x[i], y[i], brickd);
      if (dist(bxpos, bypos, x[i], y[i]) < 25) {
        vx = (bxpos - x[i])/8;
        vy = (bypos - y[i])/8;
        if ( i/n2 == 2 && counter1[i] == 3 ) {
          alive[i] = false;
          score += 1;
          powerup = int(random( 1, 10));
        }
        if ( i/n2 == 2) {
          counter1[i]++;
        }
        if ( i/n2 == 1 && counter2[i] == 2) {
          alive[i] = false;
          score += 1;
          powerup = int(random( 1, 10));
        }
        if ( i/n2 == 1) {
          counter2[i]++;
        }
        if ( i/n2 == 0) {
          alive[i] = false;
          score += 1;
        }
        //alive[i] = false;
      }
    }
    i = i+1;
  }
  fill(255);
}
