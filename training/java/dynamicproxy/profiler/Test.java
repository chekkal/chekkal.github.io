import java.lang.reflect.Proxy;

public class Test {
  public static void main(String[] args) {
    ITask task = new Task();
    ITask proxy = (ITask)Proxy.newProxyInstance(Test.class.getClassLoader(), Task.class.getInterfaces(), new ProfilerInvocationHandler(task));
    proxy.work(args[0], Integer.parseInt(args[1]));
  }
} 
