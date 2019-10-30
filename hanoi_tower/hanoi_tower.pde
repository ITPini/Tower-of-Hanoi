import g4p_controls.*;
import java.awt.*;
Hanoi hanoi;
Disc disc;
Rod rod;

void setup() {
  size(1000, 500);
  createGUI();
  hanoi = new Hanoi();
  disc = new Disc();
  rod = new Rod(2,2);
  hanoi.hanoii(2, "A", "B", "C");
  println(hanoi.moveCount);
  println(hanoi.time + " ms");
}



void draw() {
  rod.displayRod();
}
