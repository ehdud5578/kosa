package class1110;

public class Ex01Test {
    public static void main(String[] args) {
        Ex01 ex01 = new Ex01();
        int result = ex01.add();
        System.out.println("result = " + result);
        result = add(10 , 20);

    }

    public static int add(int num1, int num2){
        return num1 + num2;
    }
}
