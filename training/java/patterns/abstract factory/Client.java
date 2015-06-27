import base.*;
import concrete1.*;
import concrete2.*;

public class Client {
  public static void main(String[] args) {
    //AbstractFactory<IProduct1, IProduct2> factory = Concrete1Factory.getInstance();
    Concrete1Factory factory1 = Concrete1Factory.getInstance();
    IProduct1 product11 = factory1.getProduct1();
    IProduct2 product12 = factory1.getProduct2();
    System.out.println(product11.name());
    System.out.println(product12.category());

    Concrete2Factory factory2 = Concrete2Factory.getInstance();
    IProduct1 product21 = factory2.getProduct1();
    IProduct2 product22 = factory2.getProduct2();
    System.out.println(product21.name());
    System.out.println(product22.category());
  }
}
