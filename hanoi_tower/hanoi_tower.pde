Hanoi hanoi;
Disc disc;
Rod rod;

void setup() {
  size(500, 500);
  hanoi = new Hanoi();
  disc = new Disc();

  hanoi.hanoii(20, "A", "B", "C");
  println(hanoi.moveCount);
  println(hanoi.time + " ms");
}



void draw() {
}
