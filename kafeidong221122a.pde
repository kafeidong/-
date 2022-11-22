void setup()
{
  size(400,500);
 background(#D3E8E3);
frameRate(6) ;

}
void draw()
{
  noStroke();
  fill(0,random(0,180),random(0,180),30);
  rect(random(0,400),random(0,500),70,70);
}
