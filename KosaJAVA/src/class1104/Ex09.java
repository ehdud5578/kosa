package class1104;

public class Ex09 {
    public static void main(String[] args) {
        System.out.println(!!!!!!false);
        boolean b = true;
        System.out.println(!b);
        System.out.println(!!b);

        boolean b1 = false;
        System.out.println(!b1);
        System.out.println(!!b1);

        boolean b2 = true & true;
        System.out.println(true && true);
        System.out.println(true || true);
        System.out.println(false || false);
        int i = 1;
        int j = 3;
        System.out.println(i == j);
        System.out.println(i >= j);
        System.out.println(i <= j);
        System.out.println(i == j);
        System.out.println(i != j);
        boolean b3;
        b3 = i > j;
        System.out.println("b3 = " + b3);

        // 2200 년은 윤년인가?
        if ((2200 % 4 == 0 || 2200 % 400 == 0) && 2200 % 100 != 0)
            System.out.println("윤년임");
        else
            System.out.println("평년임");
        float f = 10.1f;
        double d = 10.1;
        System.out.println("f = " + f);
        System.out.println("d = " + d);
        System.out.println(f == d);
        System.out.println(f == (float)d);
        System.out.println((double)f == d);

        int i3 = 65;
        int i4 = 75;
        int i5 = 85;
        boolean b5,b6,b7;
        b5 = i3 > i4;
        b6 = i4 < i5;
        b7 = b5 && b6;
        System.out.println("b5 = " + b5);
        System.out.println("b6 = " + b6);
        System.out.println("b7 = " + b7);



    }
}
