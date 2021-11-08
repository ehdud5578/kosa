package class1105;

import java.util.Scanner;

public class Ex14 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("name : ");
        String name = sc.next();
        System.out.println("name = " + name);
        System.out.print("nunber : ");
        int n = sc.nextInt();
        System.out.println("n = " + n);

        System.out.print("startI : ");
        int starti = sc.nextInt();
        System.out.print("endI : ");
        int endi = sc.nextInt();
        System.out.print("startJ :");
        int startj = sc.nextInt();
        System.out.print("endJ : ");
        int endj = sc.nextInt();
        for(int i = starti;i<=endi;i++){
            for(int j = startj;j<=endj;j++){
                System.out.println(i + " * " + j + " = " +i*j);
            }
        }
    }
}
