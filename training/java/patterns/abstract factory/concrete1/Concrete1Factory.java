package concrete1;

public class Concrete1Factory extends base.AbstractFactory<Concrete1Product1, Concrete1Product2>{
  private Concrete1Factory(){
  }
  private static Concrete1Factory instance = new Concrete1Factory();
  public static Concrete1Factory getInstance(){
    return instance;
  }
  public Concrete1Product1 getProduct1(){
    return new Concrete1Product1();
  }
  public Concrete1Product2 getProduct2(){
    return new Concrete1Product2();
  }
}
