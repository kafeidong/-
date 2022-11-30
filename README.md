# -

int []colors={#F51B1B, #F2E822, #22A4F2};
void setup() {
  size(600, 600);
  background(0);
  frameRate(1);
}
void draw() {
  for (int i=0; i<20; i++) {

    fill (colors[(int)random(0, 3)]);
    noStroke();
    rect(60*i, 0, random(5, 30), random(40, height));
    rect(0, 70*i, random(40, width), random(5, 30));
    fill(255);
    noStroke();
    rect(80*i,0,random(1,60),random(40, height));
  }
}
