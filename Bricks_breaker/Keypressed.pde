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
      click.rewind();
      click.play();
      mode = pause;
    }
    if ( key == 'd') {
      bypos = 600;
      bxpos = 550;
    }
  }

  if ( mode == pause) {
    if ( key == 'r') {
      click.rewind();
      click.play();
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

void mousePressed() {
  click.rewind();
  click.play();
  if ( mode == intro) {
    if ( mouseX > 500 && mouseX < 700 && mouseY > 350 && mouseY < 450) {
      mode = game;
    }
  }

  if ( mode == gameover) {
    if ( mouseX > 1000 && mouseX < 1200 && mouseY > 700 && mouseY < 800) {
      mode = intro;
    }
  }
}
