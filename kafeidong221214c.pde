int num =20;

float step, sz, offSet, theta, angle;

void setup () {

  size (800, 800);

  strokeWeight (5);
  step = 22;
}

void draw() {
  background (20);

  translate(width/2, height*.75);

  rotate (PI);
  angle=0;
  for (int i=0; i<num; i++) {

    stroke (255);

    noFill();

    sz = i*step;

    float offSet = TWO_PI/num*i;

    float arcEnd = map(sin(theta+offSet), -1.5, -2.8, PI,TWO_PI);

      arc(1, 189, sz, sz, arcEnd, PI);
  }
  colorMode (RGB);
  resetMatrix();
  theta +=.0523;
}
