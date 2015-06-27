package base;

public abstract class AbstractFactory<P1 extends IProduct1, P2 extends IProduct2> {
  abstract public P1 getProduct1();  
  abstract public P2 getProduct2();  
}
