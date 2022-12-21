void setup()
{
  size(400, 500);
  background(#D3E8E3);
  frameRate(6) ;
  fill(0);
  rect(30,20,30,20);
  textSize(64);
textAlign(CENTER);
}
void draw() {
  noStroke();
  fill(0, random(0, 180), random(0, 180), 30);
  rect(random(0, 400), random(100, 500), 70, 70);
  if (mousePressed) {
    fill(255);
    rect(random(0, 300), random(0, 500), 70, 70);
  }
  if (keyPressed && (key == CODED)) {
    fill(225,0,225);
  rect(30,20,30,20);
  }
  else if (keyCode == RIGHT) {
    fill(0);
    rect(30,20,30,20);
  }
  text(key, 60, 80);
      

}
