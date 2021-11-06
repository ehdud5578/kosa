package class1105;

public class Ex11 {
    public static void main(String[] args) {
        for (int i = 3; i < 8; i++) {
            for (int j = 4; j < 7; j++) {
                System.out.println(i + " * " + j + " = " + i * j);
            }
        }
        int i = 3;
        while (i < 8) {
            int j = 4;
            while (j < 7) {
                System.out.println(i + " * " + j + " = " + i * j);
                j++;
            }
            i++;
        }


    }
}
