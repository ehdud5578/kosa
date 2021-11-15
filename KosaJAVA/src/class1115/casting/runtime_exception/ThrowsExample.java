package class1115.casting.runtime_exception;

public class ThrowsExample {
    public static void main(String[] args) {
        try {
            test();
        } catch (Exception e) {
            System.out.println(e + "main");
        }
    }
    public static void test(){
        int i = 2;
        int j = 0;
        try {
            System.out.println(i/j);
        } catch (Exception e) {
            System.out.println(e + "test");
        }
    }
}
