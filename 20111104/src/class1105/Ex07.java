package class1105;

public class Ex07 {
    public static void main(String[] args) {
        //5단 출력
        for (int i = 1; i < 10; i++) {
            System.out.println("5 * " + i + "= " + 5 * i);
        }
        //6
        for (int i = 1; i < 10; i++) {
            System.out.println("5 * " + i + "= " + 6 * i);
        }
        // 7
        for (int i = 1; i < 10; i++) {
            System.out.println("5 * " + i + "= " + 7 * i);
        }
        for (int i = 1; i < 10; i++) {
            for (int j = 1; j < 10; j++) {
                System.out.println(i + " * " + j + "= " + i * j);
            }
        }
        int i = 1;
        for(;i<=9;){
            System.out.println("5 * " + i + "= " + 5 * i);
            i++;
        }
        i = 1;
        while (i<=9){
            System.out.println("5 * " + i + "= " + 5 * i);
            i++;
        }
        // 3단
        i = 1;
        while (i<=9){
            System.out.println("3 * " + i + "= " + 3 * i);
            i++;
        }
        for (i=3;i<=7;i++){
            for(int j = 0;j<10;j++){
                System.out.println(i + " * " + j + "= " + i * j);
            }
        }
        i = 1;
        while (i<10){
            int j = 1;
            while (j<10){
                System.out.println(i + " * " + j + "= " + i * j);
                j++;
            }
            i++;
        }
    }
}
