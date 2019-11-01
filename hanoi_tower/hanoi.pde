public class Hanoi {
  public int moveCount;
  long time;

  Hanoi() {
    moveCount = 0;
  }

  int moves() {
    moveCount ++; 
    return moveCount;
  }

  long runTime() {
    return time = millis();
  }

  void move( String f, String t) {
    println("Move disc from " + f + " to " + t);
  }
  void hello(String f, String v, String t) {
    move(f, v);
    move(v, t);
  }

  void hanoii(int n, String f, String h, String t) {
    if (n ==0 ) {
      return;
    } else {
      moves();
      hanoii(n-1, f, t, h);
      move(f, t);
      hanoii(n-1, h, f, t);
    }
    runTime();
  }
}
