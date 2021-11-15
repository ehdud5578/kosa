package class1115.casting.runtime_exception;

public class ArrayIndexOutOfBoundsExceptionExample {
    public static void main(String[] args) {
        try {
            args = new String[]{"1", "2","3"};
            String data1 = args[0];
            String data2 = args[1];
            String data3 = args[2];
            System.out.println("data1 = " + data1);
            System.out.println("data2 = " + data2);
            System.out.println("data3 = " + data3);
        }catch (ArrayIndexOutOfBoundsException e){
            System.out.println(e);
        }
    }
}
