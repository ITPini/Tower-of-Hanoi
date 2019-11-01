import g4p_controls.*;
import java.awt.*;
Hanoi hanoi;
Disk[] disk;
Rod rod;

int boxSelect;

void setup() {
  size(1000, 500);
  background(255);
  createGUI();
  hanoi = new Hanoi();
  rod = new Rod(2, 2);
  rod.displayRod();
  }


void draw() {
}

void Solve() {
  background(255);
  hanoi.moveCount = 0;
  //hanoi.time;
  rod.displayRod();
  boxSelect = Integer.parseInt(DiskSelectText.getText());
  hanoi.hanoii(boxSelect, "A", "B", "C");
  disk = new Disk[boxSelect];
  for (int i = 0; i<disk.length; i++) {
    disk[i] = new Disk(i);
  }
  for (int i = 0; i<disk.length; i++) {
    disk[i].display();
  }
  /*background(255);
  rod.displayRod();
  for (int i = 0; i<=hanoi.moveCount; i++) {
    disk[i].move(0.75);
  }*/
  textSize(20);
  text("Amount of moves" + "" + "" + "=" + "" + hanoi.moveCount, 325, 20);
  text("Time takken" + " " + " " + "=" + " " + hanoi.time + "ms", 325, 45);
}
