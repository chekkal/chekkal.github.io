abstract class Animal<F extends IFood> {
  public void eat(F food) {
    System.out.println("Yummi " + food.getClass());
  }
}

