import java.lang.reflect.Proxy;

public class Test {
  public static void main(String[] args) {
    ITask task = new Task();
    ITask proxy = (ITask)Proxy.newProxyInstance(Test.class.getClassLoader(), Task.class.getInterfaces(), 
                        (_proxy, method, arguments) -> {
			  long start = System.currentTimeMillis();
			  Object result = method.invoke(task, arguments);
			  System.out.println("took " + (System.currentTimeMillis() -start) + " Millis.");
			  return result; });
    proxy.work(args[0], Integer.parseInt(args[1]));
  }
} 
