import g4p_controls.*;
import java.awt.*;
Hanoi hanoi;
Disk disk;
Rod rod;

int boxSelect;

void setup() {
  size(1000, 500);
  background(250);
  createGUI();
  hanoi = new Hanoi();
  disk = new Disk();
  rod = new Rod(2,2);
}



void draw() {
  rod.displayRod();
  disk.displayDisk();
}


void Solve() {
  boxSelect = Integer.parseInt(DiskSelectText.getText());
  hanoi.hanoii(boxSelect, "A", "B", "C");
  println(hanoi.moveCount);
  println(hanoi.time + " ms");
  println(boxSelect);
}
