public class Rod {

  PVector position;
  
  Rod(float x, float y) {
    position = new PVector(x, y);
  }

  void displayRod() {
    rect(width*0.25-5, height*0.20, 15, height);
    rect(width*0.50-5, height*0.20, 15, height);
    rect(width*0.75-5, height*0.20, 15, height);
  }
}
