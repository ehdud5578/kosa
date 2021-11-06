package class1105;

public class Ex12 {
    public static void main(String[] args) {
        int i = 1;
        while (i <= 9) {
            System.out.println("3 * " + i + " = " + 3 * i);
            i++;
        }
        i = 10;
        do {
            System.out.println("3 * " + i + " = " + 3 * i);
            i++;
        }while (i <= 9);
    }
}
