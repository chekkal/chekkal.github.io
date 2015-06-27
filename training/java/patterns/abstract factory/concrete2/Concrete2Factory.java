package concrete2;

public class Concrete2Factory extends base.AbstractFactory<Concrete2Product1, Concrete2Product2>{
  private Concrete2Factory(){
  }
  private static Concrete2Factory instance = new Concrete2Factory();
  public static Concrete2Factory getInstance() {
    return instance;
  }
  public Concrete2Product1 getProduct1(){
    return new Concrete2Product1();
  }
  public Concrete2Product2 getProduct2(){
    return new Concrete2Product2();
  }
}
