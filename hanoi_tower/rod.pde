public class Rod {

  PVector position;
  
  Rod(float x, float y) {
    position = new PVector(x, y);
  }

  void displayRod() {
    rect(250, 0, 30, 400);
  }
}
