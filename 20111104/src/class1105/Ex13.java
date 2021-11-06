package class1105;

public class Ex13 {
    public static void main(String[] args) {
        int num1, num2,num3;
        num1 = (int)(Math.random() * 45) +1;
        do {
            num2 = (int)(Math.random() * 45) +1;
        }while (num1==num2);
        do {
            num3 = (int)(Math.random() * 45) +1;
        }while (num1 == num3 || num3 == num2);
        System.out.println("num1 = " + num1);
        System.out.println("num2 = " + num2);
        System.out.println("num3 = " + num3);
    }
}
