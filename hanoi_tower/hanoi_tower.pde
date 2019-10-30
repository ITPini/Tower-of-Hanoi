import g4p_controls.*;
import java.awt.*;
Hanoi hanoi;
Disc disc;
Rod rod;

void setup() {
  size(500, 500);
  createGUI();
  hanoi = new Hanoi();
  disc = new Disc();
  rod = new Rod();
  hanoi.hanoii(3, "A", "B", "C");
  println(hanoi.moveCount);
  println(hanoi.time + " ms");
}



void draw() {
  displayRod();
}
