package class1111;

public class Ex01Test {
    public static void main(String[] args) {
        Ex01 ex01 = new Ex01();
        Ex01 ex02 = new Ex01();
        if (ex01.equals(ex02)){
            System.out.println("same");
        }else {
            System.out.println("different");
        }
    }
}
