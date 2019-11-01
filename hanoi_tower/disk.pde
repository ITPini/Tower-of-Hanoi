public class Disk {
  float number;
  float posX1;
  float posY1;
  float posX2;
  float posY2;

  Disk() {
    this.posX1 = width*0.25-75+(5*number);
    this.posY1 = height-(20*number);
    this.posX1 = width*0.25+80-(5*number);
    this.posY1 = height-(20*number+20);
  }

  Disk(float number) {
    this.number = number;
  }

  void display() {
    fill(100);
    rectMode(CORNERS);
    rect(width*0.25-75+(5*number), height-(20*number), width*0.25+80-(5*number), height-(20*number+20));
  }

  void move(float _t) {
    fill(100);
    rectMode(CORNERS);
    rect(width*_t-75+(5*number), height-(20*number), width*_t+80-(5*number), height-(20*number+20));
  }
}
