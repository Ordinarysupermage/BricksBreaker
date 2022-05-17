void gameover() {
  background(0);
  introscreen.pause();
  if ( win == false) {
    textSize(100);
    textAlign(CENTER, CENTER);
    fill(red);
    text("BUSTED", 600, 400);
    gameovere.play();
  }

  if ( win == true) {
    textSize(100);
    textAlign(CENTER, CENTER);
    fill(red);
    text("RESPECT++", 600, 400);
    end.play();
  }
  
  rectMode(CENTER);
  noFill();
  strokeWeight(6);
  stroke(255);
  if ( mouseX > 1000 && mouseX < 1200 && mouseY > 700 && mouseY < 800){
    strokeWeight(10);
  } else {
    strokeWeight(6);
  }
  rect( 1100, 750, 200, 100);
  
  textSize(50);
  textAlign(CENTER, CENTER);
  text( "Menu", 1100, 740);
}
