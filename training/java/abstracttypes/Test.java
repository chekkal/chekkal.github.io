public class Test {
  public static void main(String[] args) {
    Cow cow = new Cow();
    cow.eat(new Grass());
    //cow.eat(new Fish()); <-- Error
  }
}
