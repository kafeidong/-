float x = 0, y = 0;
float stepSize = 3.0;
String letters = "咖啡冻";
float fontSizeMin = 2;
float angleDistortion = 0.01;
int counter = 0;
 
PFont font;
void setup() {

  size(840, 880);
  background(255);
  smooth();
  cursor(CROSS);
 
 
  textAlign(LEFT);
  fill(0);
  
  font = createFont("DENG.TTF", 20);
  textFont(font);
}
 
void draw() {
  if (keyPressed) {
    
    /// @note 当前鼠标位置和字符输出位置的距离
    float d = dist(x,y, mouseX,mouseY); 
    textSize((fontSizeMin+d/2)/2); ///< 距离越大字体越大
    
    /// @note 选取新字符
    char newLetter = letters.charAt(counter);
    /// @note 该字符的宽度（半径）
    stepSize = textWidth(newLetter);
 
    if (d > stepSize) {
      /// @note 当前位置和字符输出位置的夹角
      float angle = atan2(mouseY-y, mouseX-x); 
 
      /// @note 在该位置绘制字符
      push();
         fill(x,y,random(255));
      translate(x, y);
      rotate(angle + random(angleDistortion));
      text(newLetter, 0, 0);
      pop();
      
      counter++;
      /// @note 越界重置
      if (counter > letters.length()-1) 
        counter = 0;
      
      /// @note 更新下一个字符输出位置
      x = x + cos(angle) * stepSize;
      y = y + sin(angle) * stepSize; 
    }
  }
}
 
void keyTyped() {
  if (key == 'r' || key == 'R')  background(255);
}
 
void keyPressed() {
 
  if (keyCode == 'r')  background(255);
  x=random(width);
  y=random(height);
  
}
