import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class ProfilerInvocationHandler implements InvocationHandler {
  private Object target;
  public ProfilerInvocationHandler(Object target){
    this.target = target;
  }
  @Override
  public Object invoke(Object proxy, Method method, Object[] arguments) throws Throwable{
    long start = System.currentTimeMillis();
    Object result = method.invoke(target, arguments);
    System.out.println("took " + (System.currentTimeMillis() -start) + " Millis.");
    return result;
  }
}
