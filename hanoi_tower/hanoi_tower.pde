import g4p_controls.*;
import java.awt.*;
Hanoi hanoi;
Disk[] disk;
Rod rod;

int boxSelect;

void setup() {
  size(1000, 500);
  createGUI();
  hanoi = new Hanoi();
  rod = new Rod(2, 2);

  disk = new Disk[10];
  for (int i = 0; i<disk.length; i++) {
    disk[i] = new Disk(i);
  }
}

void draw() {
  background(255);
  rod.displayRod();
  println(disk.length);
  for (int i = 0; i<disk.length; i++) {
    disk[i].display();
  }
}

void Solve() {
  boxSelect = Integer.parseInt(DiskSelectText.getText());
  hanoi.hanoii(boxSelect, "A", "B", "C");
  println(hanoi.moveCount);
  println(hanoi.time + " ms");
  println(boxSelect);
}
