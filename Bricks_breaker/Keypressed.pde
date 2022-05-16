boolean ai = false;

void keyPressed() {
  
  if ( mode == game) {
    if ( key == 'a') {
      ai = true;
    }
  }
  
  if ( ai == true) {
    if ( key == 's') {
      ai = false;
    }
  }
  
  if (key == CODED) {
    if ( keyCode == RIGHT) {
      right = true;
      left = false;
    }

    if ( keyCode == LEFT) {
      left = true;
      right = false;
    }
  }

  if ( mode == game) {
    if ( key == ' ') {
      mode = pause;
    }
    if ( key == 'd') {
      bypos = 600;
      bxpos = 550;
    }
  }

  if ( mode == pause) {
    if ( key == 'r') {
      mode = game;
    }
  }
}

void keyReleased() {
  if ( right == true) {
    right = false;
  }

  if ( left == true) {
    left = false;
  }
}
